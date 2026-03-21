# ParentManager-Update底层API与干扰方案分析报告

## 执行时间
2026-02-26

## 分析目标
1. 分析与信息发送相关的底层API调用
2. 确定需要逆向的文件（/system目录下）
3. 评估对数据上传行为进行干扰的可能性，特别是应用启动检测信息

---

## 1. 应用启动检测机制

### 1.1 核心类：ProGetTask

**位置**：`/smali/com/readboy/parentmanager/client/utils/ProGetTask.smali`

**功能**：通过读取proc文件系统来检测前台应用

**检测原理**：

1. **读取进程列表**：
   ```java
   new File("/proc").listFiles()
   ```

2. **分析每个进程的cgroup信息**：
   ```java
   // 读取 /proc/[pid]/cgroup
   // 格式示例：
   // 2:cpuacct,cpu:/uid_10000/pid_12345
   // 1:cpu:/uid_10000/pid_12345
   ```

3. **读取进程命令行**：
   ```java
   // 读取 /proc/[pid]/cmdline
   // 过滤掉 com.android.systemui
   ```

4. **读取进程优先级**：
   ```java
   // 读取 /proc/[pid]/oom_score_adj
   // 读取 /proc/[pid]/oom_score
   // 前台进程的oom_score_adj通常为0
   ```

5. **确定前台应用**：
   - 选择oom_score最小的进程
   - 排除系统进程（uid < 10000）
   - 排除后台进程（cgroup包含"bg_non_interactive"）

**代码关键逻辑**：
```smali
# 读取 /proc/[pid]/cgroup
const-string v7, "/proc/%d/cgroup"
invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/readboy/parentmanager/client/utils/ProGetTask;->read(Ljava/lang/String;)Ljava/lang/String;

# 过滤条件
# 1. 不以进程ID结尾
# 2. 不包含 "bg_non_interactive"
# 3. 不是 com.android.systemui

# 读取 oom_score_adj
const-string v10, "/proc/%d/oom_score_adj"
invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/readboy/parentmanager/client/utils/ProGetTask;->read(Ljava/lang/String;)Ljava/lang/String;

# 选择 oom_score 最小的进程作为前台应用
if-ge v6, v5, :cond_9
move v5, v6  # v5 保存最小的 oom_score
move-object v4, v9  # v4 保存对应的前台应用包名
```

### 1.2 兼容性处理

**位置**：`/smali/com/readboy/parentmanager/client/service/RecordService$GetForegroundApp.smali`

**检测方式**：

1. **Android 5.0+ (LOLLIPOP)**：
   ```java
   if (SDK_INT >= 21) {
       return ProGetTask.getForegroundApp();
   }
   ```

2. **Android 4.4 (KITKAT)**：
   ```java
   ActivityManager am = (ActivityManager) getSystemService("activity");
   List<RunningTaskInfo> tasks = am.getRunningTasks(1);
   return tasks.get(0).topActivity.getPackageName();
   ```

---

## 2. 网络请求机制

### 2.1 网络框架

**使用的框架**：
1. **Volley** - 主要网络请求框架
2. **OkHttp3** - 底层HTTP客户端
3. **FastJSON** - JSON序列化/反序列化

**网络请求流程**：
```
应用层（SyncDataService）
    ↓
Volley框架（RequestQueue）
    ↓
OkHttp3（HttpURLConnection）
    ↓
系统网络层（socket、connect等）
    ↓
网络传输
```

### 2.2 关键类

| 类名 | 功能 |
|------|------|
| `BaseResponseBean` | 基础响应类 |
| `BaseRequestBean` | 基础请求类 |
| `OnlineResponseBean` | 在线响应类 |
| `UploadAppControlStatusResponse` | 应用状态上传响应 |
| `UploadAllAppResponse` | 所有应用上传响应 |

---

## 3. 需要逆向的系统文件

### 3.1 应用检测相关

由于该应用主要通过读取`/proc`文件系统来检测前台应用，需要逆向以下系统组件：

#### 3.1.1 核心文件

| 文件路径 | 用途 | 优先级 |
|---------|------|--------|
| `/system/framework/framework.jar` | Android核心框架，包含ActivityManager、PackageManager等 | P0 |
| `/system/framework/services.jar` | 系统服务实现 | P0 |
| `/system/lib/libc.so` | C标准库，系统调用 | P1 |
| `/system/lib64/libc.so` | 64位C标准库 | P1 |

