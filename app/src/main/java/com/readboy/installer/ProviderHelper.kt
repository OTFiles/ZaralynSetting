package com.readboy.installer

import android.content.ContentValues
import android.content.Context
import android.net.Uri
import android.util.Log

/**
 * 安装限制控制辅助类
 *
 * 自动区分家长管理新旧版本：
 * - 老版本：forbidden_app（package_name, state: 0=黑名单/1=白名单）
 *           + un_mall_app_state（state: 0=禁止安装/1=允许安装）
 * - 新版本（6.2.8+）：install_app_list（disabled_state: 0=允许/1=禁止）
 *           写入时同时兼容同步 forbidden_app / un_mall_app_state 旧门禁
 *
 * authority 通过 ParentManagerCompat 动态解析（兼容包名不同的设备）。
 */
object ProviderHelper {

    private const val TAG = "ProviderHelper"

    private fun authority(context: Context): String {
        return ParentManagerCompat.authority(context)
    }

    private fun uriFor(context: Context, table: String): Uri {
        return Uri.parse("content://${authority(context)}/$table")
    }

    private fun uriForbiddenApp(context: Context): Uri = uriFor(context, "forbidden_app")
    private fun uriUnMallAppState(context: Context): Uri = uriFor(context, "un_mall_app_state")
    private fun uriUserInfo(context: Context): Uri = uriFor(context, "user_info")
    private fun uriInstallAppList(context: Context): Uri = uriFor(context, "install_app_list")

    // ==================== 全局安装状态 ====================

    /**
     * 获取全局安装状态
     * 老版本：state = 0 禁止安装 / state != 0 允许安装
     * 新版本：install_app_list 无 disabled_state=1 的行 且 旧门禁 state != 0 视为允许
     */
    fun getGlobalInstallState(context: Context): Boolean {
        val result = if (ParentManagerCompat.isNewVersion(context)) {
            val blockedRows = countDisabledRows(context)
            val legacyState = readUnMallState(context)
            val installAllowed = blockedRows != -1 && blockedRows == 0
            val legacyAllowed = legacyState == null || legacyState != 0
            installAllowed && legacyAllowed
        } else {
            readUnMallState(context) != 0
        }
        AppLogger.d(TAG, "getGlobalInstallState: $result (version=${ParentManagerCompat.detectVersion(context)})")
        return result
    }

    /**
     * 设置全局安装状态
     * 老版本：仅更新 un_mall_app_state
     * 新版本：同时更新 install_app_list 全表 disabled_state 与 un_mall_app_state 旧门禁
     */
    fun setGlobalInstallState(context: Context, enabled: Boolean): Boolean {
        AppLogger.i(TAG, "setGlobalInstallState: enabled=$enabled version=${ParentManagerCompat.detectVersion(context)}")
        val result = if (ParentManagerCompat.isNewVersion(context)) {
            setGlobalInstallStateNew(context, enabled)
        } else {
            setGlobalInstallStateOld(context, enabled)
        }
        AppLogger.i(TAG, "setGlobalInstallState 结果: $result")
        return result
    }

    private fun setGlobalInstallStateOld(context: Context, enabled: Boolean): Boolean {
        val values = ContentValues()
        values.put("state", if (enabled) 1 else 0)
        return try {
            context.contentResolver.update(uriUnMallAppState(context), values, null, null) > 0
        } catch (e: Exception) {
            AppLogger.e(TAG, "设置全局安装状态失败（老版）: ${e.message}", e)
            false
        }
    }

    private fun setGlobalInstallStateNew(context: Context, enabled: Boolean): Boolean {
        val disabledState = if (enabled) 0 else 1   // install_app_list.disabled_state
        val legacyState = if (enabled) 1 else 0     // un_mall_app_state.state

        // 0) 写入前快照（raw_sql 计数，便于排查）
        logGateTableSnapshot(context)

        val method = ParentManagerCompat.getSqlMethod(context)
        AppLogger.i(TAG, "setGlobalInstallStateNew: enabled=$enabled SQL方式=$method")

        // 1) 新版机制：install_app_list 全表 disabled_state 置 0/1
        //    注意：个别家长管理版本 Provider 的 update() 对该表会抛异常（日志中掩码为
        //    "Attempt to read from null array"），因此按全局 SQL 方式路由，默认自动回退 raw_sql。
        val installOk = when (method) {
            ParentManagerCompat.SqlMethod.RAW_SQL ->
                updateInstallAppListRawSql(context, disabledState)
            ParentManagerCompat.SqlMethod.CONTENT ->
                updateInstallAppListContent(context, disabledState)
            ParentManagerCompat.SqlMethod.AUTO -> {
                val ok = updateInstallAppListContent(context, disabledState)
                if (!ok) {
                    AppLogger.w(TAG, "标准 update 未生效，自动回退 raw_sql")
                    updateInstallAppListRawSql(context, disabledState)
                } else {
                    true
                }
            }
        }

        // 2) 旧门禁兼容：un_mall_app_state（可能是空表，需要 upsert：有行更新、空表插入）
        val legacyOk = when (method) {
            ParentManagerCompat.SqlMethod.CONTENT ->
                upsertLegacyGateContent(context, legacyState)
            else ->
                upsertLegacyGateRawSql(context, legacyState)
        }

        val result = installOk || legacyOk
        AppLogger.i(TAG, "setGlobalInstallStateNew 结果: installOk=$installOk legacyOk=$legacyOk => $result")
        return result
    }

