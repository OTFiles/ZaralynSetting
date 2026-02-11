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
import java.io.BufferedReader
import java.io.InputStreamReader

class MainViewModel : ViewModel() {
    
    // UI State
    private val _selectedTab = MutableStateFlow(0)
    val selectedTab: StateFlow<Int> = _selectedTab
    
    // Feature States
    private val _parentModeEnabled = MutableStateFlow(false)
    val parentModeEnabled: StateFlow<Boolean> = _parentModeEnabled
    
    private val _dreamModeEnabled = MutableStateFlow(false)
    val dreamModeEnabled: StateFlow<Boolean> = _dreamModeEnabled
    
    private val _powerSaverEnabled = MutableStateFlow(false)
    val powerSaverEnabled: StateFlow<Boolean> = _powerSaverEnabled
    
    private val _zenModeEnabled = MutableStateFlow(false)
    val zenModeEnabled: StateFlow<Boolean> = _zenModeEnabled
    
    private val _recordingEnabled = MutableStateFlow(false)
    val recordingEnabled: StateFlow<Boolean> = _recordingEnabled
    
    // Custom Settings
    private val _customApkPath = MutableStateFlow("")
    val customApkPath: StateFlow<String> = _customApkPath
    
    private val _customServerUrl = MutableStateFlow("")
    val customServerUrl: StateFlow<String> = _customServerUrl
    
    private val _customUploadData = MutableStateFlow("")
    val customUploadData: StateFlow<String> = _customUploadData
    
    private val _targetPackageName = MutableStateFlow("")
    val targetPackageName: StateFlow<String> = _targetPackageName
    
    // Data Display
    private val _logcatLogs = MutableStateFlow("")
    val logcatLogs: StateFlow<String> = _logcatLogs
    
    private val _appData = MutableStateFlow("")
    val appData: StateFlow<String> = _appData
    
    private val _sqliteData = MutableStateFlow("")
    val sqliteData: StateFlow<String> = _sqliteData
    
    // API Server
    private val _selectedApiServer = MutableStateFlow("http://parent-manage.readboy.com/api/v1/machine/active")
    val selectedApiServer: StateFlow<String> = _selectedApiServer
    
    private val _showCustomServerDialog = MutableStateFlow(false)
    val showCustomServerDialog: StateFlow<Boolean> = _showCustomServerDialog
    
    private val _apiRequestResult = MutableStateFlow("")
    val apiRequestResult: StateFlow<String> = _apiRequestResult
    
    private val _showApiResultDialog = MutableStateFlow(false)
    val showApiResultDialog: StateFlow<Boolean> = _showApiResultDialog
    