#### 3.1.2 ActivityManagerService

**关键类**：
- `com.android.server.am.ActivityManagerService`
- `com.android.server.am.ActivityStackSupervisor`

**功能**：
- 管理应用的生命周期
- 提供getRunningTasks()等API
- 维护应用栈

**逆向目的**：
- 了解getRunningTasks()的实现
- 分析应用栈的管理机制
- 寻找可能的注入点

#### 3.1.3 UsageStatsService

**关键类**：
- `com.android.server.usage.UsageStatsService`

**功能**：
- 管理应用使用统计
- 提供queryUsageStats()等API
- 记录应用使用事件

**逆向目的**：
- 了解UsageStatsManager的实现
- 分析使用统计的收集机制
- 寻找可能的干扰点

### 3.2 网络相关

#### 3.2.1 核心文件

| 文件路径 | 用途 | 优先级 |
|---------|------|--------|
| `/system/lib/libnetd_client.so` | 网络守护进程客户端 | P1 |
| `/system/lib64/libnetd_client.so` | 64位网络守护进程客户端 | P1 |
| `/system/bin/netd` | 网络守护进程 | P1 |
| `/system/bin/iptables` | 防火墙规则 | P1 |

#### 3.2.2 网络框架实现

**需要关注的类**：
- `com.android.okhttp.OkHttpURLConnection`
- `com.android.volley.Network`
- `com.android.volley.toolbox.HurlStack`

**逆向目的**：
- 了解网络请求的底层实现
- 分析请求拦截的可能性
- 寻找请求修改的注入点

### 3.3 proc文件系统

#### 3.3.1 关键文件

| 文件路径 | 用途 | 优先级 |
|---------|------|--------|
| `/proc/[pid]/cgroup` | 进程cgroup信息 | P0 |
| `/proc/[pid]/cmdline` | 进程命令行 | P0 |
| `/proc/[pid]/oom_score_adj` | 进程OOM优先级调整值 | P0 |
| `/proc/[pid]/oom_score` | 进程OOM分数 | P0 |
| `/proc/[pid]/status` | 进程状态 | P1 |
| `/proc/[pid]/stat` | 进程统计信息 | P1 |

**逆向目的**：
- 了解proc文件系统的实现
- 分析文件内容的生成机制
- 寻找文件内容修改的可能性

---

## 4. 数据上传行为干扰方案

### 4.1 干扰方案概述

**目标**：阻止或修改ParentManager-Update应用的数据上传行为，特别是应用启动检测信息。

**可行性评估**：
- **高可行性**：Proc文件系统干扰、网络请求拦截
- **中可行性**：ActivityManager hook、UsageStatsManager hook
- **低可行性**：系统服务修改（需要root权限）

### 4.2 方案一：Proc文件系统干扰

#### 4.2.1 原理

ParentManager-Update通过读取`/proc/[pid]/cgroup`、`/proc/[pid]/cmdline`、`/proc/[pid]/oom_score_adj`等文件来检测前台应用。

通过修改这些文件的内容，可以欺骗检测机制。

#### 4.2.2 实现方式

**方式1：FUSE文件系统**

创建一个虚拟的proc文件系统，拦截对特定文件的读取请求：

```c
// 创建FUSE挂载点
mkdir -p /tmp/proc
mount -t fuse fuse /tmp/proc -o allow_other

// 拦截读取请求
static int proc_read(const char *path, char *buf, size_t size, off_t offset) {
    if (strstr(path, "/cgroup") != NULL) {
        // 返回伪造的cgroup信息
        strcpy(buf, "2:cpuacct,cpu:/uid_10000/pid_99999");
        return strlen(buf);
    }
    if (strstr(path, "/cmdline") != NULL) {
        // 返回伪造的命令行
        strcpy(buf, "com.fake.app");
        return strlen(buf);
    }
    if (strstr(path, "/oom_score_adj") != NULL) {
        // 返回伪造的OOM分数
        strcpy(buf, "0");
        return strlen(buf);
    }
    // 转发到真实的proc文件系统
    return real_proc_read(path, buf, size, offset);
}
```

**优点**：
- 无需root权限
- 可以精确控制返回的内容
- 不影响其他应用