    // ==================== install_app_list 写入 ====================

    /** 标准 ContentProvider 方式：全表更新 disabled_state */
    private fun updateInstallAppListContent(context: Context, disabledState: Int): Boolean {
        return try {
            val cv = ContentValues()
            cv.put("disabled_state", disabledState)
            val rows = context.contentResolver.update(uriInstallAppList(context), cv, "1=1", null)
            AppLogger.i(TAG, "更新 install_app_list（标准 update）影响 $rows 行")
            rows >= 0 // 未抛异常即视为执行成功（空表返回 0 也正常）
        } catch (e: Exception) {
            AppLogger.e(TAG, "更新 install_app_list（标准 update）失败: ${e.message}", e)
            false
        }
    }

    /** raw_sql 方式：直接执行 UPDATE（绕过 Provider update 处理器） */
    private fun updateInstallAppListRawSql(context: Context, disabledState: Int): Boolean {
        val sql = "UPDATE install_app_list SET disabled_state = $disabledState"
        val ok = execRawSql(context, sql)
        AppLogger.i(TAG, "更新 install_app_list（raw_sql）: $sql -> $ok")
        return ok
    }

    // ==================== un_mall_app_state 旧门禁 upsert ====================

    /** 标准 ContentProvider 方式：有行则更新、空表则插入 */
    private fun upsertLegacyGateContent(context: Context, legacyState: Int): Boolean {
        var ok = false
        try {
            val cv = ContentValues()
            cv.put("state", legacyState)
            val rows = context.contentResolver.update(uriUnMallAppState(context), cv, null, null)
            AppLogger.i(TAG, "更新 un_mall_app_state（标准 update）影响 $rows 行")
            ok = rows > 0
        } catch (e: Exception) {
            AppLogger.e(TAG, "更新 un_mall_app_state（标准 update）失败: ${e.message}", e)
        }
        if (!ok) {
            try {
                val cv = ContentValues()
                cv.put("state", legacyState)
                val uri = context.contentResolver.insert(uriUnMallAppState(context), cv)
                AppLogger.i(TAG, "un_mall_app_state 空表，尝试标准 insert: $uri")
                ok = uri != null
            } catch (e: Exception) {
                AppLogger.e(TAG, "插入 un_mall_app_state（标准）失败: ${e.message}", e)
            }
        }
        return ok
    }

    /** raw_sql 方式：有行则更新、空表则插入 */
    private fun upsertLegacyGateRawSql(context: Context, legacyState: Int): Boolean {
        // 1) 有行则更新（raw_sql 直接执行，绕过 Provider update 处理器）
        execRawSql(context, "UPDATE un_mall_app_state SET state = $legacyState")
        // 2) 确认行数，空表则插入一行
        val count = rawSqlScalarCount(context, "SELECT COUNT(*) AS c FROM un_mall_app_state")
        if (count != null && count > 0) {
            AppLogger.i(TAG, "un_mall_app_state 现有 $count 行，已更新 state=$legacyState")
            return true
        }
        val insertSql = "INSERT OR REPLACE INTO un_mall_app_state (state) VALUES ($legacyState)"
        val ok = execRawSql(context, insertSql)
        val after = rawSqlScalarCount(context, "SELECT COUNT(*) AS c FROM un_mall_app_state")
        AppLogger.i(TAG, "un_mall_app_state 空表尝试插入: $insertSql -> ok=$ok, 插入后行数=${after ?: -1}")
        return ok && (after ?: 0) > 0
    }

    // ==================== raw_sql 基础能力 ====================

    private fun rawSqlUri(context: Context): Uri {
        return Uri.parse("content://${ParentManagerCompat.authority(context)}/raw_sql")
    }

