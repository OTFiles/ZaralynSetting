# ParentManager-Update 应用使用数据发送与白名单机制分析报告

## 概述

本报告详细分析了 ParentManager-Update.apk 应用如何收集应用使用情况数据并将其发送到服务器，以及白名单机制的实现原理。

## 一、应用使用情况数据收集机制

### 1.1 权限申请

应用声明了以下关键权限以支持应用使用情况收集：

- `android.permission.PACKAGE_USAGE_STATS` - 获取应用使用统计数据的必要权限
- `android.permission.QUERY_ALL_PACKAGES` - 查询所有应用的权限

### 1.2 数据收集实现

#### 1.2.1 使用 UsageStatsManager 获取当前前台应用

在 `com.readboy.parentmanager.client.service.AppLockService` 类中实现了 `getTopActivity()` 方法：

```java
// 文件位置：smali/com/readboy/parentmanager/client/service/AppLockService.smali
// 行号：202-228

public String getTopActivity() {
    // 获取 UsageStatsManager 服务（仅限 Android 5.0+）
    UsageStatsManager usageStatsManager = (UsageStatsManager) getSystemService("usagestats");
    
    // 查询过去 10 秒的使用统计
    long currentTime = System.currentTimeMillis();
    long beginTime = currentTime - 10000; // 10秒前
    
    // 查询使用统计数据（INTERVAL_DAILY = 0）
    List<UsageStats> usageStatsList = usageStatsManager.queryUsageStats(
        0,  // intervalType
        beginTime,  // beginTime
        currentTime  // endTime
    );
    
    // 按最后使用时间排序，获取最近使用的应用
    TreeMap<Long, UsageStats> sortedMap = new TreeMap<>();
    for (UsageStats stats : usageStatsList) {
        sortedMap.put(stats.getLastTimeUsed(), stats);
    }
    
    // 返回最后使用的应用包名
    if (!sortedMap.isEmpty()) {
        return sortedMap.lastEntry().getValue().getPackageName();
    }
    return "";
}
```

**关键点**：
- 查询时间窗口为过去 10 秒
- 使用 `INTERVAL_DAILY` (0) 作为间隔类型
- 通过 `getLastTimeUsed()` 获取最后使用时间并排序
- 返回最近使用的应用包名

#### 1.2.2 应用使用记录服务

`com.readboy.parentmanager.client.service.RecordService` 负责记录应用使用情况：

- 监听应用启动和暂停事件
- 记录应用使用时间（开始时间和结束时间）
- 将记录存储到本地数据库

#### 1.2.3 数据存储

应用使用情况数据存储在以下三个数据库表中：

1. **app_record 表**（通过 `AppRecordHelper` 管理）
   - 存储每次应用使用的详细记录
   - 包含包名、开始时间、结束时间、应用类型等信息

2. **use_situation 表**（通过 `UseSituationHelper` 管理）
   - 按日期汇总应用使用总时长
   - 包含包名、同一天日期、总使用时长、最近使用时间等信息

3. **summary_time 表**（通过 `SummaryTimeHelper` 管理）
   - 按应用类型汇总使用时长
   - 包含应用类型、同一天日期、总使用时长等信息

## 二、数据上传机制

### 2.1 上传服务

`com.readboy.parentmanager.client.service.SyncDataService` 是负责将数据上传到服务器的核心服务。

### 2.2 上传触发方式

通过 Intent Action 触发上传：

1. **UPLOAD_TIME_USAGE** (`com.readboy.parentmanager.UPLOAD_TIME_USAGE`)
   - 消息 ID：`MSG_UPLOAD_TIME_USAGE = 0x14`
   - 上传时间使用统计数据

2. **UPLOAD_CURRENT_USAGE** (`com.readboy.parentmanager.UPLOAD_CURRENT_USAGE`)
   - 消息 ID：`MSG_UPLOAD_CURRENT_USAGE = 0x2e`
   - 上传当前应用使用情况

3. **UPLOAD_WHITELIST_FUNC** (`com.readboy.parentmanager.UPLOAD_WHITELIST_FUNC`)
   - 消息 ID：`MSG_UPLOAD_WHITELIST_FUNC = 0x46`
   - 上传白名单功能状态

### 2.3 服务器接口

应用将数据上传到以下服务器地址：

#### 2.3.1 时间使用情况上传

