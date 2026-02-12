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

class ParentPasswordFragment : Fragment() {

    private lateinit var btnReadPassword: MaterialButton
    private lateinit var tvResult: TextView

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_parent_password, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        btnReadPassword = view.findViewById(R.id.btnReadPassword)
        tvResult = view.findViewById(R.id.tvResult)

        setupReadPasswordButton()
    }

    private fun setupReadPasswordButton() {
        btnReadPassword.setOnClickListener {
            Log.d(TAG, "点击读取家长密码按钮")

            appendResult("开始读取家长密码...\n")

            // 读取家长密码
            val password = ParentManagerHelper.readParentPassword(requireContext())

            if (password != null) {
                val message = "✓ 成功读取家长密码：$password"
                Log.d(TAG, message)
                appendResult("$message\n\n")
                Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
            } else {
                val message = "✗ 读取家长密码失败，请查看日志"
                Log.e(TAG, message)
                appendResult("$message\n\n")
                Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
            }

            // 同时读取所有用户信息
            appendResult("读取所有用户信息...\n")
            val allInfo = ParentManagerHelper.readAllUserInfo(requireContext())
            Log.d(TAG, "所有用户信息：\n$allInfo")
            appendResult("用户信息：\n$allInfo\n")
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
        private const val TAG = "ParentPasswordFragment"
    }
}