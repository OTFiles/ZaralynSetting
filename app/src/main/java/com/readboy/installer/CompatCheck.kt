package com.readboy.installer

import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.os.StatFs
import android.os.Environment
import java.io.File

/**
 * 兼容性自检（面向老机型 Android 5~7 的排障）
 *
 * 把「这台机器上哪些能力可用」拆成逐项检查，结果可直接复制反馈。
 * 注意：所有检查都要在后台线程跑（含 Binder 查询与磁盘 IO）。
 */
object CompatCheck {

    private const val TAG = "CompatCheck"
    private const val PARENT_PACKAGE = "com.readboy.parentmanager"

    data class Item(val name: String, val ok: Boolean, val detail: String)

    fun run(context: Context): List<Item> {
        val items = mutableListOf<Item>()

        // 1) 系统版本
        val sdk = Build.VERSION.SDK_INT
        items += Item("系统版本", sdk >= 21, "Android ${Build.VERSION.RELEASE}（API $sdk）")

        // 2) 家长管理是否安装（本应用全部功能都依赖它）
        val pm = context.packageManager
        val parentInstalled = runCatching {
            @Suppress("DEPRECATION")
            pm.getPackageInfo(PARENT_PACKAGE, 0)
            true
        }.getOrDefault(false)
        items += Item(
            "家长管理已安装",
            parentInstalled,
            if (parentInstalled) PARENT_PACKAGE else "未检测到 $PARENT_PACKAGE（功能会受限）"
        )

        // 3) 家长管理版本与 Provider 机制
        val versionName = runCatching {
            @Suppress("DEPRECATION")
            pm.getPackageInfo(PARENT_PACKAGE, 0).versionName ?: "未知"
        }.getOrDefault("未知")
        val pmsVersion = runCatching { ParentManagerCompat.detectVersion(context).name }.getOrDefault("未知")
        items += Item("家长管理版本", true, "$versionName（机制判定：$pmsVersion）")

        // 4) Provider 解析（authority 可能随版本变化）
        val providerAuthority = runCatching { ParentManagerCompat.authority(context) }.getOrNull()
        items += Item(
            "Provider authority",
            !providerAuthority.isNullOrBlank(),
            providerAuthority ?: "解析失败"
        )

        // 5) 安装禁用开关可读（核心功能前提）
        val stateReadable = runCatching { ProviderHelper.getGlobalInstallState(context) }.isSuccess
        items += Item(
            "读取安装管控状态",
            stateReadable,
            if (stateReadable) "install_app_list / un_mall_app_state 查询成功" else "读取失败（可能不支持该版本机制）"
        )

        // 6) 家长密码可读（部分操作需要校验）
        val passwordReadable = runCatching { ParentManagerHelper.readParentPassword(context) }.isSuccess
        items += Item(
            "读取家长密码",
            passwordReadable,
            if (passwordReadable) "user_info 可读" else "不可读（老版本可能没有该表）"
        )

        // 7) 通知黑名单/云端下载能力（HTTP）
        val networkOk = runCatching {
            val url = java.net.URL("http://app-notice-blacklist.readboy.com/")
            (url.openConnection() as java.net.HttpURLConnection).apply {
                connectTimeout = 6000
                readTimeout = 6000
                requestMethod = "GET"
            }.let { conn ->
                val code = conn.responseCode
                conn.disconnect()
                code in 200..499
            }
        }.getOrDefault(false)
        items += Item(
            "云端接口连通",
            networkOk,
            if (networkOk) "readboy.com HTTP 可访问" else "网络不可达（离线也能用本地功能）"
        )

        // 8) 日志目录可写
        val logDir = AppLogger.getLogDirectory()
        val logOk = runCatching {
            val f = File(logDir, ".check")
            f.writeText("ok")
            val ok = f.readText() == "ok"
            f.delete()
            ok
        }.getOrDefault(false)
        items += Item("日志目录可写", logOk, logDir?.absolutePath ?: "未初始化")

        // 9) 存储余量
        val freeMb = runCatching {
            val target = logDir ?: Environment.getExternalStorageDirectory()
            StatFs(target.absolutePath).availableBytes / 1024 / 1024
        }.getOrDefault(0L)
        items += Item("剩余存储", freeMb > 64, "${freeMb} MB")

        // 10) 存储权限（老系统 6.0+ 需要运行时授权才允许读写公共目录）
        val storageGranted = if (sdk >= 23) {
            runCatching {
                context.checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) ==
                    PackageManager.PERMISSION_GRANTED
            }.getOrDefault(false)
        } else {
            true
        }
        items += Item(
            "存储权限（WRITE_EXTERNAL_STORAGE）",
            storageGranted,
            if (sdk < 23) "Android 6.0 以下安装即授予" else if (storageGranted) "已授予" else "未授予（如需导出日志请授权）"
        )

        AppLogger.i(TAG, "兼容性自检：${items.count { it.ok }}/${items.size} 项通过")
        items.forEach { AppLogger.i(TAG, "  ${if (it.ok) "[通过]" else "[未通过]"} ${it.name}: ${it.detail}") }
        return items
    }

    /** 生成可复制的文本报告 */
    fun report(context: Context, items: List<Item>): String = buildString {
        append("ZaralynSetting 兼容性自检报告").append('\n')
        append("时间: ").append(AppLogger.nowString()).append('\n')
        append("机型: ").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append('\n')
        append("系统: Android ").append(Build.VERSION.RELEASE).append(" (API ").append(Build.VERSION.SDK_INT).append(')').append('\n')
        append("版本: ").append(BuildConfig.VERSION_NAME).append(" (").append(BuildConfig.VERSION_CODE).append(')').append('\n')
        items.forEach { item ->
            append(if (item.ok) "[通过] " else "[未通过] ").append(item.name).append(": ").append(item.detail).append('\n')
        }
    }.trim()
}
