package com.readboy.zaralyn.settings.ui.screen.components

import android.content.Context
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.selection.SelectionContainer
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.readboy.zaralyn.settings.viewmodel.MainViewModel

// ============ 系统设置页面 ============
@Composable
fun SystemSettingsScreen(viewModel: MainViewModel, context: Context) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item { SectionTitle("系统设置") }
        
        // 蓝牙设置
        item {
            ActionCard(
                title = "蓝牙设置",
                description = "打开蓝牙设置",
                icon = Icons.Default.Bluetooth,
                onClick = { viewModel.openBluetoothSettings(context) }
            )
        }
        
        // 热点设置
        item {
            ActionCard(
                title = "热点设置",
                description = "打开热点设置",
                icon = Icons.Default.WifiTethering,
                onClick = { viewModel.openTetherSettings(context) }
            )
        }
        
        // 语言设置
        item {
            ActionCard(
                title = "语言设置",
                description = "打开语言设置",
                icon = Icons.Default.Translate,
                onClick = { viewModel.openLanguageSettings(context) }
            )
        }
        
        // 显示设置
        item {
            ActionCard(
                title = "显示设置",
                description = "打开显示设置",
                icon = Icons.Default.DisplaySettings,
                onClick = { viewModel.openDisplaySettings(context) }
            )
        }
        
        // 声音设置
        item {
            ActionCard(
                title = "声音设置",
                description = "打开声音设置",
                icon = Icons.Default.VolumeUp,
                onClick = { viewModel.openSoundSettings(context) }
            )
        }
        
        // 通知设置
        item {
            ActionCard(
                title = "通知设置",
                description = "打开通知设置",
                icon = Icons.Default.Notifications,
                onClick = { viewModel.openNotificationSettings(context) }
            )
        }
        
        // 省电模式
        item {
            val powerSaverEnabled by viewModel.powerSaverEnabled.collectAsState()
            ToggleCard(
                title = "省电模式",
                description = "启用电池省电模式",
                icon = Icons.Default.BatterySaver,
                isEnabled = powerSaverEnabled,
                onToggle = { viewModel.togglePowerSaver(context) }
            )
        }
        
        // 勿扰模式
        item {
            val zenModeEnabled by viewModel.zenModeEnabled.collectAsState()
            ToggleCard(
                title = "勿扰模式",
                description = "启用勿扰模式",
                icon = Icons.Default.DoNotDisturb,
                isEnabled = zenModeEnabled,
                onToggle = { viewModel.toggleZenMode(context) }
            )
        }
        
        // 指纹设置
        item {
            ActionCard(
                title = "指纹设置",
                description = "打开指纹设置",
                icon = Icons.Default.Fingerprint,
                onClick = { viewModel.openFingerprintSettings(context) }
            )
        }
        
        item { SectionTitle("系统控制") }
        
        // 设备重启
        item {
            ActionCard(
                title = "设备重启",
                description = "重启设备",
                icon = Icons.Default.RestartAlt,
                onClick = { viewModel.restartDevice(context) }
            )
        }
        
        // 设备关机
        item {
            ActionCard(
                title = "设备关机",
                description = "关闭设备",
                icon = Icons.Default.PowerSettingsNew,
                onClick = { viewModel.shutdownDevice(context) }
            )
        }
    }
}