**缺点**：
- 需要内核支持FUSE
- 实现复杂度高
- 性能开销较大

**方式2：LD_PRELOAD劫持**

使用LD_PRELOAD劫持read()系统调用：

```c
// preload.c
#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <dlfcn.h>

ssize_t read(int fd, void *buf, size_t count) {
    ssize_t (*real_read)(int, void *, size_t);
    ssize_t result;

    real_read = dlsym(RTLD_NEXT, "read");

    result = real_read(fd, buf, count);

    // 检查是否是proc文件读取
    char path[256];
    sprintf(path, "/proc/self/fd/%d", fd);
    char real_path[256];
    readlink(path, real_path, sizeof(real_path));

    if (strstr(real_path, "/cgroup") != NULL) {
        // 修改cgroup内容
        strcpy((char *)buf, "2:cpuacct,cpu:/uid_10000/pid_99999");
        result = strlen(buf);
    } else if (strstr(real_path, "/cmdline") != NULL) {
        // 修改cmdline内容
        strcpy((char *)buf, "com.fake.app");
        result = strlen(buf);
    } else if (strstr(real_path, "/oom_score_adj") != NULL) {
        // 修改oom_score_adj内容
        strcpy((char *)buf, "0");
        result = strlen(buf);
    }

    return result;
}

// 编译命令：
// gcc -shared -fPIC -o libpreload.so preload.c -ldl
// 使用方式：
// LD_PRELOAD=./libpreload.so /path/to/ParentManager-Update
```

**优点**：
- 实现相对简单
- 性能开销较小
- 可以劫持所有read()调用

**缺点**：
- 需要能够控制应用启动
- 可能影响其他应用的正常功能
- 需要root权限（在生产环境中）

**方式3：内核模块（需要root）**

创建内核模块，在proc文件系统层面拦截读取请求：

```c
// proc_hook.c
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>

// 原始的proc_read函数
static ssize_t (*original_proc_read)(struct file *, char __user *, size_t, loff_t *);

// Hook后的proc_read函数
static ssize_t hooked_proc_read(struct file *file, char __user *buf, size_t count, loff_t *ppos) {
    char *path = file->f_path.dentry->d_name.name;

    if (strcmp(path, "cgroup") == 0) {
        // 返回伪造的cgroup信息
        char fake_data[] = "2:cpuacct,cpu:/uid_10000/pid_99999\n";
        if (copy_to_user(buf, fake_data, sizeof(fake_data)) != 0) {
            return -EFAULT;
        }
        return sizeof(fake_data);
    } else if (strcmp(path, "cmdline") == 0) {
        // 返回伪造的cmdline信息
        char fake_data[] = "com.fake.app";
        if (copy_to_user(buf, fake_data, sizeof(fake_data)) != 0) {
            return -EFAULT;
        }
        return sizeof(fake_data);
    } else if (strcmp(path, "oom_score_adj") == 0) {
        // 返回伪造的oom_score_adj
        char fake_data[] = "0\n";
        if (copy_to_user(buf, fake_data, sizeof(fake_data)) != 0) {
            return -EFAULT;
        }
        return sizeof(fake_data);
    }

    // 调用原始函数
    return original_proc_read(file, buf, count, ppos);
}

// 模块初始化
static int __init proc_hook_init(void) {
    // Hook proc_read函数
    // 需要使用kprobes或ftrace实现
    return 0;
}

// 模块卸载
static void __exit proc_hook_exit(void) {
    // 恢复原始函数
}

module_init(proc_hook_init);
module_exit(proc_hook_exit);
```

**优点**：
- 完全控制proc文件系统
- 性能开销最小
- 可以拦截所有proc文件读取

**缺点**：
- 需要root权限
- 需要重新编译内核模块
- 可能导致系统不稳定

#### 4.2.3 干扰效果

通过修改proc文件内容，可以达到以下效果：

1. **隐藏真实应用**：
   - 将真实应用的包名替换为虚假包名
   - 让ParentManager-Update无法检测到真实的应用使用情况

2. **伪造应用使用**：
   - 创建虚假的应用使用记录
   - 让ParentManager-Upload认为用户在使用其他应用

3. **混淆使用时长**：
   - 修改应用启动和退出时间
   - 让使用时长统计失效

