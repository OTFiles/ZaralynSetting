import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
package com.readboy.zaralyn.settings.ui.screen.components

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.readboy.zaralyn.settings.viewmodel.MainViewModel
import android.content.Context

@Composable
fun PasswordExtractionScreen(viewModel: MainViewModel) {
    val context = LocalContext.current
    val passwordExists by viewModel.passwordExists.collectAsState()
    val plainPassword by viewModel.plainPassword.collectAsState()
    val bypassResult by viewModel.bypassResult.collectAsState()
    
    var showPasswordDialog by remember { mutableStateOf(false) }
    var showBypassDialog by remember { mutableStateOf(false) }
    var showPlainDialog by remember { mutableStateOf(false) }
    
    LazyColumn(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            SectionTitle("密码获取工具")
        }
        
        item {
            SectionDescription(
                "利用 ValidatePassword 组件的安全漏洞获取密码信息"
            )
        }
        
        item {
            Divider(color = MaterialTheme.colorScheme.outlineVariant)
        }
        
        item {
            SectionTitle("漏洞 1: 密码存在性检查")
        }
        
        item {
            VulnerabilityCard(
                title = "判断密码是否存在",
                description = "通过 JUDGE_PASSWORD_EXISTS Action 查询家长模式密码是否已设置",
                severity = "HIGH",
                cvss = "7.5",
                icon = Icons.Default.Lock
            ) {
                viewModel.checkPasswordExists(context)
            }
        }
        
        item {
            if (passwordExists.isNotEmpty()) {
                ResultCard(
                    title = "检查结果",
                    content = passwordExists
                )
            }
        }
        
        item {
            Divider(color = MaterialTheme.colorScheme.outlineVariant)
        }
        
        item {
            SectionTitle("漏洞 2: 密码验证绕过")
        }
        
        item {
            VulnerabilityCard(
                title = "尝试绕过密码验证",
                description = "通过 INPUT_PASSWORD Action 和特定参数尝试绕过密码验证",
                severity = "CRITICAL",
                cvss = "9.1",
                icon = Icons.Default.Security
            ) {
                viewModel.attemptBypass(context)
            }
        }
        
        item {
            if (bypassResult.isNotEmpty()) {
                ResultCard(
                    title = "绕过结果",
                    content = bypassResult
                )
            }
        }
        
        item {
            Divider(color = MaterialTheme.colorScheme.outlineVariant)
        }
        
        item {
            SectionTitle("漏洞 3: 明文密码提取")
        }
        
        item {
            VulnerabilityCard(
                title = "提取明文密码",
                description = "直接从 AppContentProvider 数据库读取明文密码",
                severity = "HIGH",
                cvss = "7.5",
                icon = Icons.Default.Visibility
            ) {
                viewModel.extractPlainPassword(context)
            }
        }
        
        item {
            if (plainPassword.isNotEmpty()) {
                ResultCard(
                    title = "密码数据",
                    content = plainPassword
                )
            }
        }
        
        item {
            Spacer(modifier = Modifier.height(32.dp))
        }
        
        item {
            SecurityWarning()
        }
    }
}

@Composable
fun SectionTitle(text: String) {
    Text(
        text = text,
        fontSize = 20.sp,
        fontWeight = FontWeight.Bold,
        color = MaterialTheme.colorScheme.primary,
        modifier = Modifier.padding(vertical = 8.dp)
    )
}

@Composable
fun SectionDescription(text: String) {
    Text(
        text = text,
        fontSize = 14.sp,
        color = MaterialTheme.colorScheme.onSurfaceVariant,
        modifier = Modifier.padding(bottom = 8.dp)
    )
}

@Composable
fun VulnerabilityCard(
    title: String,
    description: String,
    severity: String,
    cvss: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit
) {
    val severityColor = when (severity) {
        "CRITICAL" -> Color(0xFFD32F2F)
        "HIGH" -> Color(0xFFF57C00)
        "MEDIUM" -> Color(0xFFFFA000)
        else -> Color(0xFF1976D2)
    }
    
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = severityColor,
                    modifier = Modifier.size(32.dp)
                )
                
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = title,
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                    
                    Text(
                        text = description,
                        fontSize = 13.sp,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        modifier = Modifier.padding(top = 4.dp)
                    )
                }
            }
            
            Row(
                modifier = Modifier.padding(top = 12.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                AssistChip(
                    onClick = {},
                    label = { Text(severity, fontSize = 11.sp) },
                    colors = AssistChipDefaults.assistChipColors(
                        containerColor = severityColor.copy(alpha = 0.1f),
                        labelColor = severityColor
                    )
                )
                
                AssistChip(
                    onClick = {},
                    label = { Text("CVSS: $cvss", fontSize = 11.sp) },
                    colors = AssistChipDefaults.assistChipColors(
                        containerColor = MaterialTheme.colorScheme.secondaryContainer,
                        labelColor = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                )
            }
            
            Button(
                onClick = onClick,
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(top = 12.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary
                )
            ) {
                Icon(Icons.Default.ExpandMore, null)
                Spacer(modifier = Modifier.width(8.dp))
                Text("执行")
            }
        }
    }
}

@Composable
fun ResultCard(
    title: String,
    content: String
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.secondaryContainer
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            Text(
                text = title,
                fontSize = 14.sp,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.onSecondaryContainer
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = content,
                fontSize = 12.sp,
                color = MaterialTheme.colorScheme.onSecondaryContainer,
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .verticalScroll(rememberScrollState())
                    .padding(8.dp)
            )
        }
    }
}

@Composable
fun SecurityWarning() {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(
            containerColor = Color(0xFFFFEBEE)
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Warning,
                    contentDescription = null,
                    tint = Color(0xFFD32F2F)
                )
                
                Text(
                    text = "安全警告",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    color = Color(0xFFD32F2F)
                )
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = "本工具仅用于安全研究和教育目的。利用这些漏洞可能违反设备使用条款，请确保您有合法授权。",
                fontSize = 13.sp,
                color = Color(0xFFB71C1C),
                textAlign = TextAlign.Justify
            )
        }
    }
}
