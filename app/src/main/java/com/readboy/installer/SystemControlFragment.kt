package com.readboy.installer

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import com.google.android.material.button.MaterialButton

class SystemControlFragment : Fragment() {

    private lateinit var btnShutdown: MaterialButton
    private lateinit var btnReboot: MaterialButton
    private lateinit var btnShutdownAuto: MaterialButton
    private lateinit var btnRebootAuto: MaterialButton
    private lateinit var tvResult: TextView

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_system_control, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        btnShutdown = view.findViewById(R.id.btnShutdown)
        btnReboot = view.findViewById(R.id.btnReboot)
        btnShutdownAuto = view.findViewById(R.id.btnShutdownAuto)
        btnRebootAuto = view.findViewById(R.id.btnRebootAuto)
        tvResult = view.findViewById(R.id.tvResult)

        setupShutdownRebootButtons()
    }

    private fun setupShutdownRebootButtons() {
        // 关机按钮（需要输入密码）
        btnShutdown.setOnClickListener {
            Log.d(TAG, "点击关机按钮")

            AlertDialog.Builder(requireContext())
                .setTitle("警告：关机操作")
                .setMessage("此操作将关闭设备，请确认是否继续？")
                .setPositiveButton("确认关机") { _, _ ->
                    showPasswordInputDialog("关机") { password ->
                        appendResult("正在执行关机操作（密码：****）...\n")
                        val success = ParentManagerHelper.shutdownDevice(requireContext(), password)
                        if (success) {
                            val message = "✓ 关机命令已发送"
                            Log.d(TAG, message)
                            appendResult("$message\n\n")
                            Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
                        } else {
                            val message = "✗ 关机失败，请检查密码或查看日志"
                            Log.e(TAG, message)
                            appendResult("$message\n\n")
                            Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
                        }
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 重启按钮（需要输入密码）
        btnReboot.setOnClickListener {
            Log.d(TAG, "点击重启按钮")

            AlertDialog.Builder(requireContext())
                .setTitle("警告：重启操作")
                .setMessage("此操作将重启设备，请确认是否继续？")
                .setPositiveButton("确认重启") { _, _ ->
                    showPasswordInputDialog("重启") { password ->
                        appendResult("正在执行重启操作（密码：****）...\n")
                        val success = ParentManagerHelper.rebootDevice(requireContext(), password)
                        if (success) {
                            val message = "✓ 重启命令已发送"
                            Log.d(TAG, message)
                            appendResult("$message\n\n")
                            Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
                        } else {
                            val message = "✗ 重启失败，请检查密码或查看日志"
                            Log.e(TAG, message)
                            appendResult("$message\n\n")
                            Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
                        }
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 自动关机按钮（自动获取密码）
        btnShutdownAuto.setOnClickListener {
            Log.d(TAG, "点击自动关机按钮")

            AlertDialog.Builder(requireContext())
                .setTitle("⚠️ 严重警告：自动关机")
                .setMessage("此操作将自动获取密码并关闭设备，这是一个危险操作！\n\n确认要继续吗？")
                .setPositiveButton("确认自动关机") { _, _ ->
                    appendResult("正在执行自动关机操作...\n")
                    val success = ParentManagerHelper.shutdownWithAutoPassword(requireContext())
                    if (success) {
                        val message = "✓ 关机命令已发送"
                        Log.d(TAG, message)
                        appendResult("$message\n\n")
                        Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
                    } else {
                        val message = "✗ 关机失败，无法获取密码或查看日志"
                        Log.e(TAG, message)
                        appendResult("$message\n\n")
                        Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
                    }
                }
                .setNegativeButton("取消", null)
                .show()
        }

        // 自动重启按钮（自动获取密码）
        btnRebootAuto.setOnClickListener {
            Log.d(TAG, "点击自动重启按钮")

            AlertDialog.Builder(requireContext())
                .setTitle("⚠️ 严重警告：自动重启")
                .setMessage("此操作将自动获取密码并重启设备，这是一个危险操作！\n\n确认要继续吗？")
                .setPositiveButton("确认自动重启") { _, _ ->
                    appendResult("正在执行自动重启操作...\n")
                    val success = ParentManagerHelper.rebootWithAutoPassword(requireContext())
                    if (success) {
                        val message = "✓ 重启命令已发送"
                        Log.d(TAG, message)
                        appendResult("$message\n\n")
                        Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
                    } else {
                        val message = "✗ 重启失败，无法获取密码或查看日志"
                        Log.e(TAG, message)
                        appendResult("$message\n\n")
                        Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
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
        val builder = AlertDialog.Builder(requireContext())
        builder.setTitle("输入密码")
        builder.setMessage("请输入家长密码以执行$operation 操作")

        val input = android.widget.EditText(requireContext())
        input.inputType = android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
        input.hint = "请输入密码"
        builder.setView(input)

        builder.setPositiveButton("确认") { _, _ ->
            val password = input.text.toString()
            if (password.isNotEmpty()) {
                callback(password)
            } else {
                Toast.makeText(requireContext(), "密码不能为空", Toast.LENGTH_SHORT).show()
            }
        }
        builder.setNegativeButton("取消", null)

        builder.show()
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
        private const val TAG = "SystemControlFragment"
    }
}