### 4.3 方案二：ActivityManager Hook

#### 4.3.1 原理

在Android 4.4上，ParentManager-Update使用`ActivityManager.getRunningTasks()`来检测前台应用。

通过Hook ActivityManager，可以拦截getRunningTasks()调用，返回伪造的任务列表。

#### 4.3.2 实现方式

**方式1：Xposed框架（需要root）**

使用Xposed框架Hook ActivityManager：

```java
public class HookActivityManager implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (!lpparam.packageName.equals("com.readboy.parentmanager")) {
            return;
        }

        // Hook ActivityManager.getRunningTasks()
        XposedHelpers.findAndHookMethod(
            "android.app.ActivityManager",
            lpparam.classLoader,
            "getRunningTasks",
            int.class,
            new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) {
                    // 创建伪造的任务列表
                    List<ActivityManager.RunningTaskInfo> fakeTasks = new ArrayList<>();

                    // 创建伪造的任务信息
                    ActivityManager.RunningTaskInfo fakeTask = new ActivityManager.RunningTaskInfo();
                    fakeTask.topActivity = new ComponentName("com.fake.app", "com.fake.app.MainActivity");
                    fakeTask.baseActivity = new ComponentName("com.fake.app", "com.fake.app.MainActivity");
                    fakeTask.numActivities = 1;
                    fakeTask.numRunning = 1;

                    fakeTasks.add(fakeTask);

                    // 返回伪造的任务列表
                    param.setResult(fakeTasks);
                }
            }
        );
    }
}
```

**优点**：
- 精确控制返回值
- 只影响特定应用
- 实现相对简单

**缺点**：
- 需要root权限
- 需要Xposed框架
- 可能被检测

**方式2：Frida动态Hook**

使用Frida动态Hook ActivityManager：

```javascript
// hook_activity_manager.js
Java.perform(function() {
    var ActivityManager = Java.use("android.app.ActivityManager");

    ActivityManager.getRunningTasks.implementation = function(maxNum) {
        // 调用原始函数
        var tasks = this.getRunningTasks(maxNum);

        // 创建伪造的任务列表
        var fakeTasks = Java.array("android.app.ActivityManager$RunningTaskInfo", []);

        var fakeTask = Java.use("android.app.ActivityManager$RunningTaskInfo").$new();
        var componentName = Java.use("android.content.ComponentName").$new("com.fake.app", "com.fake.app.MainActivity");
        fakeTask.topActivity.value = componentName;
        fakeTask.baseActivity.value = componentName;
        fakeTask.numActivities.value = 1;
        fakeTask.numRunning.value = 1;

        fakeTasks[0] = fakeTask;

        // 返回伪造的任务列表
        return fakeTasks;
    };
});

// 运行方式：
// frida -U -f com.readboy.parentmanager -l hook_activity_manager.js --no-pause
```

**优点**：
- 无需重新编译
- 可以动态加载和卸载
- 不需要root权限（在某些情况下）

**缺点**：
- 需要Frida支持
- 可能被检测
- 性能开销较大

#### 4.3.3 干扰效果

通过Hook ActivityManager，可以达到以下效果：

1. **隐藏真实应用**：
   - 返回虚假的任务列表
   - 让ParentManager-Update无法检测到真实的应用

2. **伪造应用使用**：
   - 返回虚假的应用信息
   - 让ParentManager-Update认为用户在使用其他应用

### 4.4 方案三：网络请求拦截

#### 4.4.1 原理

ParentManager-Update使用Volley+OkHttp3发送HTTP请求。

通过Hook网络请求，可以拦截、修改或丢弃这些请求。

#### 4.4.2 实现方式

**方式1：VPN服务拦截**

创建一个VPN服务，拦截所有网络流量：

