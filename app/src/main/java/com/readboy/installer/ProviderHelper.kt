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
 */
object ProviderHelper {

    private const val TAG = "ProviderHelper"

    private const val AUTHORITY = "com.readboy.parentmanager.AppContentProvider"
    private val URI_FORBIDDEN_APP = Uri.parse("content://$AUTHORITY/forbidden_app")
    private val URI_UN_MALL_APP_STATE = Uri.parse("content://$AUTHORITY/un_mall_app_state")
    private val URI_USER_INFO = Uri.parse("content://$AUTHORITY/user_info")
    private val URI_INSTALL_APP_LIST = Uri.parse("content://$AUTHORITY/install_app_list")

    // ==================== 全局安装状态 ====================

    /**
     * 获取全局安装状态
     * 老版本：state = 0 禁止安装 / state != 0 允许安装
     * 新版本：install_app_list 无 disabled_state=1 的行 且 旧门禁 state != 0 视为允许
     */
    fun getGlobalInstallState(context: Context): Boolean {
        return if (ParentManagerCompat.isNewVersion(context)) {
            val blockedRows = countDisabledRows(context)
            val legacyState = readUnMallState(context)
            val installAllowed = blockedRows != -1 && blockedRows == 0
            val legacyAllowed = legacyState == null || legacyState != 0
            installAllowed && legacyAllowed
        } else {
            readUnMallState(context) != 0
        }
    }

    /**
     * 设置全局安装状态
     * 老版本：仅更新 un_mall_app_state
     * 新版本：同时更新 install_app_list 全表 disabled_state 与 un_mall_app_state 旧门禁
     */
    fun setGlobalInstallState(context: Context, enabled: Boolean): Boolean {
        return if (ParentManagerCompat.isNewVersion(context)) {
            setGlobalInstallStateNew(context, enabled)
        } else {
            setGlobalInstallStateOld(context, enabled)
        }
    }

    private fun setGlobalInstallStateOld(context: Context, enabled: Boolean): Boolean {
        val values = ContentValues()
        values.put("state", if (enabled) 1 else 0)
        return try {
            context.contentResolver.update(URI_UN_MALL_APP_STATE, values, null, null) > 0
        } catch (e: Exception) {
            Log.e(TAG, "设置全局安装状态失败（老版）", e)
            false
        }
    }

    private fun setGlobalInstallStateNew(context: Context, enabled: Boolean): Boolean {
        var ok = false

        // 1) 新版机制：install_app_list 全表 disabled_state 置 0/1
        try {
            val cv = ContentValues()
            cv.put("disabled_state", if (enabled) 0 else 1)
            val rows = context.contentResolver.update(URI_INSTALL_APP_LIST, cv, null, null)
            ok = rows > 0
        } catch (e: Exception) {
            Log.e(TAG, "更新 install_app_list 失败", e)
        }

        // 2) 旧门禁兼容：un_mall_app_state
        try {
            val cv2 = ContentValues()
            cv2.put("state", if (enabled) 1 else 0)
            val rows2 = context.contentResolver.update(URI_UN_MALL_APP_STATE, cv2, null, null)
            ok = ok || rows2 > 0
        } catch (e: Exception) {
            Log.e(TAG, "更新 un_mall_app_state 失败", e)
        }

        return ok
    }

    // ==================== 黑白名单 ====================

    /**
     * 获取黑白名单
     * 老版本：forbidden_app，state = 0 黑名单 / 1 白名单
     * 新版本：install_app_list，disabled_state = 1 黑名单（禁止安装）/ 0 白名单（允许安装）
     */
    fun getPackageList(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        return if (ParentManagerCompat.isNewVersion(context)) {
            getPackageListNew(context, isWhitelist)
        } else {
            getPackageListOld(context, isWhitelist)
        }
    }