// ============ 应用管理页面 ============
@Composable
fun AppManagementScreen(viewModel: MainViewModel, context: Context) {
    val apkPath by viewModel.customApkPath.collectAsState()
    val packageName by viewModel.targetPackageName.collectAsState()
    val logcatLogs by viewModel.logcatLogs.collectAsState()
    var showLogcatDialog by remember { mutableStateOf(false) }
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item { SectionTitle("应用安装") }
        
        // APK 路径输入
        item {
            OutlinedTextField(
                value = apkPath,
                onValueChange = { viewModel.updateCustomApkPath(it) },
                label = { Text("APK 路径") },
                placeholder = { Text("/sdcard/Download/app.apk") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = { Icon(Icons.Default.FolderOpen, null) }
            )
        }
        
        // 安装按钮
        item {
            Button(
                onClick = { viewModel.installCustomApk(context) },
                modifier = Modifier.fillMaxWidth()
            ) {
                Icon(Icons.Default.InstallMobile, null)
                Spacer(Modifier.width(8.dp))
                Text("安装 APK")
            }
        }
        
        item { SectionTitle("应用控制") }
        
        // 包名输入
        item {
            OutlinedTextField(
                value = packageName,
                onValueChange = { viewModel.updateTargetPackageName(it) },
                label = { Text("目标包名") },
                placeholder = { Text("com.example.app") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = { Icon(Icons.Default.Apps, null) }
            )
        }
        
        // 启动应用
        item {
            Button(
                onClick = { viewModel.startApp(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary
                )
            ) {
                Icon(Icons.Default.PlayArrow, null)
                Spacer(Modifier.width(8.dp))
                Text("启动应用")
            }
        }
        
        // 暂停应用
        item {
            Button(
                onClick = { viewModel.pauseApp(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.secondary
                )
            ) {
                Icon(Icons.Default.Pause, null)
                Spacer(Modifier.width(8.dp))
                Text("暂停应用")
            }
        }
        
        // 清除数据
        item {
            Button(
                onClick = { viewModel.clearAppData(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.error
                )
            ) {
                Icon(Icons.Default.Delete, null)
                Spacer(Modifier.width(8.dp))
                Text("清除应用数据")
            }
        }
        
        item { SectionTitle("应用信息") }
        
        // 高级应用设置
        item {
            ActionCard(
                title = "高级应用设置",
                description = "查看所有应用高级设置",
                icon = Icons.Default.Settings,
                onClick = { viewModel.openAdvancedAppsSettings(context) }
            )
        }
        
        // 运行服务
        item {
            ActionCard(
                title = "运行服务",
                description = "查看运行中的服务",
                icon = Icons.Default.Sync,
                onClick = { viewModel.openRunningServices(context) }
            )
        }
        
        // 存储使用
        item {
            ActionCard(
                title = "存储使用",
                description = "查看存储使用情况",
                icon = Icons.Default.Storage,
                onClick = { viewModel.openStorageUse(context) }
            )
        }
        
        // 已安装应用详情
        item {
            ActionCard(
                title = "已安装应用详情",
                description = "查看应用详情",
                icon = Icons.Default.Info,
                onClick = { viewModel.openInstalledAppDetails(context) }
            )
        }
        
        // 设备管理器设置
        item {
            ActionCard(
                title = "设备管理器设置",
                description = "打开设备管理器",
                icon = Icons.Default.AdminPanelSettings,
                onClick = { viewModel.openDeviceAdminSettings(context) }
            )
        }
        
        item { SectionTitle("系统日志") }
        
        // Logcat 日志
        item {
            Button(
                onClick = { 
                    viewModel.fetchLogcat(context)
                    showLogcatDialog = true
                },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.tertiary
                )
            ) {
                Icon(Icons.Default.Terminal, null)
                Spacer(Modifier.width(8.dp))
                Text("查看 Logcat 日志")
            }
        }
        
        // 清空日志
        item {
            Button(
                onClick = { viewModel.clearLogcat() },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Icon(Icons.Default.Clear, null)
                Spacer(Modifier.width(8.dp))
                Text("清空日志")
            }
        }
    }
    
    // Logcat 对话框
    if (showLogcatDialog) {
        AlertDialog(
            onDismissRequest = { showLogcatDialog = false },
            title = { Text("Logcat 日志") },
            text = {
                SelectionContainer {
                    Text(
                        text = logcatLogs.ifEmpty { "暂无日志" },
                        fontFamily = FontFamily.Monospace,
                        fontSize = MaterialTheme.typography.bodySmall.fontSize,
                        modifier = Modifier
                            .height(300.dp)
                            .verticalScroll(rememberScrollState())
                    )
                }
            },
            confirmButton = {
                TextButton(onClick = { showLogcatDialog = false }) {
                    Text("关闭")
                }
            }
        )
    }
}

// ============ 家长控制页面 ============
@Composable
fun ParentControlScreen(viewModel: MainViewModel, context: Context) {
    val parentModeEnabled by viewModel.parentModeEnabled.collectAsState()
    val dreamModeEnabled by viewModel.dreamModeEnabled.collectAsState()
    var newPassword by remember { mutableStateOf("") }
    var showPasswordDialog by remember { mutableStateOf(false) }
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item { SectionTitle("模式切换") }
        
        // 家长模式
        item {
            ToggleCard(
                title = "家长模式",
                description = "切换家长控制模式",
                icon = Icons.Default.Shield,
                isEnabled = parentModeEnabled,
                onToggle = { viewModel.toggleParentMode(context) }
            )
        }
        
        // Dream 模式
        item {
            ToggleCard(
                title = "Dream 模式",
                description = "切换 Dream 学习模式",
                icon = Icons.Default.School,
                isEnabled = dreamModeEnabled,
                onToggle = { viewModel.toggleDreamMode(context) }
            )
        }
        
        item { SectionTitle("密码管理") }
        
        // 修改密码
        item {
            Button(
                onClick = { showPasswordDialog = true },
                modifier = Modifier.fillMaxWidth()
            ) {
                Icon(Icons.Default.Lock, null)
                Spacer(Modifier.width(8.dp))
                Text("修改密码")
            }
        }
        
        // 重置密码
        item {
            Button(
                onClick = { viewModel.resetPassword(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.secondary
                )
            ) {
                Icon(Icons.Default.LockReset, null)
                Spacer(Modifier.width(8.dp))
                Text("重置密码")
            }
        }
        
        // 验证密码
        item {
            Button(
                onClick = { viewModel.validatePassword(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.tertiary
                )
            ) {
                Icon(Icons.Default.VerifiedUser, null)
                Spacer(Modifier.width(8.dp))
                Text("验证密码")
            }
        }
        
        item { SectionTitle("其他功能") }
        
        // 激活
        item {
            ActionCard(
                title = "激活",
                description = "打开激活页面",
                icon = Icons.Default.CheckCircle,
                onClick = { viewModel.openActivation(context) }
            )
        }
        
        // 提醒记录
        item {
            ActionCard(
                title = "提醒记录",
                description = "查看提醒记录",
                icon = Icons.Default.Reminder,
                onClick = { viewModel.openReminderRecord(context) }
            )
        }
        
        // 小程序申请
        item {
            ActionCard(
                title = "小程序申请",
                description = "打开小程序申请",
                icon = Icons.Default.AppRegistration,
                onClick = { viewModel.openAppletApply(context) }
            )
        }
        
        // 扫描笔数据
        item {
            ActionCard(
                title = "扫描笔数据",
                description = "查看扫描笔数据",
                icon = Icons.Default.Edit,
                onClick = { viewModel.openScanPenData(context) }
            )
        }
        
        // 弹窗推送
        item {
            ActionCard(
                title = "弹窗推送",
                description = "打开弹窗推送",
                icon = Icons.Default.Popup,
                onClick = { viewModel.openPopupPushMessage(context) }
            )
        }
        
        // 大图查看
        item {
            ActionCard(
                title = "大图查看",
                description = "打开大图查看",
                icon = Icons.Default.Image,
                onClick = { viewModel.openBigImage(context) }
            )
        }
        
        // 关闭应用提示
        item {
            ActionCard(
                title = "关闭应用提示",
                description = "打开关闭应用提示",
                icon = Icons.Default.Close,
                onClick = { viewModel.openCloseAppHint(context) }
            )
        }
    }
    
    // 修改密码对话框
    if (showPasswordDialog) {
        AlertDialog(
            onDismissRequest = { showPasswordDialog = false },
            title = { Text("修改密码") },
            text = {
                OutlinedTextField(
                    value = newPassword,
                    onValueChange = { newPassword = it },
                    label = { Text("新密码") },
                    singleLine = true
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        viewModel.changePassword(context, newPassword)
                        showPasswordDialog = false
                        newPassword = ""
                    }
                ) {
                    Text("确定")
                }
            },
            dismissButton = {
                TextButton(onClick = { showPasswordDialog = false }) {
                    Text("取消")
                }
            }
        )
    }
}

// ============ 数据服务页面 ============
@Composable
fun DataServiceScreen(viewModel: MainViewModel, context: Context) {
    val serverUrl by viewModel.customServerUrl.collectAsState()
    val uploadData by viewModel.customUploadData.collectAsState()
    val recordingEnabled by viewModel.recordingEnabled.collectAsState()
    val appData by viewModel.appData.collectAsState()
    val sqliteData by viewModel.sqliteData.collectAsState()
    var showAppDataDialog by remember { mutableStateOf(false) }
    var showSqliteDataDialog by remember { mutableStateOf(false) }
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item { SectionTitle("数据上传") }
        
        // 服务器地址
        item {
            OutlinedTextField(
                value = serverUrl,
                onValueChange = { viewModel.updateCustomServerUrl(it) },
                label = { Text("服务器地址") },
                placeholder = { Text("http://your-server.com") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = { Icon(Icons.Default.Storage, null) }
            )
        }
        
        // 上传数据
        item {
            OutlinedTextField(
                value = uploadData,
                onValueChange = { viewModel.updateCustomUploadData(it) },
                label = { Text("上传数据") },
                placeholder = { Text("自定义上传内容") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = { Icon(Icons.Default.CloudUpload, null) },
                minLines = 3,
                maxLines = 5
            )
        }
        
        // 发送数据
        item {
            Button(
                onClick = { viewModel.uploadCustomData(context) },
                modifier = Modifier.fillMaxWidth()
            ) {
                Icon(Icons.Default.Send, null)
                Spacer(Modifier.width(8.dp))
                Text("发送数据")
            }
        }
        
        // 同步数据
        item {
            Button(
                onClick = { viewModel.syncData(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.secondary
                )
            ) {
                Icon(Icons.Default.Sync, null)
                Spacer(Modifier.width(8.dp))
                Text("同步数据")
            }
        }
        
        item { SectionTitle("录音功能") }
        
        // 录音开关
        item {
            ToggleCard(
                title = "录音",
                description = if (recordingEnabled) "正在录音" else "开始录音",
                icon = Icons.Default.Mic,
                isEnabled = recordingEnabled,
                onToggle = {
                    if (recordingEnabled) {
                        viewModel.stopRecording(context)
                    } else {
                        viewModel.startRecording(context)
                    }
                }
            )
        }
        
        item { SectionTitle("数据查询") }
        
        // 应用数据
        item {
            Button(
                onClick = { 
                    viewModel.queryAppData(context)
                    showAppDataDialog = true
                },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.tertiary
                )
            ) {
                Icon(Icons.Default.Database, null)
                Spacer(Modifier.width(8.dp))
                Text("查询应用数据")
            }
        }
        
        // SQLite 数据
        item {
            Button(
                onClick = { 
                    viewModel.querySqliteData(context)
                    showSqliteDataDialog = true
                },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.tertiary
                )
            ) {
                Icon(Icons.Default.Storage, null)
                Spacer(Modifier.width(8.dp))
                Text("查询 SQLite 数据")
            }
        }
    }
    
    // 应用数据对话框
    if (showAppDataDialog) {
        AlertDialog(
            onDismissRequest = { showAppDataDialog = false },
            title = { Text("应用数据") },
            text = {
                SelectionContainer {
                    Text(
                        text = appData.ifEmpty { "暂无数据" },
                        fontFamily = FontFamily.Monospace,
                        fontSize = MaterialTheme.typography.bodySmall.fontSize,
                        modifier = Modifier
                            .height(300.dp)
                            .verticalScroll(rememberScrollState())
                    )
                }
            },
            confirmButton = {
                TextButton(onClick = { showAppDataDialog = false }) {
                    Text("关闭")
                }
            }
        )
    }
    
    // SQLite 数据对话框
    if (showSqliteDataDialog) {
        AlertDialog(
            onDismissRequest = { showSqliteDataDialog = false },
            title = { Text("SQLite 数据") },
            text = {
                SelectionContainer {
                    Text(
                        text = sqliteData.ifEmpty { "暂无数据" },
                        fontFamily = FontFamily.Monospace,
                        fontSize = MaterialTheme.typography.bodySmall.fontSize,
                        modifier = Modifier
                            .height(300.dp)
                            .verticalScroll(rememberScrollState())
                    )
                }
            },
            confirmButton = {
                TextButton(onClick = { showSqliteDataDialog = false }) {
                    Text("关闭")
                }
            }
        )
    }
}

// ============ 组件 ============
@Composable
fun SectionTitle(title: String) {
    Text(
        title,
        style = MaterialTheme.typography.titleLarge,
        fontWeight = FontWeight.Bold,
        color = MaterialTheme.colorScheme.primary,
        modifier = Modifier.padding(vertical = 4.dp)
    )
}

@Composable
fun ActionCard(
    title: String,
    description: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        onClick = onClick,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(24.dp)
            )
            Spacer(Modifier.width(16.dp))
            Column(Modifier.weight(1f)) {
                Text(
                    title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Medium
                )
                Text(
                    description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Icon(
                Icons.Default.ChevronRight,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
fun ToggleCard(
    title: String,
    description: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    isEnabled: Boolean,
    onToggle: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = if (isEnabled) 
                MaterialTheme.colorScheme.primaryContainer 
            else 
                MaterialTheme.colorScheme.surface
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = if (isEnabled) 
                    MaterialTheme.colorScheme.primary 
                else 
                    MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.size(24.dp)
            )
            Spacer(Modifier.width(16.dp))
            Column(Modifier.weight(1f)) {
                Text(
                    title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Medium,
                    color = if (isEnabled) 
                        MaterialTheme.colorScheme.onPrimaryContainer 
                    else 
                        MaterialTheme.colorScheme.onSurface
                )
                Text(
                    description,
                    style = MaterialTheme.typography.bodySmall,
                    color = if (isEnabled) 
                        MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.7f) 
                    else 
                        MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Switch(
                checked = isEnabled,
                onCheckedChange = { onToggle() }
            )
        }
    }
}