```java
public class MyVpnService extends VpnService {
    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        // 创建VPN接口
        Builder builder = new Builder();
        builder.setSession("MyVPN");
        builder.addAddress("10.0.0.2", 32);
        builder.addRoute("0.0.0.0", 0);

        ParcelFileDescriptor vpnInterface = builder.establish();

        // 创建读取和写入流
        FileInputStream in = new FileInputStream(vpnInterface.getFileDescriptor());
        FileOutputStream out = new FileOutputStream(vpnInterface.getFileDescriptor());

        // 读取和转发网络包
        byte[] buffer = new byte[4096];
        while (true) {
            int length = in.read(buffer);
            if (length > 0) {
                // 解析网络包
                // 检查是否是到 parent-manage.readboy.com 的请求
                if (isTargetRequest(buffer, length)) {
                    // 丢弃或修改请求
                    continue;
                }
                // 转发其他请求
                out.write(buffer, 0, length);
            }
        }
    }

    private boolean isTargetRequest(byte[] buffer, int length) {
        // 检查目标IP或域名
        // 如果是到 parent-manage.readboy.com 的请求，返回true
        return false;
    }
}
```

**优点**：
- 无需root权限
- 可以精确控制网络流量
- 不影响其他应用

**缺点**：
- 实现复杂度高
- 性能开销较大
- 需要用户授权

**方式2：Frida Hook OkHttp**

使用Frida Hook OkHttp3的请求发送：

```javascript
// hook_okhttp.js
Java.perform(function() {
    // Hook OkHttp3的execute方法
    var OkHttpClient = Java.use("okhttp3.OkHttpClient");
    var Call = Java.use("okhttp3.Call");

    Call.execute.implementation = function() {
        // 获取请求对象
        var request = this.request();

        // 获取请求URL
        var url = request.url().toString();

        // 检查是否是目标URL
        if (url.indexOf("parent-manage.readboy.com") !== -1) {
            console.log("拦截到目标请求: " + url);

            // 丢弃请求
            var ResponseClass = Java.use("okhttp3.Response");
            var ResponseBodyClass = Java.use("okhttp3.ResponseBody");
            var MediaTypeClass = Java.use("okhttp3.MediaType");

            // 创建伪造的响应
            var mediaType = MediaTypeClass.parse("application/json; charset=utf-8");
            var fakeBody = ResponseBodyClass.create(mediaType, '{"status":1}');
            var fakeResponse = ResponseClass.Builder.$new()
                .request(request)
                .code(200)
                .body(fakeBody)
                .build();

            return fakeResponse;
        }

        // 转发其他请求
        return this.execute();
    };
});

// 运行方式：
// frida -U -f com.readboy.parentmanager -l hook_okhttp.js --no-pause
```

**优点**：
- 精确控制网络请求
- 可以修改请求和响应
- 不需要root权限（在某些情况下）

**缺点**：
- 需要Frida支持
- 可能被检测
- 性能开销较大

**方式3：iptables规则（需要root）**

使用iptables规则阻止到特定域名的请求：

```bash
# 阻止到 parent-manage.readboy.com 的所有连接
iptables -A OUTPUT -d parent-manage.readboy.com -j REJECT

# 阻止到该域名的DNS查询
iptables -A OUTPUT -p udp --dport 53 -d parent-manage.readboy.com -j REJECT

# 阻止到该域名的HTTP连接
iptables -A OUTPUT -p tcp --dport 80 -d parent-manage.readboy.com -j REJECT

# 阻止到该域名的HTTPS连接
iptables -A OUTPUT -p tcp --dport 443 -d parent-manage.readboy.com -j REJECT
```

**优点**：
- 实现简单
- 性能开销最小
- 完全阻止连接

**缺点**：
- 需要root权限
- 可能影响其他应用
- 需要每次重启后重新配置

#### 4.4.3 干扰效果

通过拦截网络请求，可以达到以下效果：

1. **阻止数据上传**：
   - 丢弃所有到服务器的请求
   - 让数据无法上传

2. **修改上传数据**：
   - 修改请求的内容
   - 发送虚假的数据

3. **伪造服务器响应**：
   - 返回伪造的成功响应
   - 让应用认为上传成功

### 4.5 方案四：系统服务Hook

#### 4.5.1 原理

ParentManager-Update可能使用UsageStatsManager来获取应用使用统计。

通过Hook UsageStatsService，可以拦截这些查询。

#### 4.5.2 实现方式

**方式1：Xposed Hook UsageStatsManager**

