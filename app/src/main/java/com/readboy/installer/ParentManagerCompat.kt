package com.readboy.installer

import android.content.Context
import android.content.pm.PackageManager
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
 * - 动态解析家长管理 Provider 的 authority 与包名（解决包名不一致问题）
 * - 自动识别家长管理为老版本（forbidden_app / un_mall_app_state 机制）
 *   或新版本（install_app_list.disabled_state 机制）
 * - 全局有效的「SQL 修改方式」设置（自动 / raw_sql / 标准 ContentProvider）
 * - 中间版本 AES 加密密码的解密回退
 *
 * 所有探测过程都会写入文件日志（AppLogger），可在「日志」页面查看。
 */
object ParentManagerCompat {

    private const val TAG = "ParentManagerCompat"

    /** 家长管理默认 authority（用于回退） */
    const val AUTHORITY = "com.readboy.parentmanager.AppContentProvider"
    const val SQLITE_AUTHORITY = "com.readboy.parentmanager.SqliteProvider"

    /** 家长管理硬编码的 AES 密钥（中间版本加密密码用） */
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

    /** 解析到的提供者信息 */
    data class ProviderInfo(
        val packageName: String?,
        val authority: String?
    )

    private const val PREFS = "pms_compat"
    private const val KEY_VERSION = "detected_version"
    private const val KEY_SQL_METHOD = "sql_method"

    @Volatile
    private var cachedVersion: PmsVersion? = null

    @Volatile
    private var cachedProvider: ProviderInfo? = null

    // ==================== Provider 解析（包名/authority） ====================

    /**
     * 解析家长管理 ContentProvider 的实际 authority 与包名。
     *
     * 优先按已知 authority 解析；失败则全量扫描已安装应用
     * 中名称含 readboy+parent 的 provider，并记录到日志。
     */
    fun resolveProvider(context: Context): ProviderInfo? {
        cachedProvider?.let { return it }
        val info = doResolveProvider(context)
        cachedProvider = info
        return info
    }

