package com.readboy.installer

import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.viewpager2.widget.ViewPager2
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.tabs.TabLayout
import com.google.android.material.tabs.TabLayoutMediator
import com.readboy.installer.adapter.ViewPagerAdapter

class MainActivity : AppCompatActivity() {

    private lateinit var viewPager: ViewPager2
    private lateinit var tabLayout: TabLayout
    private lateinit var fabAdd: FloatingActionButton
    private lateinit var btnReadPassword: Button
    private lateinit var btnGetAllTables: Button
    private lateinit var btnQueryTable: Button
    private lateinit var btnShutdown: Button
    private lateinit var btnReboot: Button
    private lateinit var btnShutdownAuto: Button
    private lateinit var btnRebootAuto: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        viewPager = findViewById(R.id.viewPager)
        tabLayout = findViewById(R.id.tabLayout)
        fabAdd = findViewById(R.id.fabAdd)
        btnReadPassword = findViewById(R.id.btnReadPassword)
        btnGetAllTables = findViewById(R.id.btnGetAllTables)
        btnQueryTable = findViewById(R.id.btnQueryTable)
        btnShutdown = findViewById(R.id.btnShutdown)
        btnReboot = findViewById(R.id.btnReboot)
        btnShutdownAuto = findViewById(R.id.btnShutdownAuto)
        btnRebootAuto = findViewById(R.id.btnRebootAuto)

