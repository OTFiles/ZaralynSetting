.class public Lcom/android/settings/SettingsCameraConfigureIntentService;
.super Landroid/app/Service;
.source "SettingsCameraConfigureIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;,
        Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;
    }
.end annotation


# static fields
.field private static mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;


# instance fields
.field private URL_CAMERA_CONFIGURE_VER:Ljava/lang/String;

.field private mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraPTMOver:Z

.field private mLastReqFwqCameraUpdateTime:J

.field private mRandom:Ljava/util/Random;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field public onHandleIntentEventCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const-string v0, "http://img.readboy.com/config/pad/c20/camera_config.json"

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->URL_CAMERA_CONFIGURE_VER:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mLastReqFwqCameraUpdateTime:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mIsCameraPTMOver:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mRandom:Ljava/util/Random;

    .line 168
    new-instance v0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCameraConfigureIntentService$1;-><init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    .line 251
    new-instance v0, Lcom/android/settings/SettingsCameraConfigureIntentService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCameraConfigureIntentService$2;-><init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCameraConfigureIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mIsCameraPTMOver:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsCameraConfigureIntentService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-wide v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mLastReqFwqCameraUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsCameraConfigureIntentService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;
    .param p1, "x1"    # J

    .line 42
    iput-wide p1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mLastReqFwqCameraUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsCameraConfigureIntentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsCameraConfigureIntentService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsCameraConfigureIntentService;->nowStopCameraTestModeIntentService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 42
    iget-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->URL_CAMERA_CONFIGURE_VER:Ljava/lang/String;

    return-object v0
.end method

.method public static isNeedWriteDefaultConfigOneTime()Z
    .locals 6

    .line 394
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "folerpath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.readboy/CameraFix/camerafixinfo_2.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 398
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 400
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 404
    .end local v0
    .end local v1
    :cond_1
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 405
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private nowStopCameraTestModeIntentService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    :goto_0
    const-string v0, ""

    const-string v1, "=========divhee=========stopCameraTestModeIntentService========"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "intentService":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsCameraConfigureIntentService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 227
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v0
    :goto_1
    return-void
.end method

