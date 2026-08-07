package com.readboy.installer

import android.content.Context
import android.net.Uri
import android.util.Base64
import android.util.Log
import java.security.SecureRandom
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.spec.SecretKeySpec

/**
 * ParentManager 版本兼容层
 *
 * 自动识别家长管理为：
 * - 老版本：forbidden_app / un_mall_app_state 机制
 * - 新版本（6.2.8+）：install_app_list.disabled_state 机制
 *
 * 并提供全局有效的「SQL 修改方式」设置：
 * - AUTO    自动（推荐）：查询优先 raw_sql，写入走标准 ContentProvider
 * - RAW_SQL 仅通过 raw_sql 执行查询
 * - CONTENT 不依赖 raw_sql，全部走标准 ContentProvider
 *
 * 该设置为全局生效（SharedPreferences 持久化），所有组件统一读取。
 */
object ParentManagerCompat {

    private const val TAG = "ParentManagerCompat"

    const val AUTHORITY = "com.readboy.parentmanager.AppContentProvider"
    const val SQLITE_AUTHORITY = "com.readboy.parentmanager.SqliteProvider"
    const val RAW_SQL_URI = "content://$AUTHORITY/raw_sql"

    /** 家长管理硬编码的 AES 密钥（用于解密中间版本存储的加密密码） */
    const val AES_KEY = "#reaboy+ZHdream#"

    /** 家长管理版本 */
    enum class PmsVersion {
        OLD,       // 老版本：forbidden_app + un_mall_app_state
        NEW,       // 新版本：install_app_list.disabled_state
        UNKNOWN    // 未检测到 / 检测失败
    }

    /** SQL 修改方式（全局生效） */
    enum class SqlMethod(val key: String) {
        AUTO("auto"),
        RAW_SQL("raw_sql"),
        CONTENT("content");

        companion object {
            fun fromKey(key: String?): SqlMethod {
                return entries.firstOrNull { it.key == key } ?: AUTO
            }
        }
    }

    private const val PREFS = "pms_compat"
    private const val KEY_VERSION = "detected_version"
    private const val KEY_SQL_METHOD = "sql_method"

    @Volatile
    private var cachedVersion: PmsVersion? = null

    // ==================== 版本探测 ====================

    /**
     * 探测家长管理版本（结果缓存，可调用 [resetDetection] 强制重新探测）
     *
     * 新版 app_record.db 的 install_app_list 表包含 disabled_state 列，
     * 老版本该表不存在该列，以此作为新旧版本判据。
     */
    fun detectVersion(context: Context): PmsVersion {
        cachedVersion?.let { return it }

        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val saved = prefs.getString(KEY_VERSION, null)
        if (saved != null) {
            val v = runCatching { PmsVersion.valueOf(saved) }.getOrNull()
            if (v != null) {
                cachedVersion = v
                return v
            }
        }

        val version = probeVersion(context)
        cachedVersion = version
        prefs.edit().putString(KEY_VERSION, version.name).apply()
        Log.d(TAG, "检测到家长管理版本: $version")
        return version
    }

    /** 清除版本缓存，强制下次重新探测 */
    fun resetDetection(context: Context) {
        cachedVersion = null
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit().remove(KEY_VERSION).apply()
    }