    private fun doResolveProvider(context: Context): ProviderInfo? {
        val pm = context.packageManager

        // 1) 按已知 authority 解析
        for (auth in listOf(AUTHORITY, SQLITE_AUTHORITY)) {
            try {
                val info = pm.resolveContentProvider(auth, 0)
                if (info != null) {
                    AppLogger.i(TAG, "提供者解析成功: 请求=$auth actual=${info.authority} 包名=${info.packageName}")
                    return ProviderInfo(info.packageName, info.authority)
                }
            } catch (e: Exception) {
                AppLogger.e(TAG, "解析提供者 $auth 异常", e)
            }
        }
        AppLogger.w(TAG, "默认 authority 未找到（$AUTHORITY / $SQLITE_AUTHORITY），开始全量扫描...")

        // 2) 全量扫描带 provider 的应用，记录所有候选
        val candidates = mutableListOf<Pair<String, String>>()  // authority -> packageName
        var seenProviders = 0
        try {
            val pkgs = pm.getInstalledPackages(PackageManager.GET_PROVIDERS)
            for (pkg in pkgs) {
                val providers = pkg.providers ?: continue
                for (pr in providers) {
                    val auth = pr.authority
                    if (auth == null || auth.isEmpty()) continue
                    seenProviders++
                    val low = auth.lowercase()
                    val parentLike = low.contains("parent") || low.contains("pmanager")
                    val readboyLike = low.contains("readboy") || low.contains("dream")
                    if (parentLike || readboyLike) {
                        candidates.add(auth to pkg.packageName)
                    }
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "全量扫描 Provider 异常: ${e.message}", e)
        }
        AppLogger.i(TAG, "Provider 全量扫描完成，共扫描 $seenProviders 个 provider")
        if (candidates.isNotEmpty()) {
            AppLogger.w(
                TAG,
                "发现 readboy/家长 相关候选: " +
                    candidates.joinToString("; ") { "${it.first} (${it.second})" }
            )
        }

        // 3) 优先选择含 parent 的 authority（管控类提供者）
        val best = candidates.firstOrNull { it.first.lowercase().contains("parent") }
            ?: candidates.firstOrNull {
                it.first.lowercase().contains("appcontent") ||
                    it.first.lowercase().contains("provider")
            }
        if (best != null) {
            AppLogger.i(TAG, "选定候选 Provider: authority=${best.first} 包名=${best.second}")
            return ProviderInfo(best.second, best.first)
        }

        // 4) 检查默认包是否已安装但被禁用
        try {
            val pi = pm.getPackageInfo("com.readboy.parentmanager", 0)
            val enabled = pi.applicationInfo.enabled
            val enabledSetting = pm.getApplicationEnabledSetting("com.readboy.parentmanager")
            AppLogger.w(
                TAG,
                "包 com.readboy.parentmanager 已安装，enabled=$enabled, enabledSetting=$enabledSetting（若为禁用状态请先在系统设置中启用）"
            )
        } catch (e: Exception) {
            AppLogger.w(TAG, "包 com.readboy.parentmanager 未安装")
        }

        AppLogger.w(TAG, "未找到任何家长管理相关 Provider，请确认家长管理已安装且未被禁用")
        return null
    }

    /** 当前生效的 AppContentProvider authority（解析失败回退默认值） */
    fun authority(context: Context): String {
        return resolveProvider(context)?.authority ?: AUTHORITY
    }

    /** 当前生效的 SqliteProvider authority（独立解析，回退默认值） */
    fun sqliteAuthority(context: Context): String {
        return try {
            context.packageManager.resolveContentProvider(
                SQLITE_AUTHORITY, 0
            )?.authority
                ?: resolveProvider(context)?.authority
                ?: SQLITE_AUTHORITY
        } catch (e: Exception) {
            SQLITE_AUTHORITY
        }
    }

    /** raw_sql 查询 URI（使用解析到的 authority） */
    fun rawSqlUri(context: Context): Uri {
        return Uri.parse("content://${authority(context)}/raw_sql")
    }

    // ==================== 版本探测 ====================

    /**
     * 探测家长管理版本（结果缓存，可调用 [resetDetection] 强制重新探测）。
     * 新版 app_record.db 的 install_app_list 表包含 disabled_state 列，
     * 老版本没有该列，以此作为新旧版本判据。
     */
    fun detectVersion(context: Context): PmsVersion {
        cachedVersion?.let { return it }

        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val saved = prefs.getString(KEY_VERSION, null)
        if (saved != null) {
            val v = runCatching { PmsVersion.valueOf(saved) }.getOrNull()
            if (v != null && v != PmsVersion.UNKNOWN) {
                cachedVersion = v
                AppLogger.i(TAG, "使用缓存的版本检测结果: $v")
                return v
            }
            if (v == PmsVersion.UNKNOWN) {
                AppLogger.i(TAG, "缓存的版本检测结果为 UNKNOWN，重新探测（家长管理可能刚安装）")
            }
        }

        val version = probeVersion(context)
        cachedVersion = version
        // 只缓存确定的结果；UNKNOWN 每次启动都重新探测，避免家长管理后装时检测失效
        if (version != PmsVersion.UNKNOWN) {
            prefs.edit().putString(KEY_VERSION, version.name).apply()
        }
        AppLogger.i(TAG, "家长管理版本探测结果: $version")
        return version
    }

    /** 清除缓存，强制重新探测 */
    fun resetDetection(context: Context) {
        cachedVersion = null
        cachedProvider = null
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit().remove(KEY_VERSION).apply()
        AppLogger.i(TAG, "已重置版本与 Provider 缓存")
    }

    private fun probeVersion(context: Context): PmsVersion {
        val provider = resolveProvider(context)
        if (provider?.authority == null) {
            AppLogger.w(TAG, "Provider 不存在，跳过版本探测")
            return PmsVersion.UNKNOWN
        }
        val auth = provider.authority
        AppLogger.i(TAG, "开始探测版本, authority=$auth, 包名=${provider.packageName}")

        // 查不存在的表 PRAGMA 也能成功（返回空行），因此用 PRAGMA 结果第一优先
        var pragmaRows = -1  // -1 表示查询失败
        try {
            val cursor = context.contentResolver.query(
                rawSqlUri(context),
                null,
                "PRAGMA table_info(install_app_list)",
                null,
                null
            )
            if (cursor == null) {
                AppLogger.w(TAG, "PRAGMA 查询返回 null（可能是老版无 raw_sql 路径，或 provider 未运行）")
            } else {
                cursor.use { c ->
                    pragmaRows = c.count
                    AppLogger.i(TAG, "PRAGMA table_info(install_app_list) 返回 $pragmaRows 行")
                    val nameIdx = c.getColumnIndex("name")
                    if (nameIdx >= 0) {
                        val columns = mutableListOf<String>()
                        while (c.moveToNext()) {
                            val col = c.getString(nameIdx)
                            columns.add(col ?: "")
                        }
                        AppLogger.i(TAG, "install_app_list 列: $columns")
                        if ("disabled_state" in columns) return PmsVersion.NEW
                        if ("state" in columns) return PmsVersion.OLD
                    } else {
                        AppLogger.w(TAG, "PRAGMA 结果中没有 name 列")
                    }
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "PRAGMA 探测异常: ${e.message}", e)
        }

        // 2) 回退：标准查询 sqlite_master 判断关键表
        try {
            val tables = queryTableNames(context, auth)
            AppLogger.i(TAG, "sqlite_master 查询到 ${tables.size} 个表: ${tables.take(30)}")
            if (tables.contains("install_app_list")) return PmsVersion.NEW
            if (tables.contains("forbidden_app") || tables.contains("user_info")) return PmsVersion.OLD
            if (tables.isEmpty()) {
                AppLogger.w(TAG, "sqlite_master 查询返回空表列表")
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "sqlite_master 回退探测异常: ${e.message}", e)
        }

        // 3) 尝试查 sqlite_master 对应库（SqliteProvider / mysql.db3）
        try {
            val tables = queryTableNames(context, sqliteAuthority(context))
            AppLogger.i(TAG, "mysql.db3 sqlite_master 查询到 ${tables.size} 个表: ${tables.take(30)}")
            if (tables.contains("install_app_list")) return PmsVersion.NEW
            if (tables.contains("user_info") || tables.contains("forbidden_app")) return PmsVersion.OLD
        } catch (e: Exception) {
            AppLogger.e(TAG, "mysql.db3 探测异常: ${e.message}", e)
        }

        if (pragmaRows < 0) {
            AppLogger.w(TAG, "PRAGMA 查询失败且无 sqlite_master 回退结果")
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
        AppLogger.i(TAG, "SQL 修改方式已设置: $method")
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
     */
    fun aesDecryptPassword(cipherText: String, key: String = AES_KEY): String? {
        AppLogger.i(TAG, "尝试 AES 解密密码（密文长度=${cipherText.length}）")
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
                if (decrypted.isNotBlank()) {
                    AppLogger.i(TAG, "AES 解密成功")
                    return decrypted
                }
            } catch (e: Exception) {
                AppLogger.d(TAG, "AES 解密尝试失败: ${e.message}")
            }
        }
        AppLogger.w(TAG, "AES 解密失败（可能不是密文）")
        return null
    }
}