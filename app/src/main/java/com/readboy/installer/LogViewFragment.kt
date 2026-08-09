package com.readboy.installer

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * 日志查看页
 *
 * 按日期分文件展示 AppLogger 的日志，支持：
 * - ◀ ▶ 切换日期（只有有日志的日期可切换）
 * - 刷新 / 一键复制当前日志
 */
class LogViewFragment : Fragment() {

    private lateinit var tvDate: TextView
    private lateinit var tvLogContent: TextView
    private lateinit var tvLogEmpty: TextView

    /** 当前展示的日期 yyyy-MM-dd */
    private var currentDate: String = ""

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_log_view, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        try {
            tvDate = view.findViewById(R.id.tvDate)
            tvLogContent = view.findViewById(R.id.tvLogContent)
            tvLogEmpty = view.findViewById(R.id.tvLogEmpty)
            tvLogEmpty.visibility = View.GONE

            view.findViewById<View>(R.id.btnPrevDay).setOnClickListener {
                moveDay(-1)
            }
            view.findViewById<View>(R.id.btnNext).setOnClickListener {
                moveDay(1)
            }
            view.findViewById<View>(R.id.btnRefreshLog).setOnClickListener {
                refreshLog()
            }
            view.findViewById<View>(R.id.btnCopyLog).setOnClickListener {
                copyLog()
            }

            refreshLog()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "加载日志页失败", e)
            Toast.makeText(requireContext(), "初始化失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    private fun refreshLog() {
        val days = AppLogger.listLogDays()

        if (currentDate.isEmpty()) {
            currentDate = if (days.isNotEmpty()) days.first() else today()
        } else if (!days.contains(currentDate) && days.isNotEmpty()) {
            // 当前日期没有日志文件时，回退到最近一个有日志的日期
            currentDate = days.first()
        }

        tvDate.text = currentDate

        val content = AppLogger.readLog(currentDate)
        if (content.isBlank()) {
            tvLogContent.text = ""
            tvLogEmpty.visibility = View.VISIBLE
            tvLogEmpty.text = getString(R.string.log_empty) + "\n当前日期: $currentDate"
        } else {
            tvLogContent.text = content
            tvLogEmpty.visibility = View.GONE
        }
    }

    private fun moveDay(offset: Int) {
        val days = AppLogger.listLogDays()
        if (days.isEmpty()) {
            refreshLog()
            return
        }
        if (currentDate.isEmpty()) {
            currentDate = days.first()
        }
        val currentIndex = days.indexOf(currentDate)
        val targetIndex = if (currentIndex < 0) {
            0
        } else {
            (currentIndex + offset).coerceIn(0, days.size - 1)
        }
        currentDate = days[targetIndex]
        refreshLog()
    }

    private fun copyLog() {
        try {
            val content = AppLogger.readLog(currentDate)
            if (content.isBlank()) {
                Toast.makeText(requireContext(), "当前无日志内容", Toast.LENGTH_SHORT).show()
                return
            }
            val clipboard = requireContext().getSystemService(android.content.Context.CLIPBOARD_SERVICE)
                as android.content.ClipboardManager
            clipboard.text = content
            Toast.makeText(requireContext(), "已复制 $currentDate 的日志", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "复制日志失败", e)
            Toast.makeText(requireContext(), "复制失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onResume() {
        super.onResume()
        try {
            refreshLog()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "刷新日志失败", e)
        }
    }

    companion object {
        private const val TAG = "LogViewFragment"

        private fun today(): String {
            return SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
        }
    }
}