    private fun getPackageListOld(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = mutableListOf<PackageInfo>()
        val state = if (isWhitelist) 1 else 0

        try {
            val cursor = context.contentResolver.query(
                URI_FORBIDDEN_APP,
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
            Log.e(TAG, "获取列表失败（老版）", e)
        }
        return list
    }

    private fun getPackageListNew(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = mutableListOf<PackageInfo>()
        // 新版：disabled_state = 0 允许安装（白名单）/ 1 禁止安装（黑名单）
        val disabledState = if (isWhitelist) 0 else 1

        try {
            val cursor = context.contentResolver.query(
                URI_INSTALL_APP_LIST,
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
            Log.e(TAG, "获取列表失败（新版）", e)
        }
        return list
    }

    /**
     * 添加包到黑白名单
     * 老版本：insert forbidden_app（state 0/1）
     * 新版本：upsert install_app_list（disabled_state 0/1），并同步写 forbidden_app 兼容旧门禁
     */
    fun addPackage(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        return if (ParentManagerCompat.isNewVersion(context)) {
            addPackageNew(context, packageName, isWhitelist)
        } else {
            addPackageOld(context, packageName, isWhitelist)
        }
    }

    private fun addPackageOld(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        val values = ContentValues()
        values.put("package_name", packageName)
        values.put("state", if (isWhitelist) 1 else 0)

        return try {
            val uri = context.contentResolver.insert(URI_FORBIDDEN_APP, values)
            uri != null
        } catch (e: Exception) {
            Log.e(TAG, "添加包失败（老版）", e)
            false
        }
    }

    private fun addPackageNew(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        val disabled = if (isWhitelist) 0 else 1
        var ok = false

        // 1) install_app_list：已存在则更新，不存在则插入（avoid UNIQUE 冲突）
        try {
            val cv = ContentValues()
            cv.put("package_name", packageName)
            cv.put("disabled_state", disabled)

            val updated = context.contentResolver.update(
                URI_INSTALL_APP_LIST, cv, "package_name = ?", arrayOf(packageName)
            )
            if (updated > 0) {
                ok = true
            } else {
                val insertCv = ContentValues()
                insertCv.put("package_name", packageName)
                insertCv.put("disabled_state", disabled)
                val uri = context.contentResolver.insert(URI_INSTALL_APP_LIST, insertCv)
                ok = uri != null
            }
        } catch (e: Exception) {
            Log.e(TAG, "更新 install_app_list 失败", e)
        }

        // 2) 兼容旧安装门禁：同步写 forbidden_app
        try {
            val fcv = ContentValues()
            fcv.put("package_name", packageName)
            fcv.put("state", if (isWhitelist) 1 else 0)
            val fUpdated = context.contentResolver.update(
                URI_FORBIDDEN_APP, fcv, "package_name = ?", arrayOf(packageName)
            )
            if (fUpdated == 0) {
                context.contentResolver.insert(URI_FORBIDDEN_APP, fcv)
            }
        } catch (e: Exception) {
            Log.e(TAG, "同步写 forbidden_app 失败", e)
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
                URI_FORBIDDEN_APP,
                "package_name = ?",
                arrayOf(packageName)
            )
        } catch (e: Exception) {
            Log.e(TAG, "删除 forbidden_app 失败", e)
        }

        if (ParentManagerCompat.isNewVersion(context)) {
            try {
                val rows2 = context.contentResolver.delete(
                    URI_INSTALL_APP_LIST,
                    "package_name = ?",
                    arrayOf(packageName)
                )
                rows += rows2
            } catch (e: Exception) {
                Log.e(TAG, "删除 install_app_list 失败", e)
            }
        }
        return rows > 0
    }

    // ==================== 家长密码 ====================

    /**
     * 检查是否有家长密码
     * user_info 表在两个版本中结构一致，无需区分
     */
    fun hasParentPassword(context: Context): Boolean {
        val cursor = context.contentResolver.query(
            URI_USER_INFO,
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
            context.contentResolver.query(URI_UN_MALL_APP_STATE, null, null, null, null)?.use {
                if (it.moveToFirst()) {
                    val idx = it.getColumnIndex("state")
                    if (idx >= 0) it.getInt(idx) else null
                } else {
                    null
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "读取 un_mall_app_state 失败", e)
            null
        }
    }

    /** 统计 install_app_list 中 disabled_state=1 的行数；查询失败返回 -1 */
    private fun countDisabledRows(context: Context): Int {
        return try {
            context.contentResolver.query(
                URI_INSTALL_APP_LIST,
                null,
                "disabled_state = ?",
                arrayOf("1"),
                null
            )?.use { it.count } ?: -1
        } catch (e: Exception) {
            Log.e(TAG, "统计 disabled_state 失败", e)
            -1
        }
    }
}

data class PackageInfo(
    val packageName: String,
    val state: Int  // 0 = 黑名单, 1 = 白名单
)