    /**
     * 通过 raw_sql 漏洞路径执行任意 SQL（query() 的 selection 会被直接 rawQuery 执行）。
     * 对 UPDATE/INSERT/DELETE 返回空 cursor，执行本身无异常即视为成功。
     */
    private fun execRawSql(context: Context, sql: String): Boolean {
        return try {
            context.contentResolver.query(rawSqlUri(context), null, sql, null, null)?.use { true }
                ?: run {
                    AppLogger.w(TAG, "raw_sql 返回 null cursor: $sql")
                    false
                }
        } catch (e: Exception) {
            AppLogger.e(TAG, "raw_sql 执行失败 [$sql]: ${e.message}", e)
            false
        }
    }

    /** 通过 raw_sql 执行标量计数（SELECT COUNT(*) AS c ...） */
    private fun rawSqlScalarCount(context: Context, sql: String): Int? {
        return try {
            context.contentResolver.query(rawSqlUri(context), null, sql, null, null)?.use { c ->
                if (c.moveToFirst()) {
                    val idx = c.getColumnIndex("c")
                    if (idx >= 0) c.getInt(idx) else null
                } else {
                    null
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "raw_sql 计数失败 [$sql]: ${e.message}", e)
            null
        }
    }

    /** 写入前记录门禁相关表的行数快照（便于排查） */
    private fun logGateTableSnapshot(context: Context) {
        val installRows = rawSqlScalarCount(context, "SELECT COUNT(*) AS c FROM install_app_list")
        val unMallRows = rawSqlScalarCount(context, "SELECT COUNT(*) AS c FROM un_mall_app_state")
        AppLogger.i(
            TAG,
            "写入前快照: install_app_list=${installRows ?: -1} 行, un_mall_app_state=${unMallRows ?: -1} 行"
        )
    }


    // ==================== 黑白名单 ====================

    /**
     * 获取黑白名单
     * 老版本：forbidden_app，state = 0 黑名单 / 1 白名单
     * 新版本：install_app_list，disabled_state = 1 黑名单（禁止安装）/ 0 白名单（允许安装）
     */
    fun getPackageList(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = if (ParentManagerCompat.isNewVersion(context)) {
            getPackageListNew(context, isWhitelist)
        } else {
            getPackageListOld(context, isWhitelist)
        }
        AppLogger.d(TAG, "getPackageList(whitelist=$isWhitelist): ${list.size} 项")
        return list
    }

    private fun getPackageListOld(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = mutableListOf<PackageInfo>()
        val state = if (isWhitelist) 1 else 0

        try {
            val cursor = context.contentResolver.query(
                uriForbiddenApp(context),
                null,
                "state = ?",
                arrayOf(state.toString()),
                null
            )
            cursor?.use {
                val nameIndex = it.getColumnIndex("package_name")
                val stateIndex = it.getColumnIndex("state")
                while (it.moveToNext()) {
                    if (nameIndex >= 0 && stateIndex >= 0) {
                        val packageName = it.getString(nameIndex)
                        val pkgState = it.getInt(stateIndex)
                        list.add(PackageInfo(packageName, pkgState))
                    }
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "获取列表失败（老版）: ${e.message}", e)
        }
        return list
    }

    private fun getPackageListNew(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = mutableListOf<PackageInfo>()
        // 新版：disabled_state = 0 允许安装（白名单）/ 1 禁止安装（黑名单）
        val disabledState = if (isWhitelist) 0 else 1

        try {
            val cursor = context.contentResolver.query(
                uriInstallAppList(context),
                null,
                "disabled_state = ?",
                arrayOf(disabledState.toString()),
                null
            )
            cursor?.use {
                val nameIndex = it.getColumnIndex("package_name")
                while (it.moveToNext()) {
                    if (nameIndex >= 0) {
                        val packageName = it.getString(nameIndex)
                        list.add(PackageInfo(packageName, if (isWhitelist) 1 else 0))
                    }
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "获取列表失败（新版）: ${e.message}", e)
        }
        return list
    }

    /**
     * 添加包到黑白名单
     * 老版本：insert forbidden_app（state 0/1）
     * 新版本：upsert install_app_list（disabled_state 0/1），并同步写 forbidden_app 兼容旧门禁
     */
    fun addPackage(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        AppLogger.i(TAG, "addPackage: pkg=$packageName whitelist=$isWhitelist version=${ParentManagerCompat.detectVersion(context)}")
        val result = if (ParentManagerCompat.isNewVersion(context)) {
            addPackageNew(context, packageName, isWhitelist)
        } else {
            addPackageOld(context, packageName, isWhitelist)
        }
        AppLogger.i(TAG, "addPackage 结果: $result")
        return result
    }

    private fun addPackageOld(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        val values = ContentValues()
        values.put("package_name", packageName)
        values.put("state", if (isWhitelist) 1 else 0)

        return try {
            val uri = context.contentResolver.insert(uriForbiddenApp(context), values)
            uri != null
        } catch (e: Exception) {
            AppLogger.e(TAG, "添加包失败（老版）: ${e.message}", e)
            false
        }
    }

    private fun addPackageNew(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        val disabled = if (isWhitelist) 0 else 1
        var ok = false

        // 1) install_app_list：已存在则更新，不存在则插入（避免 UNIQUE 冲突）
        try {
            val cv = ContentValues()
            cv.put("package_name", packageName)
            cv.put("disabled_state", disabled)

            val updated = context.contentResolver.update(
                uriInstallAppList(context), cv, "package_name = ?", arrayOf(packageName)
            )
            if (updated > 0) {
                ok = true
            } else {
                val insertCv = ContentValues()
                insertCv.put("package_name", packageName)
                insertCv.put("disabled_state", disabled)
                val uri = context.contentResolver.insert(uriInstallAppList(context), insertCv)
                ok = uri != null
            }
            AppLogger.i(TAG, "install_app_list upsert: updated=$updated inserted=${ok}")
        } catch (e: Exception) {
            AppLogger.e(TAG, "更新 install_app_list 失败: ${e.message}", e)
        }

        // 2) 兼容旧安装门禁：同步写 forbidden_app
        try {
            val fcv = ContentValues()
            fcv.put("package_name", packageName)
            fcv.put("state", if (isWhitelist) 1 else 0)
            val fUpdated = context.contentResolver.update(
                uriForbiddenApp(context), fcv, "package_name = ?", arrayOf(packageName)
            )
            if (fUpdated == 0) {
                context.contentResolver.insert(uriForbiddenApp(context), fcv)
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "同步写 forbidden_app 失败: ${e.message}", e)
        }

        return ok
    }

    /**
     * 从黑白名单删除包
     * 老版本：仅删除 forbidden_app
     * 新版本：同时删除 install_app_list 与 forbidden_app
     */
    fun removePackage(context: Context, packageName: String): Boolean {
        var rows = 0
        try {
            rows = context.contentResolver.delete(
                uriForbiddenApp(context),
                "package_name = ?",
                arrayOf(packageName)
            )
        } catch (e: Exception) {
            AppLogger.e(TAG, "删除 forbidden_app 失败: ${e.message}", e)
        }

        if (ParentManagerCompat.isNewVersion(context)) {
            try {
                val rows2 = context.contentResolver.delete(
                    uriInstallAppList(context),
                    "package_name = ?",
                    arrayOf(packageName)
                )
                rows += rows2
            } catch (e: Exception) {
                AppLogger.e(TAG, "删除 install_app_list 失败: ${e.message}", e)
            }
        }
        AppLogger.i(TAG, "removePackage: pkg=$packageName 共删除 $rows 行")
        return rows > 0
    }

    // ==================== 家长密码 ====================

    /**
     * 检查是否有家长密码
     * user_info 表在两个版本中结构一致，无需区分
     */
    fun hasParentPassword(context: Context): Boolean {
        val cursor = context.contentResolver.query(
            uriUserInfo(context),
            null,
            "_id > ?",
            arrayOf("0"),
            null
        )

        cursor?.use {
            if (it.moveToFirst()) {
                val password = it.getString(1)
                if (!password.isNullOrEmpty() && password.isNotEmpty()) {
                    return true
                }
            }
        }

        return false
    }

    // ==================== 内部辅助 ====================

    private fun readUnMallState(context: Context): Int? {
        return try {
            context.contentResolver.query(uriUnMallAppState(context), null, null, null, null)?.use {
                if (it.moveToFirst()) {
                    val idx = it.getColumnIndex("state")
                    if (idx >= 0) it.getInt(idx) else null
                } else {
                    null
                }
            }
        } catch (e: Exception) {
            AppLogger.e(TAG, "读取 un_mall_app_state 失败: ${e.message}", e)
            null
        }
    }

    /** 统计 install_app_list 中 disabled_state=1 的行数；查询失败返回 -1 */
    private fun countDisabledRows(context: Context): Int {
        return try {
            context.contentResolver.query(
                uriInstallAppList(context),
                null,
                "disabled_state = ?",
                arrayOf("1"),
                null
            )?.use { it.count } ?: -1
        } catch (e: Exception) {
            AppLogger.e(TAG, "统计 disabled_state 失败: ${e.message}", e)
            -1
        }
    }
}

data class PackageInfo(
    val packageName: String,
    val state: Int  // 0 = 黑名单, 1 = 白名单
)