```java
public class HookUsageStatsManager implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (!lpparam.packageName.equals("com.readboy.parentmanager")) {
            return;
        }

        // Hook UsageStatsManager.queryUsageStats()
        XposedHelpers.findAndHookMethod(
            "android.app.usage.UsageStatsManager",
            lpparam.classLoader,
            "queryUsageStats",
            int.class,
            long.class,
            long.class,
            new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) {
                    // 返回空的使用统计列表
                    param.setResult(Collections.emptyList());
                }
            }
        );

        // Hook UsageStatsManager.queryEvents()
        XposedHelpers.findAndHookMethod(
            "android.app.usage.UsageStatsManager",
            lpparam.classLoader,
            "queryEvents",
            long.class,
            long.class,
            new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) {
                    // 返回空的UsageEvents
                    UsageEvents fakeEvents = new UsageEvents(null, null);
                    param.setResult(fakeEvents);
                }
            }
        );
    }
}
```

**方式2：Frida Hook UsageStatsManager**

```javascript
// hook_usage_stats.js
Java.perform(function() {
    var UsageStatsManager = Java.use("android.app.usage.UsageStatsManager");

    UsageStatsManager.queryUsageStats.implementation = function(intervalType, beginTime, endTime) {
        // 返回空的统计列表
        var ArrayList = Java.use("java.util.ArrayList");
        var fakeStats = ArrayList.$new();
        return fakeStats;
    };

    UsageStatsManager.queryEvents.implementation = function(beginTime, endTime) {
        // 返回空的UsageEvents
        var UsageEvents = Java.use("android.app.usage.UsageEvents");
        var fakeEvents = UsageEvents.$new(null, null);
        return fakeEvents;
    };
});

// 运行方式：
// frida -U -f com.readboy.parentmanager -l hook_usage_stats.js --no-pause
```

#### 4.5.3 干扰效果

通过Hook UsageStatsManager，可以达到以下效果：

1. **清除使用记录**：
   - 返回空的统计列表
   - 让ParentManager-Update无法获取应用使用记录

2. **伪造使用记录**：
   - 返回虚假的统计列表
   - 让ParentManager-Update获取错误的使用记录

### 4.6 方案对比

| 方案 | 需要root | 实现难度 | 检测难度 | 干扰效果 | 推荐度 |
|------|---------|---------|---------|---------|--------|
| Proc文件系统干扰 | 否（FUSE）/ 是（内核模块） | 高 | 低 | 高 | ★★★★☆ |
| ActivityManager Hook | 是 | 中 | 中 | 中 | ★★★☆☆ |
| 网络请求拦截 | 否（VPN/Frida）/ 是（iptables） | 中 | 中 | 高 | ★★★★★ |
| 系统服务Hook | 是 | 中 | 中 | 中 | ★★★☆☆ |

---

## 5. 综合干扰方案

### 5.1 推荐方案

基于可行性、效果和实现难度，推荐以下综合方案：

#### 5.1.1 无root方案（Frida + VPN）

1. **使用Frida Hook应用检测**：
   - Hook ProGetTask.getForegroundApp()
   - 返回虚假的前台应用包名

2. **使用Frida Hook网络请求**：
   - Hook OkHttp3的execute方法
   - 丢弃到服务器的请求

3. **创建VPN服务**：
   - 拦截所有网络流量
   - 丢弃到特定域名的请求

#### 5.1.2 有root方案（Xposed + iptables）

1. **使用Xposed Hook应用检测**：
   - Hook ActivityManager.getRunningTasks()
   - Hook UsageStatsManager.queryUsageStats()
   - 返回虚假的应用信息

2. **使用iptables阻止网络请求**：
   - 阻止到 parent-manage.readboy.com 的所有连接
   - 阻止到阿里云日志服务的连接

3. **修改hosts文件**：
   ```
   # /etc/hosts
   127.0.0.1 parent-manage.readboy.com
   127.0.0.1 parentadmin.readboy.com
   127.0.0.1 log.aliyuncs.com
   ```

### 5.2 实现步骤

#### 5.2.1 无root方案实现步骤

1. **安装Frida**：
   ```bash
   # 在设备上安装frida-server
   adb push frida-server /data/local/tmp/
   adb shell chmod 755 /data/local/tmp/frida-server
   adb shell /data/local/tmp/frida-server &
   ```

2. **编写Hook脚本**：
   - 创建 hook_progettask.js：Hook ProGetTask.getForegroundApp()
   - 创建 hook_okhttp.js：Hook OkHttp3的execute方法

