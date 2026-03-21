package com.readboy.installer

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.textfield.TextInputLayout
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class SqliteDatabaseFragment : Fragment() {

    private lateinit var tilTable: TextInputLayout
    private lateinit var actvTable: AutoCompleteTextView
    private lateinit var btnGetAllTables: MaterialButton
    private lateinit var btnRefreshTable: MaterialButton
    private lateinit var tvResult: TextView
    private lateinit var tvRowCount: TextView
    private lateinit var tvLog: TextView

    private val tableList = mutableListOf<String>()
    private var selectedTable: String? = null

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_sqlite_database, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        try {
            initViews(view)
            setupTableSelector()
            setupButtons()
            log("数据库管理页面已加载")
        } catch (e: Exception) {
            logError("初始化失败: ${e.message}", e)
            showToast("初始化失败: ${e.message}")
        }
    }

    private fun initViews(view: View) {
        tilTable = view.findViewById(R.id.tilTable)
        actvTable = view.findViewById(R.id.actvTable)
        btnGetAllTables = view.findViewById(R.id.btnGetAllTables)
        btnRefreshTable = view.findViewById(R.id.btnRefreshTable)
        tvResult = view.findViewById(R.id.tvResult)
        tvRowCount = view.findViewById(R.id.tvRowCount)
        tvLog = view.findViewById(R.id.tvLog)
    }

    private fun setupTableSelector() {
        try {
            val adapter = ArrayAdapter(
                requireContext(),
                android.R.layout.simple_dropdown_item_1line,
                tableList
            )
            actvTable.setAdapter(adapter)

            actvTable.setOnItemClickListener { _, _, position, _ ->
                selectedTable = tableList[position]
                log("已选择表: $selectedTable")
            }
        } catch (e: Exception) {
            logError("设置表选择器失败: ${e.message}", e)
        }
    }

    private fun setupButtons() {
        // 获取所有表名按钮
        btnGetAllTables.setOnClickListener {
            try {
                log("开始获取所有表名...")
                val tables = getAllTablesSafe()
                if (tables.isNotEmpty()) {
                    log("✓ 成功获取 ${tables.size} 个表")
                    tableList.clear()
                    tableList.addAll(tables)

                    // 更新下拉列表
                    val adapter = ArrayAdapter(
                        requireContext(),
                        android.R.layout.simple_dropdown_item_1line,
                        tableList
                    )
                    actvTable.setAdapter(adapter)

                    // 显示表列表
                    val tableListText = StringBuilder()
                    tableListText.append("共找到 ${tables.size} 个表：\n\n")
                    tables.forEach { tableName ->
                        tableListText.append("• $tableName\n")
                    }
                    tvResult.text = tableListText.toString()
                    tvRowCount.text = "${tables.size} 个表"

                    showToast("成功获取 ${tables.size} 个表")
                } else {
                    log("✗ 未找到任何表")
                    tvResult.text = "未找到任何表"
                    tvRowCount.text = "0 个表"
                    showToast("未找到任何表")
                }
            } catch (e: Exception) {
                logError("获取表名失败: ${e.message}", e)
                showToast("获取表名失败: ${e.message}")
            }
        }

        // 刷新表数据按钮
        btnRefreshTable.setOnClickListener {
            try {
                val tableName = selectedTable
                if (tableName.isNullOrEmpty()) {
                    showToast("请先选择一个表")
                    log("✗ 未选择表")
                    return@setOnClickListener
                }

                log("开始查询表 '$tableName' 的数据...")
                val tableData = queryTableSafe(tableName)
                tvResult.text = tableData

                // 计算行数（不包括表头）
                val rows = tableData.lines().filter { it.isNotBlank() && !it.startsWith("---") }.size - 1
                tvRowCount.text = "$rows 行"

                log("✓ 查询完成，共 $rows 行数据")
                showToast("表数据已刷新")
            } catch (e: Exception) {
                logError("查询表数据失败: ${e.message}", e)
                showToast("查询表数据失败: ${e.message}")
            }
        }
    }

    private fun getAllTablesSafe(): List<String> {
        return try {
            ParentManagerHelper.getAllTables(requireContext())
        } catch (e: Exception) {
            logError("获取表名异常: ${e.message}", e)
            throw e
        }
    }

    private fun queryTableSafe(tableName: String): String {
        return try {
            ParentManagerHelper.queryTable(requireContext(), tableName)
        } catch (e: Exception) {
            logError("查询表 '$tableName' 异常: ${e.message}", e)
            throw e
        }
    }

    private fun log(message: String) {
        try {
            val timestamp = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            val logMessage = "[$timestamp] $message\n"
            tvLog.append(logMessage)

            // 限制日志长度
            val currentText = tvLog.text.toString()
            if (currentText.length > 5000) {
                tvLog.text = currentText.takeLast(5000)
            }

            // 自动滚动到底部
            val scrollView = tvLog.parent as? ViewGroup
            scrollView?.let {
                for (i in 0 until it.childCount) {
                    val child = it.getChildAt(i)
                    if (child is android.widget.ScrollView) {
                        child.post {
                            child.fullScroll(android.widget.ScrollView.FOCUS_DOWN)
                        }
                        break
                    }
                }
            }

            Log.d(TAG, message)
        } catch (e: Exception) {
            Log.e(TAG, "记录日志失败: ${e.message}", e)
        }
    }

    private fun logError(message: String, exception: Exception) {
        Log.e(TAG, message, exception)
        log("✗ $message")
    }

    private fun showToast(message: String) {
        try {
            Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
        } catch (e: Exception) {
            Log.e(TAG, "显示Toast失败: ${e.message}", e)
        }
    }

    companion object {
        private const val TAG = "SqliteDatabaseFragment"
    }
}