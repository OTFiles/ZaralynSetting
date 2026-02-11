package com.readboy.zaralyn.settings.viewmodel

import android.content.Context
import android.content.Intent
import android.widget.Toast
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.readboy.zaralyn.settings.service.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch

class MainViewModel : ViewModel() {
    
    // UI State
    private val _selectedTab = MutableStateFlow(0)
    val selectedTab: StateFlow<Int> = _selectedTab
    
    // Feature States
    private val _usbDebugEnabled = MutableStateFlow(false)
    val usbDebugEnabled: StateFlow<Boolean> = _usbDebugEnabled
    
    private val _developerOptionsEnabled = MutableStateFlow(false)
    val developerOptionsEnabled: StateFlow<Boolean> = _developerOptionsEnabled
    
    private val _dataUploadEnabled = MutableStateFlow(false)
    val dataUploadEnabled: StateFlow<Boolean> = _dataUploadEnabled
    
    private val _locationEnabled = MutableStateFlow(false)
    val locationEnabled: StateFlow<Boolean> = _locationEnabled
    
    private val _parentModeEnabled = MutableStateFlow(false)
    val parentModeEnabled: StateFlow<Boolean> = _parentModeEnabled
    
    private val _dreamModeEnabled = MutableStateFlow(false)
    val dreamModeEnabled: StateFlow<Boolean> = _dreamModeEnabled
    
    private val _pauseAppsEnabled = MutableStateFlow(false)
    val pauseAppsEnabled: StateFlow<Boolean> = _pauseAppsEnabled
    
    private val _startAppsEnabled = MutableStateFlow(false)
    val startAppsEnabled: StateFlow<Boolean> = _startAppsEnabled
    
    private val _clearDataEnabled = MutableStateFlow(false)
    val clearDataEnabled: StateFlow<Boolean> = _clearDataEnabled
    
    private val _allPermissionsEnabled = MutableStateFlow(false)
    val allPermissionsEnabled: StateFlow<Boolean> = _allPermissionsEnabled
    
    private val _recordingEnabled = MutableStateFlow(false)
    val recordingEnabled: StateFlow<Boolean> = _recordingEnabled
    
    // Custom Settings
    private val _customApkPath = MutableStateFlow("")
    val customApkPath: StateFlow<String> = _customApkPath
    
    private val _customServerUrl = MutableStateFlow("")
    val customServerUrl: StateFlow<String> = _customServerUrl
    
    private val _customUploadData = MutableStateFlow("")
    val customUploadData: StateFlow<String> = _customUploadData
    
    fun selectTab(index: Int) {
        _selectedTab.value = index
    }
    
    // System Functions
    fun toggleUsbDebug(context: Context) {
        _usbDebugEnabled.value = !_usbDebugEnabled.value
        val intent = Intent().apply {
            action = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"
            putExtra("enable_adb", _usbDebugEnabled.value)
        }
        context.startActivity(intent)
    }
    
    fun toggleDeveloperOptions(context: Context) {
        _developerOptionsEnabled.value = !_developerOptionsEnabled.value
        val intent = Intent().apply {
            action = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS_FULL"
        }
        context.startActivity(intent)
    }
    
    fun toggleDataUpload(context: Context) {
        _dataUploadEnabled.value = !_dataUploadEnabled.value
        val intent = Intent(context, DataUploadService::class.java).apply {
            action = if (_dataUploadEnabled.value) "START_UPLOAD" else "STOP_UPLOAD"
        }
        context.startService(intent)
    }
    
    fun toggleLocation(context: Context) {
        _locationEnabled.value = !_locationEnabled.value
        val intent = Intent().apply {
            action = "android.readboy.GpsNetworkLocation"
        }
        context.sendBroadcast(intent)
    }
    
    fun restartDevice(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_REBOOT"
        }
        context.sendBroadcast(intent)
    }
    
    fun shutdownDevice(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_SHUTDOWN"
        }
        context.sendBroadcast(intent)
    }
    
    // App Management
    fun updateCustomApkPath(path: String) {
        _customApkPath.value = path
    }
    
    fun installCustomApk(context: Context) {
        if (_customApkPath.value.isEmpty()) {
            Toast.makeText(context, "请输入 APK 路径", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.SettingsFactoryDslAppsInstallService")
            putExtra("apk_path", _customApkPath.value)
        }
        
        try {
            context.startService(intent)
            Toast.makeText(context, "开始安装", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "安装失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun togglePauseApps(context: Context) {
        _pauseAppsEnabled.value = !_pauseAppsEnabled.value
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_PAUSE_PACKAGE"
            putExtra("package_name", "com.example.target")
        }
        context.sendBroadcast(intent)
    }
    
    fun toggleStartApps(context: Context) {
        _startAppsEnabled.value = !_startAppsEnabled.value
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_START_PACKAGE"
            putExtra("package_name", "com.example.target")
        }
        context.sendBroadcast(intent)
    }
    
    fun toggleClearData(context: Context) {
        _clearDataEnabled.value = !_clearDataEnabled.value
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_CLEAN_APP_DATA_EVENT"
            putExtra("package_name", "com.example.target")
        }
        context.sendBroadcast(intent)
    }
    
    // Parent Control
    fun toggleParentMode(context: Context) {
        _parentModeEnabled.value = !_parentModeEnabled.value
        val intent = Intent().apply {
            action = "android.intent.action.ReadboyExchangeParentMode"
            putExtra("new_parent_mode", if (_parentModeEnabled.value) 1 else 0)
        }
        context.sendBroadcast(intent)
    }
    
    fun toggleDreamMode(context: Context) {
        _dreamModeEnabled.value = !_dreamModeEnabled.value
        val intent = Intent().apply {
            action = "cn.dream.ebag.action.SETTING_TEACHER_CHECK"
        }
        context.startActivity(intent)
    }
    
    fun changePassword(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_CHANAGE_PASSWORD"
            putExtra("new_password", "123456")
        }
        context.sendBroadcast(intent)
    }
    
    fun resetPassword(context: Context) {
        val intent = Intent().apply {
            action = "android.readboy.parentmanager.BROADCAST_JUDGE_PASSWORD_EXISTS"
        }
        context.sendBroadcast(intent)
    }
    
    fun requestAllPermissions(context: Context) {
        _allPermissionsEnabled.value = !_allPermissionsEnabled.value
        val intent = Intent().apply {
            action = "android.readboy.RequestAppAllPermission"
        }
        context.sendBroadcast(intent)
    }
    
    // Advanced Settings
    fun updateCustomServerUrl(url: String) {
        _customServerUrl.value = url
    }
    
    fun updateCustomUploadData(data: String) {
        _customUploadData.value = data
    }
    
    fun uploadCustomData(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_UPLOAD_STATISTICS_DATA"
            putExtra("server_url", _customServerUrl.value)
            putExtra("custom_data", _customUploadData.value)
        }
        context.sendBroadcast(intent)
    }
    
    fun startRecording(context: Context) {
        _recordingEnabled.value = true
        val intent = Intent(context, RecordService::class.java).apply {
            action = "START_RECORD"
        }
        context.startService(intent)
    }
    
    fun stopRecording(context: Context) {
        _recordingEnabled.value = false
        val intent = Intent(context, RecordService::class.java).apply {
            action = "STOP_RECORD"
        }
        context.startService(intent)
    }
}