        setupViewPager()
        setupFab()
        setupReadPasswordButton()
        setupSqliteButtons()
        setupShutdownRebootButtons()
    }

    private fun setupViewPager() {
        val adapter = ViewPagerAdapter(this)
        viewPager.adapter = adapter

        TabLayoutMediator(tabLayout, viewPager) { tab, position ->
            when (position) {
                0 -> tab.text = getString(R.string.global_install_switch)
                1 -> tab.text = getString(R.string.whitelist)
                2 -> tab.text = getString(R.string.blacklist)
            }
        }.attach()
    }

    private fun setupFab() {
        fabAdd.setOnClickListener {
            val currentFragment = (viewPager.adapter as ViewPagerAdapter).getFragment(viewPager.currentItem)
            if (currentFragment is PackageListFragment) {
                currentFragment.showAddDialog()
            }
        }
    }

    private fun setupReadPasswordButton() {
        btnReadPassword.setOnClickListener {
            Log.d(TAG, "点击读取家长密码按钮")

            // 读取家长密码
            val password = ParentManagerHelper.readParentPassword(this)

            if (password != null) {
                val message = "成功读取家长密码：$password"
                Log.d(TAG, message)
                Toast.makeText(this, message, Toast.LENGTH_LONG).show()
            } else {
                val message = "读取家长密码失败，请查看日志"
                Log.e(TAG, message)
                Toast.makeText(this, message, Toast.LENGTH_LONG).show()
            }

            // 同时读取所有用户信息
            val allInfo = ParentManagerHelper.readAllUserInfo(this)
            Log.d(TAG, "所有用户信息：\n$allInfo")
        }
    }

    /**
     * 设置 SQLite 访问按钮
     */
    private fun setupSqliteButtons() {
        // 获取所有表名按钮
        btnGetAllTables.setOnClickListener {
            Log.d(TAG, "点击获取所有表名按钮")

            try {
                val tables = ParentManagerHelper.getAllTables(this)

                if (tables.isNotEmpty()) {
                    val message = "共找到 ${tables.size} 个表\n\n" + tables.joinToString("\n")
                    Log.d(TAG, message)
                    Toast.makeText(this, "请查看日志获取完整表名列表", Toast.LENGTH_LONG).show()

                    // 打印所有表名到日志
                    tables.forEach { tableName ->
                        Log.d(TAG, "表名: $tableName")
                    }
                } else {
                    val message = "未找到任何表"
                    Log.w(TAG, message)
                    Toast.makeText(this, message, Toast.LENGTH_LONG).show()
                }
            } catch (e: Exception) {
                Log.e(TAG, "获取表名时发生错误", e)
                Toast.makeText(this, "错误: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }

        // 查询指定表按钮（默认查询 user_info 表）
        btnQueryTable.setOnClickListener {
            Log.d(TAG, "点击查询表按钮")

            // 默认查询 user_info 表，实际应用中可以添加输入框让用户输入表名
            val tableName = "user_info"

            try {
                val tableData = ParentManagerHelper.queryTable(this, tableName)
                Log.d(TAG, "表 $tableName 的数据：\n$tableData")
                Toast.makeText(this, "表数据已输出到日志，请查看", Toast.LENGTH_LONG).show()
            } catch (e: Exception) {
                Log.e(TAG, "查询表时发生错误", e)
                Toast.makeText(this, "错误: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }

    /**
     * 设置关机和重启按钮
     */
    private fun setupShutdownRebootButtons() {
        // 关机按钮（需要输入密码）
        btnShutdown.setOnClickListener {
            Log.d(TAG, "点击关机按钮")

            AlertDialog.Builder(this)
                .setTitle("警告：关机操作")
                .setMessage("此操作将关闭设备，请确认是否继续？")
                .setPositiveButton("确认关机") { _, _ ->
                    showPasswordInputDialog("关机") { password ->
                        val success = ParentManagerHelper.shutdownDevice(this, password)
                        if (success) {
                            Toast.makeText(this, "关机命令已发送", Toast.LENGTH_SHORT).show()
                        } else {
                            Toast.makeText(this, "关机失败，请检查密码或查看日志", Toast.LENGTH_LONG).show()
                        }
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 重启按钮（需要输入密码）
        btnReboot.setOnClickListener {
            Log.d(TAG, "点击重启按钮")

            AlertDialog.Builder(this)
                .setTitle("警告：重启操作")
                .setMessage("此操作将重启设备，请确认是否继续？")
                .setPositiveButton("确认重启") { _, _ ->
                    showPasswordInputDialog("重启") { password ->
                        val success = ParentManagerHelper.rebootDevice(this, password)
                        if (success) {
                            Toast.makeText(this, "重启命令已发送", Toast.LENGTH_SHORT).show()
                        } else {
                            Toast.makeText(this, "重启失败，请检查密码或查看日志", Toast.LENGTH_LONG).show()
                        }
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 自动关机按钮（自动获取密码）
        btnShutdownAuto.setOnClickListener {
            Log.d(TAG, "点击自动关机按钮")

            AlertDialog.Builder(this)
                .setTitle("⚠️ 严重警告：自动关机")
                .setMessage("此操作将自动获取密码并关闭设备，这是一个危险操作！\n\n确认要继续吗？")
                .setPositiveButton("确认自动关机") { _, _ ->
                    val success = ParentManagerHelper.shutdownWithAutoPassword(this)
                    if (success) {
                        Toast.makeText(this, "关机命令已发送", Toast.LENGTH_SHORT).show()
                    } else {
                        Toast.makeText(this, "关机失败，无法获取密码或查看日志", Toast.LENGTH_LONG).show()
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 自动重启按钮（自动获取密码）
        btnRebootAuto.setOnClickListener {
            Log.d(TAG, "点击自动重启按钮")

            AlertDialog.Builder(this)
                .setTitle("⚠️ 严重警告：自动重启")
                .setMessage("此操作将自动获取密码并重启设备，这是一个危险操作！\n\n确认要继续吗？")
                .setPositiveButton("确认自动重启") { _, _ ->
                    val success = ParentManagerHelper.rebootWithAutoPassword(this)
                    if (success) {
                        Toast.makeText(this, "重启命令已发送", Toast.LENGTH_SHORT).show()
                    } else {
                        Toast.makeText(this, "重启失败，无法获取密码或查看日志", Toast.LENGTH_LONG).show()
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }
    }

    /**
     * 显示密码输入对话框
     *
     * @param operation 操作名称（关机/重启）
     * @param callback 回调函数，返回用户输入的密码
     */
    private fun showPasswordInputDialog(operation: String, callback: (String) -> Unit) {
        val builder = AlertDialog.Builder(this)
        builder.setTitle("输入密码")
        builder.setMessage("请输入家长密码以执行$operation 操作")

        val input = android.widget.EditText(this)
        input.inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
        input.hint = "请输入密码"
        builder.setView(input)

        builder.setPositiveButton("确认") { _, _ ->
            val password = input.text.toString()
            if (password.isNotEmpty()) {
                callback(password)
            } else {
                Toast.makeText(this, "密码不能为空", Toast.LENGTH_SHORT).show()
            }
        }
        builder.setNegativeButton("取消", null)

        builder.show()
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}