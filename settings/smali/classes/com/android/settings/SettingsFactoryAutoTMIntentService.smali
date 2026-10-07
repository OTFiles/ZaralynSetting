.class public Lcom/android/settings/SettingsFactoryAutoTMIntentService;
.super Landroid/app/Service;
.source "SettingsFactoryAutoTMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;
    }
.end annotation


# instance fields
.field private mFactoryATM_TimeOut:I

.field private mFactoryInnerCount:I

.field private mIsFactoryATMOver:Z

.field private mIsFactoryInnerFlag:Z

.field private mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

.field public onHandleIntentEventCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryInnerFlag:Z

    .line 31
    iput v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryInnerCount:I

    .line 33
    iput v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryATM_TimeOut:I

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryATMOver:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 135
    new-instance v0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;-><init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 26
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryATMOver:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsFactoryAutoTMIntentService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryATMOver:Z

    return p1
.end method

.method static synthetic access$108(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 26
    iget v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryATM_TimeOut:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryATM_TimeOut:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 26
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryInnerFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 26
    iget v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryInnerCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->stopFactoryTestModeIntentService()V

    return-void
.end method

.method public static startFactoryATMIntentService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_start_factory_auto_retry_times"

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "nowMaxRetryTimes":I
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "24====divhee=========startFactoryATMIntentService========nowMaxRetryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-lez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_device_boot_times"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x23

    if-ge v1, v2, :cond_0

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.action.readboy_factory_auto_test_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 60
    const-string v2, ""

    const-string v3, "====divhee=========startFactoryATMIntentService========true="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1
    goto :goto_0

    .line 62
    :cond_0
    const-string v1, ""

    const-string v2, "====divhee=========startFactoryATMIntentService========false="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method

.method private stopFactoryTestModeIntentService()V
    .locals 2

    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 190
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->stopSelf()V

    .line 192
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    .line 194
    :goto_1
    return-void
.end method


# virtual methods
.method public getWifiHotSsidInfo(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_start_factory_auto_tm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "first_time_start_factory_auto_tm"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 224
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 227
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 229
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v3

    .line 230
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 232
    nop

    .local v2, "inum":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 233
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 234
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 235
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "ssidName":Ljava/lang/String;
    const-string v6, "readboy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryInnerFlag:Z

    .line 238
    const-string v6, "readboy-factory-fqc-test1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    iget-boolean v6, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryATMOver:Z

    if-nez v6, :cond_2

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "first_time_start_factory_auto_retry_times"

    const/16 v8, 0x18

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 243
    .local v6, "nowMaxRetryTimes":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "first_time_start_factory_auto_retry_times"

    add-int/lit8 v6, v6, -0x1

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v7, "intent1":Landroid/content/Intent;
    const-string v8, "com.sim.cit"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v8, "com.sim.cit"

    const-string v9, "com.sim.cit.MainList"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v8, "callme"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v8, "auto_run"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "first_time_start_factory_auto_tm"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    .end local v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 258
    :catch_1
    move-exception v7

    .line 259
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v7
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryATMOver:Z

    .line 265
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v7, 0x0

    :try_start_5
    iget-object v8, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    if-eqz v8, :cond_1

    .line 266
    iget-object v8, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    iput-object v7, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 272
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    goto :goto_3

    .line 269
    :catch_2
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    iput-object v7, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 275
    .end local v6
    .end local v8
    :cond_2
    :goto_3
    const-string v6, ""

    const-string v7, "======divhee==========readboy-factory-battery-test1====="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4
    .end local v5
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 281
    .end local v2
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryInnerFlag:Z

    if-nez v2, :cond_5

    .line 282
    iget v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryInnerCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryInnerCount:I

    .line 288
    .end local v0
    .end local v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    goto :goto_4

    .line 286
    :catch_3
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .end local v0
    :goto_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;-><init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "itfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v0
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startFactoryATMIntentService========onCreate="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 87
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    iput-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 94
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    iput-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mPNetCnnReceiver:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 95
    .end local v1
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startFactoryATMIntentService========onDestroy="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 107
    if-eqz p1, :cond_0

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryATM_TimeOut:I

    .line 110
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mFactoryInnerCount:I

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->mIsFactoryInnerFlag:Z

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.action.readboy_factory_auto_test_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    .end local v0
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