- **URL**: `http://parent-manage.readboy.com/api/v1/time/UploadTimeUsage`
- **响应类**: `UploadTimeUsAgeResponse`
- **数据内容**: `UsedTimeBean` 对象，包含应用使用时间统计信息
- **上传间隔**: 约 600 秒（0x927c0 毫秒）

实现代码位置：
```
smali/com/readboy/parentmanager/client/service/SyncDataService$SyncHandler.smali
行号：7081-7098
```

#### 2.3.2 当前使用情况上传

- **URL**: `http://parent-manage.readboy.com/api/v1/current_usage/upload`
- **响应类**: `UploadCurrentUsageResponse`
- **数据内容**: 当前应用使用情况（包括前台应用包名等）
- **上传间隔**: 约 600 秒（0x927c0 毫秒）

实现代码位置：
```
smali/com/readboy/parentmanager/client/service/SyncDataService$SyncHandler.smali
行号：3861-3871
```

#### 2.3.3 白名单功能上传

- **URL**: `http://parent-manage.readboy.com/api/v1/whitelist/uploadFunc`
- **响应类**: `UploadWhitelistFuncResponse`
- **数据内容**: 白名单应用列表和功能状态

实现代码位置：
```
smali/com/readboy/parentmanager/client/service/SyncDataService$SyncHandler.smali
行号：1610-1622
```

### 2.4 上传流程

1. 通过 Intent 触发上传操作
2. SyncDataService 接收 Intent 并创建 Message
3. 将 Message 发送到 SyncHandler
4. SyncHandler 处理消息，创建相应的 Response 对象
5. 使用 Volley 网络库发送 HTTP POST 请求
6. 服务器返回响应
7. 根据响应结果进行后续处理

## 三、白名单机制

### 3.1 白名单类型

应用实现了两种白名单机制：

#### 3.1.1 应用白名单（app_white_list 表）

**管理类**: `com.readboy.parentmanager.core.provider.helper.AppWhiteListHelper`

**数据库表结构**:
```sql
CREATE TABLE IF NOT EXISTS app_white_list(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    pack_name TEXT UNIQUE,
    app_name TEXT,
    icon TEXT,
    mode TEXT,
    jump_url TEXT
);
```

**字段说明**:
- `pack_name`: 应用包名（唯一索引）
- `app_name`: 应用名称
- `icon`: 应用图标
- `mode`: 模式
- `jump_url`: 跳转 URL

**主要功能**:
- `add(List<AppWhiteListInfo>)`: 批量添加白名单应用
- `query()`: 查询所有白名单应用
- `deleteAll()`: 清空白名单

实现代码位置：
```
smali/com/readboy/parentmanager/core/provider/helper/AppWhiteListHelper.smali
```

#### 3.1.2 小程序白名单（applet_list 表）

**管理类**: `com.readboy.parentmanager.core.provider/helper.AppletListHelper`

**数据库表结构**:
```sql
CREATE TABLE IF NOT EXISTS applet_list(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    applet_id varchar(100),
    applet_icon varchar(200),
    package_name varchar(100),
    applet_name varchar(100),
    applet_process_name varchar(100),
    task_id int,
    applet_state int,
    apply_status int,
    apply_time long
);
```

**字段说明**:
- `applet_id`: 小程序 ID
- `applet_icon`: 小程序图标
- `package_name`: 所属应用包名
- `applet_name`: 小程序名称
- `applet_process_name`: 小程序进程名
- `task_id`: 任务 ID
- `applet_state`: 小程序状态（1 表示白名单）
- `apply_status`: 申请状态
- `apply_time`: 申请时间

**关键方法**:
- `queryAppletWhiteListByPackName(String packageName)`: 根据包名查询小程序白名单
  - 查询条件：`package_name = ? and applet_state = ?`
  - `applet_state = 1` 表示在白名单中
- `add(AppletListInfo)`: 添加小程序
- `update(String appletId, String packageName, int appletState, int applyStatus)`: 更新小程序状态
- `delete(String appletId, String packageName)`: 删除小程序

实现代码位置：
```
smali/com/readboy/parentmanager/core/provider/helper/AppletListHelper.smali
```

### 3.2 白名单使用场景

#### 3.2.1 微信小程序白名单查询

在 `WxFragment` 和 `DdFragment` 中，使用白名单来判断小程序是否允许使用：

```java
// 查询白名单
List<AppletListInfo> whiteList = appletListHelper.queryAppletWhiteListByPackName(packageName);
```

#### 3.2.2 白名单管理界面