3. **运行Hook脚本**：
   ```bash
   frida -U -f com.readboy.parentmanager -l hook_progettask.js --no-pause
   frida -U -f com.readboy.parentmanager -l hook_okhttp.js --no-pause
   ```

4. **创建VPN服务**：
   - 开发Android VPN应用
   - 实现网络包拦截逻辑
   - 部署到设备

#### 5.2.2 有root方案实现步骤

1. **安装Xposed框架**：
   - 刷入Xposed框架
   - 安装Xposed Installer
   - 重启设备

2. **开发Xposed模块**：
   - 创建Xposed模块项目
   - 实现Hook逻辑
   - 安装并激活模块

3. **配置iptables规则**：
   ```bash
   # 阻止目标域名
   iptables -A OUTPUT -d parent-manage.readboy.com -j REJECT
   iptables -A OUTPUT -d parentadmin.readboy.com -j REJECT
   iptables -A OUTPUT -d log.aliyuncs.com -j REJECT

   # 保存规则
   iptables-save > /etc/iptables.rules

   # 设置开机自动加载
   echo "iptables-restore < /etc/iptables.rules" >> /etc/rc.local
   ```

4. **修改hosts文件**：
   ```bash
   # 编辑 /etc/hosts
   echo "127.0.0.1 parent-manage.readboy.com" >> /etc/hosts
   echo "127.0.0.1 parentadmin.readboy.com" >> /etc/hosts
   echo "127.0.0.1 log.aliyuncs.com" >> /etc/hosts
   ```

### 5.3 验证方法

#### 5.3.1 应用检测验证

1. **启动应用**：
   - 启动ParentManager-Update
   - 启动目标应用（如微信）

2. **查看日志**：
   ```bash
   adb logcat | grep -i "parentmanager"
   ```

3. **验证结果**：
   - 检查ParentManager-Update是否检测到正确的应用
   - 检查是否上传了正确的应用使用记录

#### 5.3.2 网络请求验证

1. **捕获网络流量**：
   ```bash
   # 使用tcpdump捕获流量
   tcpdump -i any -w capture.pcap

   # 或使用Charles Proxy/Fiddler抓包
   ```

2. **验证结果**：
   - 检查是否有到目标域名的请求
   - 检查请求是否被阻止或修改

---

## 6. 风险评估

### 6.1 技术风险

| 风险 | 描述 | 缓解措施 |
|------|------|---------|
| Hook被检测 | 应用可能检测到Hook的存在 | 使用更隐蔽的Hook技术 |
| Hook不稳定 | Hook可能导致应用崩溃 | 完善异常处理 |
| 性能影响 | Hook可能影响应用性能 | 优化Hook代码 |
| 兼容性问题 | 不同Android版本可能不同 | 针对不同版本实现不同的Hook |

### 6.2 法律风险

| 风险 | 描述 | 建议 |
|------|------|------|
| 侵犯隐私 | 干扰数据收集可能侵犯用户隐私 | 仅在用户授权下进行 |
| 违反用户协议 | 可能违反应用的用户协议 | 仔细阅读用户协议 |
| 逆向工程 | 逆向工程可能违反软件许可 | 仅用于安全研究目的 |

### 6.3 使用风险

| 风险 | 描述 | 缓解措施 |
|------|------|---------|
| 系统不稳定 | Hook可能导致系统不稳定 | 充分测试后再使用 |
| 数据丢失 | 干扰可能导致数据丢失 | 备份重要数据 |
| 设备变砖 | 修改系统可能导致设备变砖 | 在测试设备上验证 |

---

## 7. 总结

### 7.1 关键发现

1. **应用检测机制**：
   - 主要通过读取`/proc`文件系统来检测前台应用
   - 使用`ActivityManager.getRunningTasks()`作为备用方案（Android 4.4）
   - 可能使用`UsageStatsManager`（Android 5.0+）

2. **网络请求机制**：
   - 使用Volley+OkHttp3发送HTTP请求
   - 服务器域名：`parent-manage.readboy.com`（HTTP）
   - 使用阿里云日志SDK发送数据

3. **干扰可行性**：
   - **高可行性**：Proc文件系统干扰、网络请求拦截
   - **中可行性**：ActivityManager hook、UsageStatsManager hook
   - **低可行性**：系统服务修改（需要root权限）

### 7.2 推荐方案