.method public static startCameraUpdateIntentService(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .local v0, "modelName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "Readboy_C20"

    const-string v3, "Readboy_C10Pro"

    const-string v4, "Readboy_C20Pro"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v1, "needUpdateCameraDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "ro.readboy.screen.orientation"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "camera_need_fwq_ini":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_time_start_camera_info_tm"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.action.readboy_camera_info_mode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    const-string v4, ""

    const-string v5, "====divhee=========startCameraTestModeIntentService========true="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_cfg_first_init"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "iSavedValue":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsCameraConfigureIntentService;->isNeedWriteDefaultConfigOneTime()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    :cond_3
    invoke-static {p0}, Lcom/android/settings/ReadboyCameraOrientationFix;->readInfo(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "camera_cfg_first_init"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    .end local v3
    .end local v4
    :cond_4
    return-void
.end method

.method public static streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "chartSet"    # Ljava/lang/String;

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 496
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 498
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "con":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 502
    const/4 v1, 0x0

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 509
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 511
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 510
    :catch_0
    move-exception v4

    .line 512
    :goto_1
    const/4 v1, 0x0

    .line 514
    :cond_1
    if-eqz p0, :cond_2

    .line 516
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 518
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 517
    :catch_1
    move-exception v4

    .line 519
    :goto_2
    const/4 p0, 0x0

    .line 503
    :cond_2
    return-object v2

    .line 507
    .end local v3
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 504
    :catch_2
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 509
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 511
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 510
    :catch_3
    move-exception v2

    .line 512
    :goto_3
    const/4 v1, 0x0

    .line 514
    :cond_3
    if-eqz p0, :cond_4

    .line 516
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 518
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 517
    :catch_4
    move-exception v2

    .line 519
    :goto_4
    const/4 p0, 0x0

    .line 522
    :cond_4
    const-string v2, ""

    return-object v2

    .line 507
    :goto_5
    if-eqz v1, :cond_5

    .line 509
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 511
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    .line 510
    :catch_5
    move-exception v3

    .line 512
    :goto_6
    const/4 v1, 0x0

    .line 514
    :cond_5
    if-eqz p0, :cond_6

    .line 516
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 518
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 517
    :catch_6
    move-exception v3

    .line 519
    :goto_7
    const/4 p0, 0x0

    :cond_6
    throw v2
.end method


# virtual methods
.method public AnysCameraRequestResultData(Ljava/lang/String;)I
    .locals 14
    .param p1, "result"    # Ljava/lang/String;

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "mJsonObj":Lorg/json/JSONObject;
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 417
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 418
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v2, "v"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "data2"

    .line 419
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "v"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    const-string v2, "v"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 421
    .local v2, "fwqCfgVersion":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 422
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_4

    .line 423
    const-string v4, "camera_cfg_version"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 424
    .local v4, "saved_version":I
    const-string v5, "camera_cfg_md5"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "saved_last_md5":Ljava/lang/String;
    const/4 v6, 0x1

    .line 428
    .local v6, "fileNeedUpdate":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "folerpath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/.readboy/CameraFix/camerafixinfo_2.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 432
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v8, "tempFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 434
    const/4 v9, 0x0

    .line 435
    .local v9, "fin":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 437
    .local v10, "fileCfgMD5":Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v11

    .line 438
    nop

    .line 439
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v11, v11, [B

    .line 440
    .local v11, "fdata":[B
    invoke-virtual {v9, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 441
    nop

    .line 442
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 443
    const/4 v9, 0x0

    .line 445
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 446
    .local v12, "strval":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v13

    .line 451
    .end local v11
    .end local v12
    if-eqz v9, :cond_1

    .line 453
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v11

    goto :goto_2

    .line 451
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_0

    .line 453
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 455
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 454
    :catch_1
    move-exception v12

    .line 456
    :goto_0
    const/4 v9, 0x0

    :cond_0
    :try_start_4
    throw v11

    .line 449
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_2
    move-exception v11

    .line 451
    if-eqz v9, :cond_1

    .line 453
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 455
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    goto :goto_2

    .line 454
    :catch_3
    move-exception v11

    .line 456
    :goto_2
    const/4 v9, 0x0

    .line 460
    :cond_1
    :try_start_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 462
    const/4 v6, 0x0

    .line 468
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :cond_2
    if-lt v4, v2, :cond_3

    if-eqz v6, :cond_4

    .line 469
    :cond_3
    const-string v7, "data2"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "camera_path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 471
    invoke-virtual {p0, v7, v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->readCameraInfoDetailFromFWQ(Ljava/lang/String;I)Ljava/lang/String;

    .line 475
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    return v2

    .line 477
    .end local v2
    .end local v3
    :cond_5
    return v3

    .line 482
    .end local v0
    :cond_6
    goto :goto_3

    .line 480
    :catch_4
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v0
    :goto_3
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    sput-object p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;-><init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "itfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsCameraConfigureIntentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startCameraTestModeIntentService========onCreate="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCameraConfigureIntentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    .line 128
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    iput-object v0, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraNetCnnReceiver:Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;

    .line 129
    .end local v1
    :goto_0
    const-string v0, ""

    const-string v1, "====divhee=========startCameraTestModeIntentService========onDestroy="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 131
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.action.readboy_camera_info_mode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "===22=divhee=========startCameraTestModeIntentService========onHandleIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.action.readboy_camera_info_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    .end local v0
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public readCameraInfoDetailFromFWQ(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p1, "urlhost"    # Ljava/lang/String;
    .param p2, "cfgVersion"    # I

    .line 307
    move/from16 v1, p2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->checkAuthToken()V

    .line 308
    move-object/from16 v3, p1

    .line 310
    .local v3, "newsPath_url":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 312
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 314
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const-string v0, "GET"

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 315
    const/16 v0, 0x2710

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 317
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v6, v0

    .line 318
    .local v6, "code":I
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_5

    .line 320
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lcom/android/settings/SettingsCameraConfigureIntentService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .end local v0
    .local v7, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v8, "mounted"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "folerpath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/.readboy/CameraFix/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 326
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v8, "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 328
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 330
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "camerafixinfo_2.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 331
    .end local v0
    .local v9, "folerpath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 332
    .local v10, "dstFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_1

    .line 334
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 336
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 338
    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v10, v0

    .line 339
    nop

    .line 340
    move-object v11, v2

    .line 342
    .local v11, "fouts":Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v10, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 343
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v0

    .line 344
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 345
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 346
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 347
    const/4 v11, 0x0

    .line 350
    sget-object v0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v0}, Lcom/android/settings/ReadboyCameraOrientationFix;->readInfo(Landroid/content/Context;)V

    .line 351
    sget-object v0, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-virtual {v0}, Lcom/android/settings/SettingsCameraConfigureIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "camera_cfg_first_init"

    const/4 v13, 0x2

    invoke-static {v0, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "camera_cfg_version"

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "savedmd5":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "camera_cfg_md5"

    invoke-interface {v13, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    const-string v13, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "=======divhee========fwqCfgVersion==OK="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0
    .end local v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v11, :cond_4

    .line 365
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 366
    :catch_1
    move-exception v0

    goto :goto_3

    .line 363
    :catchall_0
    move-exception v0

    move-object v12, v11

    move-object v11, v0

    .end local v11
    .local v12, "fouts":Ljava/io/FileOutputStream;
    if-eqz v12, :cond_3

    .line 365
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 367
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 366
    :catch_2
    move-exception v0

    .line 368
    :goto_1
    const/4 v12, 0x0

    :cond_3
    :try_start_6
    throw v11

    .line 361
    .end local v12
    .restart local v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_3
    move-exception v0

    .line 363
    if-eqz v11, :cond_4

    .line 365
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 367
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_2
    goto :goto_3

    .line 366
    :catch_4
    move-exception v0

    .line 368
    :goto_3
    const/4 v0, 0x0

    .line 374
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :cond_4
    return-object v7

    .line 376
    .end local v7
    :cond_5
    :try_start_8
    const-string v0, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=========divhee======readCameraInfoFrom===fail===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 378
    :catch_5
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v0
    :goto_4
    return-object v2
.end method

.method public readCameraInfoFromFWQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urlhost"    # Ljava/lang/String;

    .line 268
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->checkAuthToken()V

    .line 270
    move-object v0, p1

    .line 271
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v1, "?number=%s&sn=%s&device_id=%s&t=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 272
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceSN(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/android/settings/SettingsCameraConfigureIntentService;->mCameraService:Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 273
    invoke-static {v4}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 274
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 271
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "param":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 281
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 282
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 284
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 285
    .local v4, "code":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lcom/android/settings/SettingsCameraConfigureIntentService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "result":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 290
    return-object v5

    .line 292
    .end local v5
    :cond_0
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=========divhee======readCameraInfoFrom===fail===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
