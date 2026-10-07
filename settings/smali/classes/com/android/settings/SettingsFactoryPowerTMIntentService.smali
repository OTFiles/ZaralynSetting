.class public Lcom/android/settings/SettingsFactoryPowerTMIntentService;
.super Landroid/app/Service;
.source "SettingsFactoryPowerTMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;
    }
.end annotation


# instance fields
.field private mFactoryInnerCount:I

.field private mFactoryPTM_TimeOut:I

.field private mIsChargingStatus:Z

.field private mIsFactoryInnerFlag:Z

.field private mIsFactoryPTMOver:Z

.field private mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

.field public mRunnableCheckWifi:Ljava/lang/Runnable;

.field public onHandleIntentEventCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryInnerFlag:Z

    .line 36
    iput v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryInnerCount:I

    .line 38
    iput v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryPTM_TimeOut:I

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsChargingStatus:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryPTMOver:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 140
    new-instance v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;-><init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    .line 270
    new-instance v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService$2;-><init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryPTMOver:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryPTMOver:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsChargingStatus:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsChargingStatus:Z

    return p1
.end method

.method static synthetic access$208(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    iget v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryPTM_TimeOut:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryPTM_TimeOut:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryInnerFlag:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    iget v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryInnerCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->stopFactoryTestModeIntentService()V

    return-void
.end method

.method public static startFactoryPowerTMIntentService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_start_factory_power_tm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_device_boot_times"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.action.readboy_factory_power_test_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 60
    const-string v1, ""

    const-string v2, "====divhee=========startFactoryTestModeIntentService========true="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0
    goto :goto_0

    .line 62
    :cond_0
    const-string v0, ""

    const-string v1, "====divhee=========startFactoryTestModeIntentService========false="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method

.method private stopFactoryTestModeIntentService()V
    .locals 2

    .line 197
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 205
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->stopSelf()V

    .line 207
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 206
    :catch_2
    move-exception v0

    .line 209
    :goto_2
    return-void
.end method


# virtual methods
.method public getWifiHotSsidInfo(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_start_factory_power_tm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "first_time_start_factory_power_tm"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 292
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 293
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 295
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 297
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v3

    .line 298
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 300
    nop

    .local v2, "inum":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 301
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 302
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 303
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "ssidName":Ljava/lang/String;
    const-string v6, "readboy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    iput-boolean v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryInnerFlag:Z

    .line 306
    iget-boolean v6, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsChargingStatus:Z

    if-eqz v6, :cond_3

    const-string v6, "readboy-factory-battery-test1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 308
    iget-boolean v6, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryPTMOver:Z

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v6, :cond_2

    .line 310
    :try_start_3
    invoke-static {p1}, Lcom/android/settings/SettingsActivity;->guideExitResetSystemFlags(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "first_time_start_factory_auto_retry_times"

    const/16 v8, 0x18

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v6, "intent1":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.dream.agingtest"

    const-string v9, "com.dream.agingtest.MainActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    const-string v7, "callme"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v7, "auto_run"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "first_time_start_factory_power_tm"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    .end local v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 322
    :catch_1
    move-exception v6

    .line 323
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    .end local v6
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryPTMOver:Z

    .line 330
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v6, 0x0

    :try_start_5
    iget-object v7, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    if-eqz v7, :cond_1

    .line 331
    iget-object v7, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    iput-object v6, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 337
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    goto :goto_3

    .line 334
    :catch_2
    move-exception v7

    .line 335
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    iput-object v6, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 340
    .end local v7
    :cond_2
    :goto_3
    const-string v6, ""

    const-string v7, "======divhee==========readboy-factory-battery-test1====="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v4
    .end local v5
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 346
    .end local v2
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryInnerFlag:Z

    if-nez v2, :cond_5

    .line 347
    iget v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryInnerCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryInnerCount:I

    .line 353
    .end local v0
    .end local v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    goto :goto_4

    .line 351
    :catch_3
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .end local v0
    :goto_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;-><init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "itfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v0
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startFactoryTestModeIntentService========onCreate="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 97
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iput-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mPowerNetCnnReceiver:Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;

    .line 98
    .end local v1
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startFactoryTestModeIntentService========onDestroy="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/16 v0, 0x3840

    .line 112
    .local v0, "timeOutMax":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryPTM_TimeOut:I

    .line 113
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mFactoryInnerCount:I

    .line 114
    iput-boolean v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mIsFactoryInnerFlag:Z

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "action":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.action.readboy_factory_power_test_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v0
    .end local v1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