**无root方案**：
- 使用Frida Hook ProGetTask.getForegroundApp()
- 使用Frida Hook OkHttp3的execute方法
- 创建VPN服务拦截网络流量

**有root方案**：
- 使用Xposed Hook ActivityManager和UsageStatsManager
- 配置iptables规则阻止网络请求
- 修改hosts文件

### 7.3 需要逆向的系统文件

| 文件路径 | 用途 | 优先级 |
|---------|------|--------|
| `/system/framework/framework.jar` | Android核心框架 | P0 |
| `/system/framework/services.jar` | 系统服务实现 | P0 |
| `/system/lib/libc.so` | C标准库 | P1 |
| `/system/lib64/libc.so` | 64位C标准库 | P1 |
| `/system/lib/libnetd_client.so` | 网络守护进程客户端 | P1 |
| `/system/lib64/libnetd_client.so` | 64位网络守护进程客户端 | P1 |

### 7.4 下一步建议

1. **获取系统文件**：
   - 从设备提取`/system/framework/framework.jar`
   - 从设备提取`/system/framework/services.jar`
   - 分析这些文件中的关键类和方法

2. **开发干扰工具**：
   - 开发Frida Hook脚本
   - 开发Xposed模块
   - 开发VPN服务

3. **测试验证**：
   - 在测试设备上验证干扰效果
   - 评估性能影响
   - 检查是否被检测

4. **完善文档**：
   - 记录详细的实现步骤
   - 提供完整的代码示例
   - 编写用户使用手册

---

## 8. 附录

### 8.1 关键代码位置

| 功能 | 文件路径 | 行号 |
|------|---------|------|
| ProGetTask.getForegroundApp() | `/smali/com/readboy/parentmanager/client/utils/ProGetTask.smali` | 20-100 |
| RecordService$GetForegroundApp | `/smali/com/readboy/parentmanager/client/service/RecordService$GetForegroundApp.smali` | 3469-3525 |
| UploadAppControlStatusResponse | `/smali/com/readboy/parentmanager/core/http/volley/response/UploadAppControlStatusResponse.smali` | 1-375 |
| UploadInfoBean.getProperties() | `/smali/com/readboy/parentmanager/client/info/UploadInfoBean.smali` | 55-148 |

### 8.2 Proc文件系统说明

| 文件 | 内容 | 用途 |
|------|------|------|
| `/proc/[pid]/cgroup` | 进程的cgroup信息 | 确定进程的cgroup和uid |
| `/proc/[pid]/cmdline` | 进程的命令行 | 确定进程的应用包名 |
| `/proc/[pid]/oom_score_adj` | 进程的OOM优先级调整值 | 确定进程的优先级 |
| `/proc/[pid]/oom_score` | 进程的OOM分数 | 确定进程的优先级 |

### 8.3 网络请求端点

| 端点 | 功能 | 协议 |
|------|------|------|
| `http://parent-manage.readboy.com/api/v1/device_status/upload` | 上传设备状态 | HTTP |
| `http://parent-manage.readboy.com/api/v1/heart_beat` | 心跳 | HTTP |
| `http://parent-manage.readboy.com/api/v1/app_control/upload_status` | 上传应用状态 | HTTP |
| `https://parentadmin.readboy.com` | 主服务器 | HTTPS |

### 8.4 参考资料

1. **Android文档**：
   - ActivityManager: https://developer.android.com/reference/android/app/ActivityManager
   - UsageStatsManager: https://developer.android.com/reference/android/app/usage/UsageStatsManager
   - proc文件系统: https://www.kernel.org/doc/Documentation/filesystems/proc.txt

2. **Hook框架**：
   - Xposed: https://github.com/rovo89/Xposed
   - Frida: https://frida.re/
   - FUSE: https://github.com/libfuse/libfuse

3. **网络工具**：
   - tcpdump: https://www.tcpdump.org/
   - Charles Proxy: https://www.charlesproxy.com/
   - Fiddler: https://www.telerik.com/fiddler

---

**报告完成时间**：2026-02-26

**分析工具**：
- Apktool 2.12.1
- Smali代码分析
- 静态代码审查

**下一步建议**：
1. 获取并分析`/system/framework/framework.jar`
2. 获取并分析`/system/framework/services.jar`
3. 开发Frida Hook脚本
4. 开发Xposed模块
5. 测试干扰效果