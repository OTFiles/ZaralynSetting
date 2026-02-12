package com.readboy.installer

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton

class SqliteDatabaseFragment : Fragment() {

    private lateinit var btnGetAllTables: MaterialButton
    private lateinit var btnQueryTable: MaterialButton
    private lateinit var tvResult: TextView

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_sqlite_database, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        btnGetAllTables = view.findViewById(R.id.btnGetAllTables)
        btnQueryTable = view.findViewById(R.id.btnQueryTable)
        tvResult = view.findViewById(R.id.tvResult)

        setupSqliteButtons()
    }

    private fun setupSqliteButtons() {
        // 获取所有表名按钮
        btnGetAllTables.setOnClickListener {
            Log.d(TAG, "点击获取所有表名按钮")

            appendResult("正在获取所有表名...\n")

            try {
                val tables = ParentManagerHelper.getAllTables(requireContext())

                if (tables.isNotEmpty()) {
                    val message = "✓ 共找到 ${tables.size} 个表\n"
                    Log.d(TAG, message)
                    appendResult(message)

                    // 打印所有表名
                    tables.forEach { tableName ->
                        appendResult("  - $tableName\n")
                        Log.d(TAG, "表名: $tableName")
                    }
                    appendResult("\n")

                    Toast.makeText(requireContext(), "找到 ${tables.size} 个表", Toast.LENGTH_LONG).show()
                } else {
                    val message = "✗ 未找到任何表"
                    Log.w(TAG, message)
                    appendResult("$message\n\n")
                    Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
                }
            } catch (e: Exception) {
                val message = "✗ 获取表名时发生错误: ${e.message}\n"
                Log.e(TAG, "获取表名时发生错误", e)
                appendResult("$message\n")
                Toast.makeText(requireContext(), "错误: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }

        // 查询指定表按钮（默认查询 user_info 表）
        btnQueryTable.setOnClickListener {
            Log.d(TAG, "点击查询表按钮")

            // 默认查询 user_info 表，实际应用中可以添加输入框让用户输入表名
            val tableName = "user_info"

            appendResult("正在查询表 '$tableName' 的数据...\n")

            try {
                val tableData = ParentManagerHelper.queryTable(requireContext(), tableName)
                Log.d(TAG, "表 $tableName 的数据：\n$tableData")
                appendResult("✓ 查询成功\n\n$tableData\n\n")
                Toast.makeText(requireContext(), "表数据已输出到结果区域", Toast.LENGTH_LONG).show()
            } catch (e: Exception) {
                val message = "✗ 查询表时发生错误: ${e.message}\n"
                Log.e(TAG, "查询表时发生错误", e)
                appendResult("$message\n")
                Toast.makeText(requireContext(), "错误: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun appendResult(text: String) {
        tvResult.append(text)
        // 自动滚动到底部
        val scrollView = tvResult.parent as? android.widget.ScrollView
        scrollView?.post {
            scrollView.fullScroll(android.widget.ScrollView.FOCUS_DOWN)
        }
    }

    companion object {
        private const val TAG = "SqliteDatabaseFragment"
    }
}
