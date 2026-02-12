package com.readboy.installer

import android.content.ContentValues
import android.content.Context
import android.net.Uri

object ProviderHelper {

    private const val AUTHORITY = "com.readboy.parentmanager.AppContentProvider"
    private val URI_FORBIDDEN_APP = Uri.parse("content://$AUTHORITY/forbidden_app")
    private val URI_UN_MALL_APP_STATE = Uri.parse("content://$AUTHORITY/un_mall_app_state")
    private val URI_USER_INFO = Uri.parse("content://$AUTHORITY/user_info")

    /**
     * 获取全局安装状态
     * state = 0: 禁止安装
     * state != 0: 允许安装
     */
    fun getGlobalInstallState(context: Context): Boolean {
        val cursor = context.contentResolver.query(
            URI_UN_MALL_APP_STATE,
            null,
            null,
            null,
            null
        )

        cursor?.use {
            if (it.moveToFirst()) {
                val stateIndex = it.getColumnIndex("state")
                if (stateIndex >= 0) {
                    val state = it.getInt(stateIndex)
                    return state != 0
                }
            }
        }

        return false
    }

    /**
     * 设置全局安装状态
     * state = 0: 禁止安装
     * state = 1: 允许安装
     */
    fun setGlobalInstallState(context: Context, enabled: Boolean): Boolean {
        val values = ContentValues()
        values.put("state", if (enabled) 1 else 0)

        val rows = context.contentResolver.update(
            URI_UN_MALL_APP_STATE,
            values,
            null,
            null
        )

        return rows > 0
    }

    /**
     * 获取黑白名单
     * state = 0: 黑名单
     * state = 1: 白名单
     */
    fun getPackageList(context: Context, isWhitelist: Boolean): List<PackageInfo> {
        val list = mutableListOf<PackageInfo>()
        val state = if (isWhitelist) 1 else 0

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

        return list
    }

    /**
     * 添加包到黑白名单
     * state = 0: 黑名单
     * state = 1: 白名单
     */
    fun addPackage(context: Context, packageName: String, isWhitelist: Boolean): Boolean {
        val values = ContentValues()
        values.put("package_name", packageName)
        values.put("state", if (isWhitelist) 1 else 0)

        val uri = context.contentResolver.insert(URI_FORBIDDEN_APP, values)
        return uri != null
    }

    /**
     * 从黑白名单删除包
     */
    fun removePackage(context: Context, packageName: String): Boolean {
        val rows = context.contentResolver.delete(
            URI_FORBIDDEN_APP,
            "package_name = ?",
            arrayOf(packageName)
        )

        return rows > 0
    }

    /**
     * 检查是否有家长密码
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
}

data class PackageInfo(
    val packageName: String,
    val state: Int  // 0 = 黑名单, 1 = 白名单
)