- **AppletWhiteListActivity**: 小程序白名单管理界面
- **AppletWhiteListAdapter**: 小程序白名单列表适配器

### 3.3 白名单数据上传

白名单数据通过 `UPLOAD_WHITELIST_FUNC` 动作上传到服务器：

- **上传频率**: 根据触发条件（可能包括白名单变更、定时上传等）
- **数据内容**: 包含白名单应用列表及其状态信息
- **服务器用途**: 服务器接收白名单数据后，可能用于：
  - 同步白名单到其他设备
  - 统计分析
  - 远程管理

## 四、数据流向总结

```
应用使用 → UsageStatsManager → RecordService → 本地数据库
                                              ↓
                                         SyncDataService
                                              ↓
                    ┌─────────────────────────┴─────────────────────────┐
                    ↓                         ↓                         ↓
        UPLOAD_TIME_USAGE         UPLOAD_CURRENT_USAGE      UPLOAD_WHITELIST_FUNC
                    ↓                         ↓                         ↓
        /api/v1/time/            /api/v1/current/          /api/v1/whitelist/
        UploadTimeUsage          usage/upload              uploadFunc
                    ↓                         ↓                         ↓
              parent-manage.readboy.com 服务器
```

## 五、关键发现

### 5.1 数据收集特点

1. **实时监控**: 通过查询过去 10 秒的使用统计，实现对前台应用的实时监控
2. **多维度记录**: 从应用记录、使用情况汇总、应用类型汇总三个维度存储数据
3. **自动上传**: 定时（约 600 秒）自动上传数据到服务器

### 5.2 白名单机制特点

1. **双重白名单**: 支持应用白名单和小程序白名单两种类型
2. **状态管理**: 通过 `applet_state` 字段标识白名单状态（1 表示在白名单）
3. **数据同步**: 白名单数据会上传到服务器，支持多设备同步

### 5.3 潜在风险

1. **隐私风险**: 应用持续监控并上传用户应用使用情况
2. **数据泄露**: 使用 HTTP 协议（非 HTTPS）上传数据，存在被窃听风险
3. **权限滥用**: 使用系统级权限获取应用使用统计数据

## 六、技术细节

### 6.1 关键类和方法

| 类名 | 文件路径 | 功能 |
|------|---------|------|
| AppLockService | smali/com/readboy/parentmanager/client/service/AppLockService.smali | 获取当前前台应用 |
| RecordService | smali/com/readboy/parentmanager/client/service/RecordService.smali | 记录应用使用情况 |
| SyncDataService | smali/com/readboy/parentmanager/client/service/SyncDataService.smali | 同步数据到服务器 |
| AppWhiteListHelper | smali/com/readboy/parentmanager/core/provider/helper/AppWhiteListHelper.smali | 管理应用白名单 |
| AppletListHelper | smali/com/readboy/parentmanager/core/provider/helper/AppletListHelper.smali | 管理小程序白名单 |

### 6.2 常量定义

| 常量名 | 值 | 说明 |
|--------|-----|------|
| MSG_UPLOAD_TIME_USAGE | 0x14 | 上传时间使用统计数据 |
| MSG_UPLOAD_CURRENT_USAGE | 0x2e | 上传当前使用情况 |
| MSG_UPLOAD_WHITELIST_FUNC | 0x46 | 上传白名单功能 |
| URL_UPLOAD_TIME_USAGE | /api/v1/time/UploadTimeUsage | 时间使用上传接口 |
| URL_UPLOAD_CURRENT_USAGE | /api/v1/current_usage/upload | 当前使用上传接口 |
| URL_UPLOAD_WHITELIST_FUNC | /api/v1/whitelist/uploadFunc | 白名单上传接口 |

## 七、结论

ParentManager-Update 应用通过使用 Android 的 UsageStatsManager API 收集应用使用情况数据，并将这些数据存储在本地数据库中。应用定期（约 600 秒）将数据上传到 `parent-manage.readboy.com` 服务器的三个不同接口。同时，应用实现了两种白名单机制（应用白名单和小程序白名单），白名单数据也会上传到服务器。

这种机制使得应用能够全面监控用户的应用使用情况，并将数据发送到服务器，存在明显的隐私风险。建议用户谨慎使用此类应用，并注意保护个人隐私。

---

**报告生成时间**: 2026-03-15  
**分析工具**: apktool 2.12.1  
**应用版本**: ParentManager-Update.apk  
**目标平台**: Android 11 (API 30)