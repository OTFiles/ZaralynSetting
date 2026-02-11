package com.zaralyn.settings.ui.screen.components

import android.content.Context
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.zaralyn.settings.viewmodel.MainViewModel

@Composable
fun SystemFunctionsScreen(viewModel: MainViewModel, context: Context) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            SectionTitle("系统功能")
        }
        
        item {
            FeatureCard(
                title = "USB 调试",
                description = "启用或禁用 USB 调试功能",
                icon = Icons.Default.Usb,
                isEnabled = viewModel.usbDebugEnabled.collectAsState().value,
                onToggle = { viewModel.toggleUsbDebug(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "开发者选项",
                description = "访问完整的开发者设置",
                icon = Icons.Default.Build,
                isEnabled = viewModel.developerOptionsEnabled.collectAsState().value,
                onToggle = { viewModel.toggleDeveloperOptions(context) }
            )
        }
        
        item {
            SectionTitle("数据服务")
        }
        
        item {
            FeatureCard(
                title = "数据上传",
                description = "上传设备统计数据到服务器",
                icon = Icons.Default.CloudUpload,
                isEnabled = viewModel.dataUploadEnabled.collectAsState().value,
                onToggle = { viewModel.toggleDataUpload(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "位置服务",
                description = "启用 GPS 位置追踪",
                icon = Icons.Default.LocationOn,
                isEnabled = viewModel.locationEnabled.collectAsState().value,
                onToggle = { viewModel.toggleLocation(context) }
            )
        }
        
        item {
            SectionTitle("系统控制")
        }
        
        item {
            FeatureCard(
                title = "设备重启",
                description = "重启设备",
                icon = Icons.Default.RestartAlt,
                isEnabled = false,
                onToggle = { viewModel.restartDevice(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "设备关机",
                description = "关闭设备",
                icon = Icons.Default.PowerSettingsNew,
                isEnabled = false,
                onToggle = { viewModel.shutdownDevice(context) }
            )
        }
    }
}

@Composable
fun AppManagementScreen(viewModel: MainViewModel, context: Context) {
    val customApkPath by viewModel.customApkPath.collectAsState()
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            SectionTitle("后台安装")
        }
        
        item {
            OutlinedTextField(
                value = customApkPath,
                onValueChange = { viewModel.updateCustomApkPath(it) },
                label = { Text("APK 路径") },
                placeholder = { Text("/sdcard/Download/app.apk") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = {
                    Icon(Icons.Default.FolderOpen, contentDescription = null)
                }
            )
        }
        
        item {
            Button(
                onClick = { viewModel.installCustomApk(context) },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary
                )
            ) {
                Icon(Icons.Default.InstallMobile, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text("安装自定义 APK")
            }
        }
        
        item {
            SectionTitle("应用控制")
        }
        
        item {
            FeatureCard(
                title = "暂停应用",
                description = "暂停指定应用运行",
                icon = Icons.Default.Pause,
                isEnabled = viewModel.pauseAppsEnabled.collectAsState().value,
                onToggle = { viewModel.togglePauseApps(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "启动应用",
                description = "启动指定应用",
                icon = Icons.Default.PlayArrow,
                isEnabled = viewModel.startAppsEnabled.collectAsState().value,
                onToggle = { viewModel.toggleStartApps(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "清除应用数据",
                description = "清除应用的所有数据",
                icon = Icons.Default.Delete,
                isEnabled = viewModel.clearDataEnabled.collectAsState().value,
                onToggle = { viewModel.toggleClearData(context) }
            )
        }
    }
}

@Composable
fun ParentControlScreen(viewModel: MainViewModel, context: Context) {
    val parentModeEnabled by viewModel.parentModeEnabled.collectAsState()
    val dreamModeEnabled by viewModel.dreamModeEnabled.collectAsState()
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            SectionTitle("模式切换")
        }
        
        item {
            FeatureCard(
                title = "家长模式",
                description = "切换到家长控制模式",
                icon = Icons.Default.Shield,
                isEnabled = parentModeEnabled,
                onToggle = { 
                    viewModel.toggleParentMode(context)
                    Toast.makeText(context, if (parentModeEnabled) "禁用家长模式" else "启用家长模式", Toast.LENGTH_SHORT).show()
                }
            )
        }
        
        item {
            FeatureCard(
                title = "Dream 模式",
                description = "切换到 Dream 学习模式",
                icon = Icons.Default.School,
                isEnabled = dreamModeEnabled,
                onToggle = { 
                    viewModel.toggleDreamMode(context)
                    Toast.makeText(context, if (dreamModeEnabled) "禁用 Dream 模式" else "启用 Dream 模式", Toast.LENGTH_SHORT).show()
                }
            )
        }
        
        item {
            SectionTitle("密码管理")
        }
        
        item {
            FeatureCard(
                title = "修改密码",
                description = "修改家长密码",
                icon = Icons.Default.Lock,
                isEnabled = false,
                onToggle = { viewModel.changePassword(context) }
            )
        }
        
        item {
            FeatureCard(
                title = "重置密码",
                description = "重置为默认密码",
                icon = Icons.Default.LockReset,
                isEnabled = false,
                onToggle = { viewModel.resetPassword(context) }
            )
        }
        
        item {
            SectionTitle("权限管理")
        }
        
        item {
            FeatureCard(
                title = "获取所有权限",
                description = "请求应用所有权限",
                icon = Icons.Default.AdminPanelSettings,
                isEnabled = viewModel.allPermissionsEnabled.collectAsState().value,
                onToggle = { viewModel.requestAllPermissions(context) }
            )
        }
    }
}

@Composable
fun AdvancedSettingsScreen(viewModel: MainViewModel, context: Context) {
    val customServerUrl by viewModel.customServerUrl.collectAsState()
    val customUploadData by viewModel.customUploadData.collectAsState()
    
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            SectionTitle("自定义设置")
        }
        
        item {
            OutlinedTextField(
                value = customServerUrl,
                onValueChange = { viewModel.updateCustomServerUrl(it) },
                label = { Text("服务器地址") },
                placeholder = { Text("http://your-server.com") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = {
                    Icon(Icons.Default.Storage, contentDescription = null)
                }
            )
        }
        
        item {
            OutlinedTextField(
                value = customUploadData,
                onValueChange = { viewModel.updateCustomUploadData(it) },
                label = { Text("上传数据") },
                placeholder = { Text("自定义上传内容") },
                modifier = Modifier.fillMaxWidth(),
                leadingIcon = {
                    Icon(Icons.Default.CloudUpload, contentDescription = null)
                },
                minLines = 3,
                maxLines = 5
            )
        }
        
        item {
            Button(
                onClick = { 
                    viewModel.uploadCustomData(context)
                    Toast.makeText(context, "已发送自定义数据", Toast.LENGTH_SHORT).show()
                },
                modifier = Modifier.fillMaxWidth(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary
                )
            ) {
                Icon(Icons.Default.Send, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text("发送自定义数据")
            }
        }
        
        item {
            SectionTitle("录音功能")
        }
        
        item {
            FeatureCard(
                title = "开始录音",
                description = "录制音频",
                icon = Icons.Default.Mic,
                isEnabled = viewModel.recordingEnabled.collectAsState().value,
                onToggle = { 
                    if (viewModel.recordingEnabled.collectAsState().value) {
                        viewModel.stopRecording(context)
                    } else {
                        viewModel.startRecording(context)
                    }
                }
            )
        }
        
        item {
            SectionTitle("调试信息")
        }
        
        item {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    Text(
                        "系统状态",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        "ADB 状态: ${if (viewModel.usbDebugEnabled.collectAsState().value) "已启用" else "已禁用"}",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        "家长模式: ${if (viewModel.parentModeEnabled.collectAsState().value) "已启用" else "已禁用"}",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        "录音状态: ${if (viewModel.recordingEnabled.collectAsState().value) "正在录音" else "未录音"}",
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
            }
        }
    }
}

@Composable
fun SectionTitle(title: String) {
    Text(
        title,
        style = MaterialTheme.typography.titleLarge,
        fontWeight = FontWeight.Bold,
        color = MaterialTheme.colorScheme.primary,
        modifier = Modifier.padding(vertical = 8.dp)
    )
}

@Composable
fun FeatureCard(
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
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
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
            
            Spacer(modifier = Modifier.width(16.dp))
            
            Column(
                modifier = Modifier.weight(1f)
            ) {
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
                onCheckedChange = { onToggle() },
                colors = SwitchDefaults.colors(
                    checkedThumbColor = MaterialTheme.colorScheme.primary,
                    checkedTrackColor = MaterialTheme.colorScheme.primaryContainer,
                    uncheckedThumbColor = MaterialTheme.colorScheme.outline,
                    uncheckedTrackColor = MaterialTheme.colorScheme.surfaceVariant
                )
            )
        }
    }
}