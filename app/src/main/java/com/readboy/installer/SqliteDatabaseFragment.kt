package com.readboy.installer

import android.content.ContentValues
import android.content.Context
import android.os.Bundle
import android.text.ClipboardManager
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class SqliteDatabaseFragment : Fragment() {

    private lateinit var tilTable: TextInputLayout
    private lateinit var actvTable: AutoCompleteTextView
    private lateinit var btnGetAllTables: MaterialButton
    private lateinit var btnRefreshTable: MaterialButton
    private lateinit var btnCopyData: MaterialButton
    private lateinit var btnInsertData: MaterialButton
    private lateinit var btnUpdateData: MaterialButton
    private lateinit var btnDeleteData: MaterialButton
    private lateinit var btnClearLog: MaterialButton
    private lateinit var tvResult: TextView
    private lateinit var tvRowCount: TextView
    private lateinit var tvLog: TextView

    private val tableList = mutableListOf<String>()
    private var selectedTable: String? = null
    private var currentTableData = ""

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
        btnCopyData = view.findViewById(R.id.btnCopyData)
        btnInsertData = view.findViewById(R.id.btnInsertData)
        btnUpdateData = view.findViewById(R.id.btnUpdateData)
        btnDeleteData = view.findViewById(R.id.btnDeleteData)
        btnClearLog = view.findViewById(R.id.btnClearLog)
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
                    currentTableData = tableListText.toString()
                    tvResult.text = currentTableData
                    tvRowCount.text = "${tables.size} 个表"

                    showToast("成功获取 ${tables.size} 个表")
                } else {
                    log("✗ 未找到任何表")
                    currentTableData = "未找到任何表"
                    tvResult.text = currentTableData
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
                currentTableData = tableData
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

        // 复制数据按钮
        btnCopyData.setOnClickListener {
            try {
                if (currentTableData.isEmpty()) {
                    showToast("没有数据可复制")
                    return@setOnClickListener
                }

                val clipboard = requireContext().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                clipboard.text = currentTableData

                log("✓ 数据已复制到剪贴板")
                showToast("数据已复制到剪贴板")
            } catch (e: Exception) {
                logError("复制数据失败: ${e.message}", e)
                showToast("复制失败: ${e.message}")
            }
        }

        // 插入数据按钮
        btnInsertData.setOnClickListener {
            showInsertDialog()
        }

        // 更新数据按钮
        btnUpdateData.setOnClickListener {
            showUpdateDialog()
        }

        // 删除数据按钮
        btnDeleteData.setOnClickListener {
            showDeleteDialog()
        }

        // 清空日志按钮
        btnClearLog.setOnClickListener {
            tvLog.text = "日志已清空\n"
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

    private fun showInsertDialog() {
        val tableName = selectedTable
        if (tableName.isNullOrEmpty()) {
            showToast("请先选择一个表")
            return
        }

        val dialogView = LayoutInflater.from(requireContext())
            .inflate(R.layout.dialog_edit_data, null)

        val tilColumns = dialogView.findViewById<TextInputLayout>(R.id.tilColumns)
        val etColumns = dialogView.findViewById<TextInputEditText>(R.id.etColumns)
        val tilValues = dialogView.findViewById<TextInputLayout>(R.id.tilValues)
        val etValues = dialogView.findViewById<TextInputEditText>(R.id.etValues)

        tilColumns.hint = "列名（用逗号分隔）"
        tilValues.hint = "值（用逗号分隔）"

        AlertDialog.Builder(requireContext())
            .setTitle("插入数据到表 '$tableName'")
            .setView(dialogView)
            .setPositiveButton("插入") { _, _ ->
                try {
                    val columnsStr = etColumns.text?.toString() ?: ""
                    val valuesStr = etValues.text?.toString() ?: ""

                    if (columnsStr.isEmpty() || valuesStr.isEmpty()) {
                        showToast("请填写列名和值")
                        return@setPositiveButton
                    }

                    val columns = columnsStr.split(",").map { it.trim() }
                    val values = valuesStr.split(",").map { it.trim() }

                    val contentValues = ContentValues()
                    for (i in columns.indices) {
                        if (i < values.size) {
                            contentValues.put(columns[i], values[i])
                        }
                    }

                    val id = ParentManagerHelper.insertData(requireContext(), tableName, contentValues)
                    if (id > 0) {
                        log("✓ 插入成功，ID: $id")
                        showToast("插入成功，ID: $id")
                        btnRefreshTable.performClick()
                    } else {
                        log("✗ 插入失败")
                        showToast("插入失败")
                    }
                } catch (e: Exception) {
                    logError("插入数据失败: ${e.message}", e)
                    showToast("插入失败: ${e.message}")
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun showUpdateDialog() {
        val tableName = selectedTable
        if (tableName.isNullOrEmpty()) {
            showToast("请先选择一个表")
            return
        }

        val dialogView = LayoutInflater.from(requireContext())
            .inflate(R.layout.dialog_edit_data, null)

        val tilColumns = dialogView.findViewById<TextInputLayout>(R.id.tilColumns)
        val etColumns = dialogView.findViewById<TextInputEditText>(R.id.etColumns)
        val tilValues = dialogView.findViewById<TextInputLayout>(R.id.tilValues)
        val etValues = dialogView.findViewById<TextInputEditText>(R.id.etValues)
        val tilWhere = dialogView.findViewById<TextInputLayout>(R.id.tilWhere)
        val etWhere = dialogView.findViewById<TextInputEditText>(R.id.etWhere)

        tilColumns.hint = "要更新的列名（用逗号分隔）"
        tilValues.hint = "新值（用逗号分隔）"
        tilWhere.hint = "WHERE 条件（例如: _id = 1）"

        AlertDialog.Builder(requireContext())
            .setTitle("更新表 '$tableName' 的数据")
            .setView(dialogView)
            .setPositiveButton("更新") { _, _ ->
                try {
                    val columnsStr = etColumns.text?.toString() ?: ""
                    val valuesStr = etValues.text?.toString() ?: ""
                    val whereClause = etWhere.text?.toString() ?: ""

                    if (columnsStr.isEmpty() || valuesStr.isEmpty()) {
                        showToast("请填写列名和值")
                        return@setPositiveButton
                    }

                    if (whereClause.isEmpty()) {
                        showToast("请填写WHERE条件")
                        return@setPositiveButton
                    }

                    val columns = columnsStr.split(",").map { it.trim() }
                    val values = valuesStr.split(",").map { it.trim() }

                    val contentValues = ContentValues()
                    for (i in columns.indices) {
                        if (i < values.size) {
                            contentValues.put(columns[i], values[i])
                        }
                    }

                    val rowsAffected = ParentManagerHelper.updateData(
                        requireContext(),
                        tableName,
                        contentValues,
                        whereClause,
                        null
                    )

                    if (rowsAffected > 0) {
                        log("✓ 更新成功，受影响的行数: $rowsAffected")
                        showToast("更新成功，受影响的行数: $rowsAffected")
                        btnRefreshTable.performClick()
                    } else {
                        log("✗ 更新失败，未找到匹配的行")
                        showToast("更新失败，未找到匹配的行")
                    }
                } catch (e: Exception) {
                    logError("更新数据失败: ${e.message}", e)
                    showToast("更新失败: ${e.message}")
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun showDeleteDialog() {
        val tableName = selectedTable
        if (tableName.isNullOrEmpty()) {
            showToast("请先选择一个表")
            return
        }

        val dialogView = LayoutInflater.from(requireContext())
            .inflate(R.layout.dialog_edit_data, null)

        val tilWhere = dialogView.findViewById<TextInputLayout>(R.id.tilWhere)
        val etWhere = dialogView.findViewById<TextInputEditText>(R.id.etWhere)

        tilWhere.hint = "WHERE 条件（例如: _id = 1）"

        // 隐藏其他字段
        dialogView.findViewById<TextInputLayout>(R.id.tilColumns).visibility = View.GONE
        dialogView.findViewById<TextInputEditText>(R.id.etColumns).visibility = View.GONE
        dialogView.findViewById<TextInputLayout>(R.id.tilValues).visibility = View.GONE
        dialogView.findViewById<TextInputEditText>(R.id.etValues).visibility = View.GONE

        AlertDialog.Builder(requireContext())
            .setTitle("删除表 '$tableName' 的数据")
            .setMessage("⚠️ 警告：删除操作不可恢复！")
            .setView(dialogView)
            .setPositiveButton("删除") { _, _ ->
                try {
                    val whereClause = etWhere.text?.toString() ?: ""

                    if (whereClause.isEmpty()) {
                        showToast("请填写WHERE条件")
                        return@setPositiveButton
                    }

                    val rowsAffected = ParentManagerHelper.deleteData(
                        requireContext(),
                        tableName,
                        whereClause,
                        null
                    )

                    if (rowsAffected > 0) {
                        log("✓ 删除成功，受影响的行数: $rowsAffected")
                        showToast("删除成功，受影响的行数: $rowsAffected")
                        btnRefreshTable.performClick()
                    } else {
                        log("✗ 删除失败，未找到匹配的行")
                        showToast("删除失败，未找到匹配的行")
                    }
                } catch (e: Exception) {
                    logError("删除数据失败: ${e.message}", e)
                    showToast("删除失败: ${e.message}")
                }
            }
            .setNegativeButton("取消", null)
            .show()
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