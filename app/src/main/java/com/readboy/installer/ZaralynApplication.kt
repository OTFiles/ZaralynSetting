package com.readboy.installer

import android.content.Context
import android.util.Log
import android.widget.Toast
import java.io.PrintWriter
import java.io.StringWriter

/**
 * ZaralynSetting Application类
 * 提供全局错误处理和崩溃恢复
 */
class ZaralynApplication : android.app.Application() {

    companion object {
        private const val TAG = "ZaralynApplication"
        private lateinit var instance: ZaralynApplication

        fun getInstance(): ZaralynApplication {
            return instance
        }
    }

    override fun onCreate() {
        super.onCreate()
        instance = this

        // 设置全局异常处理器
        Thread.setDefaultUncaughtExceptionHandler(CrashHandler())

        Log.d(TAG, "ZaralynSetting Application 初始化完成")
    }

    /**
     * 全局异常处理器
     * 捕获未处理的异常，防止应用闪退
     */
    class CrashHandler : Thread.UncaughtExceptionHandler {

        private val defaultHandler: Thread.UncaughtExceptionHandler =
            Thread.getDefaultUncaughtExceptionHandler() as Thread.UncaughtExceptionHandler

        override fun uncaughtException(thread: Thread, throwable: Throwable) {
            Log.e(TAG, "未捕获的异常", throwable)

            // 获取异常信息
            val writer = StringWriter()
            throwable.printStackTrace(PrintWriter(writer))
            val errorText = writer.toString()

            // 保存异常信息到SharedPreferences
            try {
                val prefs = instance.getSharedPreferences("crash_info", Context.MODE_PRIVATE)
                prefs.edit()
                    .putString("last_crash_time", System.currentTimeMillis().toString())
                    .putString("last_crash_message", throwable.message)
                    .putString("last_crash_stacktrace", errorText)
                    .apply()
            } catch (e: Exception) {
                Log.e(TAG, "保存崩溃信息失败", e)
            }

            // 显示错误提示
            try {
                val context = instance.applicationContext
                Toast.makeText(
                    context,
                    "应用遇到错误，正在恢复...",
                    Toast.LENGTH_LONG
                ).show()
            } catch (e: Exception) {
                Log.e(TAG, "显示错误提示失败", e)
            }

            // 调用默认处理器（会杀死应用）
            defaultHandler.uncaughtException(thread, throwable)
        }
    }

    /**
     * 获取上次崩溃信息
     */
    fun getLastCrashInfo(): String? {
        return try {
            val prefs = getSharedPreferences("crash_info", Context.MODE_PRIVATE)
            val crashTime = prefs.getString("last_crash_time", null)
            val crashMessage = prefs.getString("last_crash_message", null)

            if (crashTime != null && crashMessage != null) {
                val time = java.util.Date(crashTime.toLong())
                val formatter = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.getDefault())
                "崩溃时间: ${formatter.format(time)}\n错误信息: $crashMessage"
            } else {
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "获取崩溃信息失败", e)
            null
        }
    }

    /**
     * 清除崩溃信息
     */
    fun clearCrashInfo() {
        try {
            val prefs = getSharedPreferences("crash_info", Context.MODE_PRIVATE)
            prefs.edit().clear().apply()
        } catch (e: Exception) {
            Log.e(TAG, "清除崩溃信息失败", e)
        }
    }
}
