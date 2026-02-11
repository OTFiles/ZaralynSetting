package com.readboy.zaralyn.settings.ui.screen

import android.content.Context
import android.widget.Toast
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.TextButton
import androidx.lifecycle.viewmodel.compose.viewModel
import com.readboy.zaralyn.settings.ui.screen.components.*
import com.readboy.zaralyn.settings.viewmodel.MainViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(viewModel: MainViewModel = viewModel()) {
    val context = LocalContext.current
    val selectedTab by viewModel.selectedTab.collectAsState()
    val showCustomServerDialog by viewModel.showCustomServerDialog.collectAsState()
    var customUrl by remember { mutableStateOf("") }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text("Zaralyn 设置", style = MaterialTheme.typography.headlineMedium)
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer,
                    titleContentColor = MaterialTheme.colorScheme.onPrimaryContainer
                ),
                actions = {
                    IconButton(onClick = { 
                        Toast.makeText(context, "系统信息", Toast.LENGTH_SHORT).show()
                    }) {
                        Icon(Icons.Default.Info, contentDescription = "系统信息")
                    }
                }
            )
        },
        bottomBar = {
            NavigationBar {
                NavigationBarItem(
                    selected = selectedTab == 0,
                    onClick = { viewModel.selectTab(0) },
                    icon = { Icon(Icons.Default.Settings, contentDescription = null) },
                    label = { Text("系统设置") }
                )
                NavigationBarItem(
                    selected = selectedTab == 1,
                    onClick = { viewModel.selectTab(1) },
                    icon = { Icon(Icons.Default.Apps, contentDescription = null) },
                    label = { Text("应用管理") }
                )
                NavigationBarItem(
                    selected = selectedTab == 2,
                    onClick = { viewModel.selectTab(2) },
                    icon = { Icon(Icons.Default.Shield, contentDescription = null) },
                    label = { Text("家长控制") }
                )
                NavigationBarItem(
                    selected = selectedTab == 3,
                    onClick = { viewModel.selectTab(3) },
                    icon = { Icon(Icons.Default.CloudUpload, contentDescription = null) },
                    label = { Text("数据服务") },
                    modifier = Modifier.combinedClickable(
                        onClick = { viewModel.selectTab(3) },
                        onLongClick = { viewModel.showCustomServerDialog() }
                    )
                )
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            when (selectedTab) {
                0 -> SystemSettingsScreen(viewModel, context)
                1 -> AppManagementScreen(viewModel, context)
                2 -> ParentControlScreen(viewModel, context)
                3 -> DataServiceScreen(viewModel, context)
            }
        }
    }
    
    // 自定义服务器对话框（长按菜单按钮触发）
    if (showCustomServerDialog) {
        AlertDialog(
            onDismissRequest = { viewModel.hideCustomServerDialog() },
            title = { Text("添加自定义服务器") },
            text = {
                OutlinedTextField(
                    value = customUrl,
                    onValueChange = { customUrl = it },
                    label = { Text("服务器 URL") },
                    placeholder = { Text("http://custom-server.com/api" ) },
                    singleLine = true
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        if (customUrl.isNotEmpty()) {
                            viewModel.selectApiServer(customUrl)
                            viewModel.hideCustomServerDialog()
                            customUrl = ""
                            Toast.makeText(context, "已添加自定义服务器", Toast.LENGTH_SHORT).show()
                        }
                    }
                ) {
                    Text("添加")
                }
            },
            dismissButton = {
                TextButton(onClick = { 
                    viewModel.hideCustomServerDialog()
                    customUrl = ""
                }) {
                    Text("取消")
                }
            }
        )
    }
}