    // API Servers List
    val apiServers = listOf(
        // ParentManager API - Machine
        "http://parent-manage.readboy.com/api/v1/machine/active",
        "http://parent-manage.readboy.com/api/v1/machine/get_active_status",
        "http://parent-manage.readboy.com/api/v1/machine/info",
        "http://parent-manage.readboy.com/api/v1/machine/uploadInfo",
        "http://parent-manage.readboy.com/api/v1/machine/uploadFunction",
        // ParentManager API - Password
        "http://parent-manage.readboy.com/api/v1/password/upload",
        // ParentManager API - ControlExtend
        "http://parent-manage.readboy.com/api/v1/controlExtend/uploadFunc",
        "http://parent-manage.readboy.com/api/v1/controlExtend/updateDownloadLevel",
        "http://parent-manage.readboy.com/api/v1/controlExtend/getDownloadLevel",
        // ParentManager API - Homework
        "http://parent-manage.readboy.com/api/v1/homework/uploadFunc",
        "http://parent-manage.readboy.com/api/v1/homework/modelFunc",
        // ParentManager API - Time
        "http://parent-manage.readboy.com/api/v1/time/uploadLockStatus",
        "http://parent-manage.readboy.com/api/v1/time/UploadTimeUsage",
        "http://parent-manage.readboy.com/api/v1/time/updateStatus",
        // ParentManager API - Install
        "http://parent-manage.readboy.com/api/v1/install/upload_list",
        "http://parent-manage.readboy.com/api/v1/install/forbidden_list",
        // ParentManager API - Uninstall
        "http://parent-manage.readboy.com/api/v1/uninstall/uploadApps",
        // ParentManager API - App
        "http://parent-manage.readboy.com/api/v1/app/updateAppStatus",
        // ParentManager API - Screenshot
        "http://parent-manage.readboy.com/api/v1/screenshot/upload",
        // ParentManager API - Heartbeat
        "http://parent-manage.readboy.com/api/v1/heart_beat",
        // ParentManager API - Device Status
        "http://parent-manage.readboy.com/api/v1/device_status/upload",
        // ParentManager API - Current Usage
        "http://parent-manage.readboy.com/api/v1/current_usage/upload",
        // ParentManager API - Location
        "http://parent-manage.readboy.com/api/v1/location/upload",
        // ParentManager API - Bluetooth
        "http://parent-manage.readboy.com/api/v1/bluetooth/upload",
        // ParentManager API - USB Control
        "http://parent-manage.readboy.com/api/v1/control_usb/upload",
        // ParentManager API - Whitelist
        "http://parent-manage.readboy.com/api/v1/whitelist/uploadFunc",
        // ParentManager API - Push
        "http://parent-manage.readboy.com/api/v1/push/get_last_push",
        // ParentManager API - TX Push
        "http://parent-manage.readboy.com/api/v1/tx_push/upload_token",
        // ParentManager API - JPush
        "http://parent-manage.readboy.com/api/v1/jpush/execute",
        "http://parent-manage.readboy.com/api/v1/jpush/content",
        // ParentManager API - LiteApp
        "http://parent-manage.readboy.com/api/v1/liteApp/getConfigs",
        "http://parent-manage.readboy.com/api/v1/liteApp/appletApply",
        "http://parent-manage.readboy.com/api/v1/liteApp/uploadLevel",
        "http://parent-manage.readboy.com/api/v1/liteApp/uploadFunc",
        // ParentManager API - Voice Limit
        "http://parent-manage.readboy.com/api/v1/voiceLimit/getUseCount",
        "http://parent-manage.readboy.com/api/v1/voiceLimit/uploadFunc",
        // ParentManager API - Listener
        "http://parent-manage.readboy.com/api/v1/listener/uploadFunc",
        // ParentManager API - Shutdown
        "http://parent-manage.readboy.com/api/v1/shutdown/uploadFunc",
        // ParentManager API - System Mode
        "http://parent-manage.readboy.com/api/v1/system_mode/upload",
        // ParentManager API - Hide App
        "http://parent-manage.readboy.com/api/v1/hide_app/upload",
        // ParentManager API - Disable Mode
        "http://parent-manage.readboy.com/api/v1/disable_mode/close",
        // ParentManager API - Reminder
        "http://parent-manage.readboy.com/api/v1/reminder/read",
        "http://parent-manage.readboy.com/api/v1/reminder/reply",
        // ParentManager API - Device Log
        "http://parent-manage.readboy.com/api/v1/device_log/upload",
        // ParentManager API - Eyeshield
        "http://parent-manage.readboy.com/api/v1/eyeshield/updateStatus",
        // ParentManager API - Control Answer
        "http://parent-manage.readboy.com/api/v1/controlAnswer/updateStatus",
        // ParentManager API - Upload Allow Password
        "http://parent-manage.readboy.com/api/v1/uploadAllowPwd",
        // ParentAdmin API - Machine
        "https://parentadmin.readboy.com/v1/machine/cancel_bindings",
        "https://parentadmin.readboy.com/v1/machine/miPushStatus/upload",
        // ParentAdmin API - AppInfo
        "https://parentadmin.readboy.com/v1/appinfo/controlApp/upload",
        // ParentAdmin API - JPush
        "https://parentadmin.readboy.com/v1/jpush/executed",
        // ParentAdmin API - V2 Machine
        "https://parentadmin.readboy.com/v2/machine/controllableStatus/upload",
        // Other Servers
        "http://server.readboy.com:9002/v1",
        "http://api.log.readboy.com/logSdkConf",
        "http://weixin.readboy.com/findPassword/",
        "https://care.readboy.com/api/warranty/check",
        "https://api-log.readboy.com/logStsAuth",
        "http://stat.readboy.com/api/events",
        "http://timu.readboy.com/stat/events",
        "http://api.video.readboy.com",
        "http://api.video.readboy.com:8000",
        "http://g-apkstore.strongwind.cn"
    )
    
    fun selectTab(index: Int) {
        _selectedTab.value = index
    }
    
    // ============ API Server Functions ============
    
    fun selectApiServer(server: String) {
        _selectedApiServer.value = server
    }
    
    fun showCustomServerDialog() {
        _showCustomServerDialog.value = true
    }
    
    fun hideCustomServerDialog() {
        _showCustomServerDialog.value = false
    }
    
    fun sendApiRequest(context: Context, requestData: String = "") {
        viewModelScope.launch {
            try {
                val result = withContext(Dispatchers.IO) {
                    val url = _selectedApiServer.value
                    "URL: $url\nData: ${requestData.ifEmpty { "默认请求数据" }}\n\n请求已发送（模拟）"
                }
                _apiRequestResult.value = result
                _showApiResultDialog.value = true
                Toast.makeText(context, "请求已发送", Toast.LENGTH_SHORT).show()
            } catch (e: Exception) {
                _apiRequestResult.value = "请求失败: ${e.message}"
                _showApiResultDialog.value = true
            }
        }
    }
    
