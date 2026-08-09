package com.readboy.installer

import android.content.Context
import android.util.Log
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * 文件日志系统（不依赖 logcat）
 *
 * 日志按日期分文件存储：
 * <外部存储>/Android/data/com.readboy.installer/files/logs/yyyy-MM-dd.log
 * 外部存储不可用时回退到应用私有目录。
 * 可通过「日志」页面查看与复制。
 */
object AppLogger {

    private const val TAG = "AppLogger"
    private const val DIRECTORY_NAME = "logs"
    private const val MAX_FILE_BYTES = 3L * 1024 * 1024   // 单文件超过 3MB 轮转丢弃
    private const val KEEP_DAYS = 15                       // 保留最近 15 天

    private var logDirectory: File? = null

    private val buffer = StringBuilder()      // init 之前的日志先缓存
    private val lock = Any()

    /** 初始化日志目录（应用启动时调用） */
    fun init(context: Context) {
        synchronized(lock) {
            if (logDirectory != null) return
            val dir = try {
                context.getExternalFilesDir(DIRECTORY_NAME)
            } catch (e: Exception) {
                null
            } ?: File(context.filesDir, DIRECTORY_NAME)

            if (!dir.exists()) dir.mkdirs()
            logDirectory = dir
            cleanupOldLogs()

            // 回放缓存的早期日志
            if (buffer.isNotEmpty()) {
                appendToFile(nowDate(), buffer.toString())
                buffer.setLength(0)
            }
            Log.d(TAG, "日志目录: ${dir.absolutePath}")
        }
    }

    /** 日志目录（未初始化时为 null） */
    fun getLogDirectory(): File? = logDirectory

    // ==================== 日志写入 ====================

    fun d(tag: String, msg: String) = write("D", tag, msg)
    fun i(tag: String, msg: String) = write("I", tag, msg)
    fun w(tag: String, msg: String) = write("W", tag, msg)
    fun e(tag: String, msg: String) = write("E", tag, msg)

    fun e(tag: String, msg: String, tr: Throwable?) {
        write("E", tag, msg)
        tr?.let {
            it.stackTrace?.forEach { frame ->
                write("E", tag, "    at $frame")
            }
        }
    }

    private fun write(level: String, tag: String, msg: String) {
        val line = buildString {
            append(nowTime())
            append(" [")
            append(level)
            append("] [")
            append(tag)
            append("] ")
            append(msg)
        }
        synchronized(lock) {
            if (logDirectory == null) {
                // 初始化前暂存，避免丢日志
                if (buffer.length < 200 * 1024) {
                    buffer.append(line).append('\n')
                }
            } else {
                appendToFile(nowDate(), line + "\n")
            }
        }
        Log.println(if (level == "E") Log.ERROR else if (level == "W") Log.WARN else Log.INFO, tag, msg)
    }

    private fun appendToFile(day: String, content: String) {
        val dir = logDirectory ?: return
        try {
            val file = File(dir, "$day.log")
            if (file.length() > MAX_FILE_BYTES) {
                // 简单轮转：旧文件改名保留一个，避免无限增长
                file.renameTo(File(dir, "$day.old.log"))
            }
            file.appendText(content)
        } catch (e: Exception) {
            Log.e(TAG, "写入日志失败", e)
        }
    }

    private fun cleanupOldLogs() {
        val dir = logDirectory ?: return
        val cutoff = System.currentTimeMillis() - KEEP_DAYS * 24 * 3600 * 1000L
        try {
            dir.listFiles()?.forEach { f ->
                if (f.isFile && f.lastModified() < cutoff) f.delete()
            }
        } catch (e: Exception) {
            Log.e(TAG, "清理旧日志失败", e)
        }
    }

    // ==================== 日志读取 ====================

    /** 按日期（yyyy-MM-dd）列出所有日志文件，新的在前 */
    fun listLogDays(): List<String> {
        val dir = logDirectory ?: return emptyList()
        return try {
            dir.listFiles { f -> f.isFile && f.name.endsWith(".log") }
                ?.mapNotNull { f ->
                    val name = f.name.removeSuffix(".log")
                    if (name.matches(Regex("\\d{4}-\\d{2}-\\d{2}"))) name else null
                }
                ?.sortedDescending()
                ?: emptyList()
        } catch (e: Exception) {
            emptyList()
        }
    }

    /** 读取某天的日志内容；文件不存在返回空字符串 */
    fun readLog(day: String): String {
        val dir = logDirectory ?: return ""
        val file = File(dir, "$day.log")
        return try {
            if (file.exists()) file.readText() else ""
        } catch (e: Exception) {
            "读取日志失败: ${e.message}"
        }
    }

    /** 删除某天的日志 */
    fun deleteLog(day: String): Boolean {
        val dir = logDirectory ?: return false
        val file = File(dir, "$day.log")
        return try {
            file.delete()
        } catch (e: Exception) {
            false
        }
    }

    private fun nowTime(): String = SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(Date())
    private fun nowDate(): String = SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
}