    private fun probeVersion(context: Context): PmsVersion {
        // 1) 通过 raw_sql 执行 PRAGMA 探测 install_app_list 的列结构
        try {
            val cursor = context.contentResolver.query(
                Uri.parse(RAW_SQL_URI),
                null,
                "PRAGMA table_info(install_app_list)",
                null,
                null
            )
            cursor?.use { c ->
                val nameIdx = c.getColumnIndex("name")
                if (nameIdx >= 0) {
                    while (c.moveToNext()) {
                        val col = c.getString(nameIdx)
                        if (col == "disabled_state") return PmsVersion.NEW
                        if (col == "state") return PmsVersion.OLD
                    }
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "raw_sql 探测失败: ${e.message}")
        }

        // 2) 回退：标准查询 sqlite_master 判断关键表
        try {
            val tables = queryTableNames(context, AUTHORITY)
            if (tables.contains("install_app_list")) return PmsVersion.NEW
            if (tables.contains("forbidden_app") || tables.contains("user_info")) return PmsVersion.OLD
        } catch (e: Exception) {
            Log.w(TAG, "sqlite_master 回退探测失败: ${e.message}")
        }

        return PmsVersion.UNKNOWN
    }

    /** 通过标准 query 查询 sqlite_master 获取表名列表 */
    private fun queryTableNames(context: Context, authority: String): List<String> {
        val tables = mutableListOf<String>()
        val uri = Uri.parse("content://$authority/sqlite_master")
        val cursor = context.contentResolver.query(
            uri, null, "type=?", arrayOf("table"), "name"
        )
        cursor?.use { c ->
            val nameIdx = c.getColumnIndex("name")
            if (nameIdx >= 0) {
                while (c.moveToNext()) {
                    val name = c.getString(nameIdx)
                    if (name != null && name !in listOf("android_metadata", "sqlite_sequence")) {
                        tables.add(name)
                    }
                }
            }
        }
        return tables
    }

    /** 是否为新版本 */
    fun isNewVersion(context: Context): Boolean {
        return detectVersion(context) == PmsVersion.NEW
    }

    /** 是否为老版本 */
    fun isOldVersion(context: Context): Boolean {
        return detectVersion(context) == PmsVersion.OLD
    }

    // ==================== SQL 修改方式（全局设置） ====================

    fun getSqlMethod(context: Context): SqlMethod {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        return SqlMethod.fromKey(prefs.getString(KEY_SQL_METHOD, null))
    }

    /** 设置 SQL 修改方式，全局生效 */
    fun setSqlMethod(context: Context, method: SqlMethod) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit().putString(KEY_SQL_METHOD, method.key).apply()
        Log.d(TAG, "SQL 修改方式已设置为: $method")
    }

    // ==================== 密码解密回退 ====================

    /**
     * 判断字符串是否疑似密文（包含二进制/不可打印字符）。
     * 老版本与 6.2.8 的家长密码为明文；中间版本为 AES 加密存储。
     */
    fun looksLikeCiphertext(value: String): Boolean {
        if (value.isEmpty()) return false
        for (ch in value) {
            val code = ch.code
            if (code < 32 || code > 126) return true
        }
        return false
    }

    /**
     * 复刻家长管理 AESUtils 的解密逻辑：
     * KeyGenerator("AES") + SecureRandom(密钥字节作为种子) 派生密钥，
     * Cipher("AES") 默认 ECB/PKCS5Padding。
     *
     * @param cipherText 加密的密码字符串
     * @return 解密后的明文密码；失败返回 null
     */
    fun aesDecryptPassword(cipherText: String, key: String = AES_KEY): String? {
        // 尝试多种字节编码方式（不同版本存储方式可能不同）
        val candidates = listOf(
            runCatching { cipherText.toByteArray(Charsets.ISO_8859_1) }.getOrNull(),
            runCatching { cipherText.toByteArray(Charsets.UTF_8) }.getOrNull(),
            runCatching { Base64.decode(cipherText, Base64.DEFAULT) }.getOrNull()
        )

        for (data in candidates) {
            if (data == null || data.isEmpty()) continue
            try {
                val keyGenerator = KeyGenerator.getInstance("AES")
                val secureRandom = SecureRandom(key.toByteArray())
                keyGenerator.init(128, secureRandom)
                val secretKey = keyGenerator.generateKey()
                val keySpec = SecretKeySpec(secretKey.encoded, "AES")

                val cipher = Cipher.getInstance("AES")
                cipher.init(Cipher.DECRYPT_MODE, keySpec)
                val decrypted = String(cipher.doFinal(data), Charsets.UTF_8)
                if (decrypted.isNotBlank()) return decrypted
            } catch (e: Exception) {
                Log.d(TAG, "AES 解密尝试失败: ${e.message}")
            }
        }
        return null
    }
}