    fun hideApiResultDialog() {
        _showApiResultDialog.value = false
    }
    
    // ============ 系统设置 ============
    
    fun openBluetoothSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.bluetooth.BluetoothSettings")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openTetherSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.TetherSettings")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openLanguageSettings(context: Context) {
        val intent = Intent().apply {
            action = "android.settings.LOCALE_SETTINGS"
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openDisplaySettings(context: Context) {
        val intent = Intent().apply {
            action = "android.settings.DISPLAY_SETTINGS"
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openSoundSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$SoundSettingsActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openNotificationSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$ConfigureNotificationSettingsActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun togglePowerSaver(context: Context) {
        _powerSaverEnabled.value = !_powerSaverEnabled.value
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.fuelgauge.BatterySaverModeVoiceActivity")
            putExtra("enabled", _powerSaverEnabled.value)
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun toggleZenMode(context: Context) {
        _zenModeEnabled.value = !_zenModeEnabled.value
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$ZenModeSettingsActivity")
            putExtra("enabled", _zenModeEnabled.value)
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openFingerprintSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.fingerprint.FingerprintEnrollIntroduction")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun restartDevice(context: Context) {
        // 使用SettingsBootCompletedReceiver的Action
        val intent = Intent().apply {
            action = "android.intent.action.ReadboyForceShutdownOrReboot"
            putExtra("type", "reboot")
        }
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "重启命令已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun shutdownDevice(context: Context) {
        // 使用SettingsBootCompletedReceiver的Action
        val intent = Intent().apply {
            action = "android.intent.action.ReadboyForceShutdownOrReboot"
            putExtra("type", "shutdown")
        }
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "关机命令已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    // ============ 应用管理 ============
    
    fun updateCustomApkPath(path: String) {
        _customApkPath.value = path
    }
    
    fun updateTargetPackageName(pkg: String) {
        _targetPackageName.value = pkg
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
    
    fun startApp(context: Context) {
        if (_targetPackageName.value.isEmpty()) {
            Toast.makeText(context, "请输入包名", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_START_PACKAGE"
            setPackage("com.readboy.parentmanager")
            putExtra("package_name", _targetPackageName.value)
        }
        
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "启动命令已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "启动失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun pauseApp(context: Context) {
        if (_targetPackageName.value.isEmpty()) {
            Toast.makeText(context, "请输入包名", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_PAUSE_PACKAGE"
            setPackage("com.readboy.parentmanager")
            putExtra("package_name", _targetPackageName.value)
        }
        
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "暂停命令已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "暂停失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun clearAppData(context: Context) {
        if (_targetPackageName.value.isEmpty()) {
            Toast.makeText(context, "请输入包名", Toast.LENGTH_SHORT).show()
            return
        }
        
        val intent = Intent().apply {
            action = "android.intent.action.ReadboyCleanAppDataEvent"
            setPackage("com.android.settings")
            putExtra("package_name", _targetPackageName.value)
        }
        
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "清除数据命令已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openAdvancedAppsSettings(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$AdvancedAppsActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openRunningServices(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$RunningServicesActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openStorageUse(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.Settings\$StorageUseActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openInstalledAppDetails(context: Context) {
        val intent = Intent().apply {
            setClassName("com.android.settings", "com.android.settings.applications.InstalledAppDetailsTop")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openDeviceAdminSettings(context: Context) {
        val intent = Intent().apply {
            action = "android.settings.DEVICE_ADMIN_SETTINGS"
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    // ============ Logcat ============
    
    fun fetchLogcat(context: Context) {
        viewModelScope.launch {
            try {
                val logs = withContext(Dispatchers.IO) {
                    val process = Runtime.getRuntime().exec(arrayOf("logcat", "-d", "-v", "time", "*:D"))
                    val reader = BufferedReader(InputStreamReader(process.inputStream))
                    val lines = reader.use { it.readLines() }
                    lines.takeLast(200).joinToString("\n")
                }
                _logcatLogs.value = logs
            } catch (e: Exception) {
                _logcatLogs.value = "获取日志失败: ${e.message}"
            }
        }
    }
    
    fun clearLogcat() {
        _logcatLogs.value = ""
        viewModelScope.launch {
            try {
                withContext(Dispatchers.IO) {
                    Runtime.getRuntime().exec(arrayOf("logcat", "-c"))
                }
            } catch (e: Exception) {
                // Ignore
            }
        }
    }
    
    // ============ 家长控制 ============
    
    fun toggleParentMode(context: Context) {
        _parentModeEnabled.value = !_parentModeEnabled.value
        val intent = Intent().apply {
            action = "android.intent.action.ReadboyExchangeParentMode"
            setPackage("com.android.settings")
            putExtra("new_parent_mode", if (_parentModeEnabled.value) 1 else 0)
        }
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "家长模式${if (_parentModeEnabled.value) "已启用" else "已禁用"}", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun toggleDreamMode(context: Context) {
        _dreamModeEnabled.value = !_dreamModeEnabled.value
        val intent = Intent().apply {
            action = "cn.dream.ebag.action.SETTING_TEACHER_CHECK"
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun changePassword(context: Context, newPassword: String) {
        if (newPassword.isEmpty()) {
            Toast.makeText(context, "请输入新密码", Toast.LENGTH_SHORT).show()
            return
        }
        
        // 打开设置密码Activity
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.SettingPasswordActivity")
        }
        try {
            context.startActivity(intent)
            Toast.makeText(context, "密码设置页面已打开", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun resetPassword(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.ParentalAuthActivity")
        }
        try {
            context.startActivity(intent)
            Toast.makeText(context, "家长认证页面已打开", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun validatePassword(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.ValidatePassword")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openActivation(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.ActivationActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openReminderRecord(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.ReminderRecordActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openAppletApply(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.AppletApplyActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openScanPenData(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.ScanPenDataActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openPopupPushMessage(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.PopupPushMessageActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openBigImage(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.BigImageActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun openCloseAppHint(context: Context) {
        val intent = Intent().apply {
            setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.base.activity.CloseAppHintActivity")
        }
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            Toast.makeText(context, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    // ============ 数据服务 ============
    
    fun updateCustomServerUrl(url: String) {
        _customServerUrl.value = url
    }
    
    fun updateCustomUploadData(data: String) {
        _customUploadData.value = data
    }
    
    fun uploadCustomData(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_UPLOAD_RECORD"
            setPackage("com.readboy.parentmanager")
        }
        try {
            context.startService(intent)
            Toast.makeText(context, "数据已发送", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "发送失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun syncData(context: Context) {
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_SYNC_INIT_DATA"
            setPackage("com.readboy.parentmanager")
        }
        try {
            context.startService(intent)
            Toast.makeText(context, "同步数据中...", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "同步失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun startRecording(context: Context) {
        _recordingEnabled.value = true
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_START_RECORD"
            setPackage("com.readboy.parentmanager")
        }
        try {
            context.startService(intent)
            Toast.makeText(context, "开始录音", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "录音失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun stopRecording(context: Context) {
        _recordingEnabled.value = false
        // 发送停止广播
        val intent = Intent().apply {
            action = "com.readboy.parentmanager.ACTION_START_RECORD"
            setPackage("com.readboy.parentmanager")
            putExtra("action", "stop")
        }
        try {
            context.sendBroadcast(intent)
            Toast.makeText(context, "停止录音", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Toast.makeText(context, "停止失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
    
    fun queryAppData(context: Context) {
        viewModelScope.launch {
            try {
                val data = withContext(Dispatchers.IO) {
                    val uri = android.net.Uri.parse("content://com.readboy.parentmanager.DataProvider")
                    val cursor: Cursor? = context.contentResolver.query(uri, null, null, null, null)
                    val result = StringBuilder()
                    cursor?.use {
                        val columns = it.columnNames
                        result.append("列: ${columns.joinToString(", ")}\n\n")
                        while (it.moveToNext()) {
                            for (col in columns) {
                                val idx = it.getColumnIndex(col)
                                result.append("$col: ${it.getString(idx)}\n")
                            }
                            result.append("\n")
                        }
                    }
                    result.toString()
                }
                _appData.value = data.ifEmpty { "暂无数据" }
            } catch (e: Exception) {
                _appData.value = "查询失败: ${e.message}"
            }
        }
    }
    
    fun querySqliteData(context: Context) {
        viewModelScope.launch {
            try {
                val data = withContext(Dispatchers.IO) {
                    val uri = android.net.Uri.parse("content://com.readboy.parentmanager.recordprovider")
                    val cursor: Cursor? = context.contentResolver.query(uri, null, null, null, null)
                    val result = StringBuilder()
                    cursor?.use {
                        val columns = it.columnNames
                        result.append("列: ${columns.joinToString(", ")}\n\n")
                        while (it.moveToNext()) {
                            for (col in columns) {
                                val idx = it.getColumnIndex(col)
                                result.append("$col: ${it.getString(idx)}\n")
                            }
                            result.append("\n")
                        }
                    }
                    result.toString()
                }
                _sqliteData.value = data.ifEmpty { "暂无数据" }
            } catch (e: Exception) {
                _sqliteData.value = "查询失败: ${e.message}"
            }
        }
    }
}
