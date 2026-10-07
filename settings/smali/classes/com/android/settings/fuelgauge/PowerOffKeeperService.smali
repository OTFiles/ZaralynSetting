.class public Lcom/android/settings/fuelgauge/PowerOffKeeperService;
.super Landroid/app/Service;
.source "PowerOffKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerOffKeeperService$ForceUpdateFwqInfoTask;,
        Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;,
        Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;
    }
.end annotation


# static fields
.field private static mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

.field public static mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

.field private static mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

.field private static final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final DEFAULT_USERID:I

.field private URL_Fwq_CONFIGURE_VER:Ljava/lang/String;

.field public isFirstInNeedInit:Z

.field public mCheckFwqCfgRunnable:Ljava/lang/Runnable;

.field private mDelayTimeView:Landroid/widget/TextView;

.field private mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

.field private mHandler:Landroid/os/Handler;

.field public mLastCheckServiceRunningTime:J

.field public mLastReqFwqFwqUpdateTime:J

.field public mLastUpdateFromFwqDateTime:Ljava/lang/String;

.field private mPowerOffDelayTime:I

.field private mRandom:Ljava/util/Random;

.field public mRandom_ReqFwq_DelayTime:J

.field public mRandom_ReqFwq_StartTime:J

.field private mRunableResetColorTemp:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field public mSavedFwqCfgMd5Same:Z

.field private mServiceColorTempObserver:Landroid/database/ContentObserver;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mUserPowerOffPad:I

.field private mWaitAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    .line 92
    sput-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 93
    sput-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 111
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v2, 0x4

    const/16 v3, 0xa

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 129
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastCheckServiceRunningTime:J

    .line 96
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mPowerOffDelayTime:I

    .line 98
    iput v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    .line 99
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mWaitAlertDialog:Landroid/app/AlertDialog;

    .line 252
    new-instance v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mServiceColorTempObserver:Landroid/database/ContentObserver;

    .line 424
    new-instance v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$6;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunableResetColorTemp:Ljava/lang/Runnable;

    .line 581
    const-string v4, "https://app-notice-blacklist.readboy.com/blacklist/"

    iput-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->URL_Fwq_CONFIGURE_VER:Ljava/lang/String;

    .line 587
    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    .line 602
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    .line 604
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 606
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 608
    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    .line 610
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    .line 612
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mSavedFwqCfgMd5Same:Z

    .line 614
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isFirstInNeedInit:Z

    .line 616
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->DEFAULT_USERID:I

    .line 671
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$7;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$7;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    .line 907
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$8;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$8;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/fuelgauge/PowerOffKeeperService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mPowerOffDelayTime:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mPowerOffDelayTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mPowerOffDelayTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mDelayTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mWaitAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunableResetColorTemp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 81
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method public static forceEspPadUpdateFreeformAppsList(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 9
    .param p0, "objKey"    # Ljava/lang/String;
    .param p1, "objValue"    # Lorg/json/JSONArray;

    .line 1128
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Y50"

    const-string v2, "Y50"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1129
    .local v0, "padInnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "ro.readboy.internal.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, "strInner":Ljava/lang/String;
    const-string v2, "51"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1132
    .local v3, "objSon0":Lorg/json/JSONObject;
    const-string v4, "Prop"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PkgName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PkgName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "readboy_pad_force_freeform_app_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 1134
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "Prop"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v4, "arrSon1":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1136
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1137
    .local v2, "objSon1":Lorg/json/JSONObject;
    const-string v5, "rby_model"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1138
    const-string v5, "rby_model"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1139
    .local v5, "objSon2":Lorg/json/JSONObject;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1140
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1142
    .local v6, "strForceFreeformApp":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "saved_portt_app_landshow_packagenames"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1148
    .end local v2
    .end local v4
    .end local v5
    .end local v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_0

    .line 1146
    :catch_0
    move-exception v2

    .line 1147
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1153
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    goto :goto_1

    .line 1151
    :catch_1
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    .end local v0
    :goto_1
    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 279
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 280
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    return v1

    .line 282
    .end local v0
    :cond_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const-string v3, "scale"

    .line 285
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    div-int/2addr v1, v2

    .line 284
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 287
    .end local v0
    :catch_0
    move-exception v0

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public static getStringMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .line 1290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    const-string v0, ""

    return-object v0

    .line 1293
    :cond_0
    const/4 v0, 0x0

    .line 1295
    .local v0, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v0, v1

    .line 1296
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1297
    .local v1, "bytes":[B
    const-string v2, ""

    .line 1298
    .local v2, "result":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v5, v1, v4

    .line 1299
    .local v5, "b":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1300
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1303
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 1298
    .end local v5
    .end local v6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1305
    :cond_2
    return-object v2

    .line 1306
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 1307
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1309
    .end local v1
    const-string v1, ""

    return-object v1
.end method

.method public static isBatteryCharging(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "isBatteryCharging":Z
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 304
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 307
    .local v3, "batteryChargeState":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 309
    .local v6, "isAc":Z
    :goto_0
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    .line 311
    .local v7, "isUsb":Z
    :goto_1
    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v4

    .line 314
    .local v8, "isWireless":Z
    :goto_2
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    move v4, v5

    :goto_4
    move v0, v4

    .line 316
    return v0
.end method

.method public static isNowNeedUpdateFromFwq()Z
    .locals 6

    .line 975
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 977
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mSavedFwqCfgMd5Same:Z

    const/4 v1, 0x1

    const v2, 0x36ee80

    const v3, 0x1b7740

    if-nez v0, :cond_0

    .line 978
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 979
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v4, v3

    rem-int/2addr v4, v2

    int-to-long v2, v4

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 980
    return v1

    .line 983
    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isSavedDateExchangeNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 985
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v4, v3

    rem-int/2addr v4, v2

    int-to-long v2, v4

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 986
    return v1

    .line 989
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isNowScreenOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "isScreenOn":Z
    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 531
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 533
    .end local v1
    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 534
    :goto_0
    return v0
.end method

.method public static isSavedDateExchangeNeedUpdate()Z
    .locals 4

    .line 963
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "nowDateTime":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 967
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 965
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isStartWithUnicode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 1339
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1342
    :cond_0
    const-string v1, "\\u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    return v0

    .line 1346
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 1347
    return v0

    .line 1349
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "content":Ljava/lang/String;
    const-string v1, "[0-9|a-f|A-F][0-9|a-f|A-F][0-9|a-f|A-F][0-9|a-f|A-F]"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1352
    .local v1, "isMatch":Z
    return v1

    .line 1340
    .end local v0
    .end local v1
    :cond_3
    :goto_0
    return v0
.end method

.method public static readNormalPadZxsModelInfoFromFWQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 835
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->checkAuthToken()V

    .line 837
    const-string v0, "https://api-care.readboy.com/api/ai_learn_room/check"

    .line 839
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v1, "?number=%s&sn=%s&device_id=%s&t=%s"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 840
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    invoke-static {v4, v6, v7}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceSN(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    .line 841
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SettingsEwcCommonUtils;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v3, v8

    const/4 v6, 0x3

    .line 842
    invoke-static {}, Lcom/android/settings/SettingsEwcCommonUtils;->getSystemTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v6

    .line 839
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "param":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 846
    .local v3, "url":Ljava/net/URL;
    const-string v6, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "======divhee=======readNormalPadZxsModelInfoFrom_FWQ=1==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 849
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 850
    const/16 v9, 0x2710

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 852
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 853
    .local v9, "code":I
    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6

    .line 855
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 856
    .local v10, "result":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 857
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 858
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 859
    .local v12, "fwqStatus":I
    const-string v13, "ok"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "status"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 860
    const-string v13, "status"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move v12, v13

    .line 862
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v13

    .line 863
    .local v13, "localStatus":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v14

    if-ne v12, v7, :cond_1

    move v15, v7

    goto :goto_0

    :cond_1
    move v15, v5

    :goto_0
    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsApp;->setNormalPadZxsModel(Z)V

    .line 864
    if-ne v13, v7, :cond_2

    if-eqz v12, :cond_3

    :cond_2
    if-nez v13, :cond_5

    if-ne v12, v7, :cond_5

    .line 866
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "Launch_version"

    invoke-static {v14, v15, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 867
    .local v14, "iLauncherVersion":I
    const-string v15, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "==="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "======divhee=======readNormalPadZxsModelInfoFrom_FWQ==2=="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-eq v14, v2, :cond_4

    if-ne v12, v7, :cond_4

    .line 870
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "Launch_version"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "dream_launcher_mode_lable"

    const/4 v7, 0x2

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 872
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "export_standard_launcher_mode_lable"

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalzxsmodel==>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 884
    :cond_4
    if-ne v14, v2, :cond_5

    if-nez v12, :cond_5

    .line 886
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/PadModeSettings;->getBestFitLauncherVersionByPersonalCenter(Landroid/content/Context;)I

    move-result v2

    .line 887
    .local v2, "bestFitLauncherVer":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "Launch_version"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 888
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "dream_launcher_mode_lable"

    const/4 v8, 0x2

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 892
    .end local v2
    .end local v14
    :cond_5
    return-object v10

    .line 894
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :cond_6
    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=========divhee======readNormalPadZxsModelInfoFrom_FWQ=3==fail===="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v0
    .end local v1
    .end local v3
    .end local v6
    .end local v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 896
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 899
    .end local v0
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static refreshSystemFilterList(Ljava/lang/String;)V
    .locals 7
    .param p0, "objStr"    # Ljava/lang/String;

    .line 1086
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee======refreshSystemFilterList==1=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1090
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1092
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "objKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1094
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1095
    .local v3, "objValue":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 1096
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "msgc_vid"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v5, "callme"

    const-string v6, "com.android.settings"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v5, "content"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-static {v4}, Lcom/android/settings/SettingsSharedContentProvider;->saveDataToSettingsLocalDBWithMessageCenter(Landroid/os/Bundle;)Z

    .line 1102
    const-string v5, "51"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1103
    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->forceEspPadUpdateFreeformAppsList(Ljava/lang/String;Lorg/json/JSONArray;)V

    .end local v2
    .end local v3
    .end local v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1107
    :catch_0
    move-exception v2

    .line 1108
    :cond_0
    :goto_1
    goto :goto_0

    .line 1112
    .end local v0
    .end local v1
    :cond_1
    goto :goto_2

    .line 1111
    :catch_1
    move-exception v0

    .line 1119
    :goto_2
    return-void
.end method

.method private registSreenStatusReceiver()V
    .locals 4

    .line 361
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unregistSreenStatusReceiver()V

    .line 363
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v0, "screenStatusIF":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 375
    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    if-nez v0, :cond_1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    .local v0, "nowTimeTemp":J
    new-instance v2, Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {v2}, Lcom/android/settings/SettingsBootCompletedReceiver;-><init>()V

    sput-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 378
    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->setCurrentReceiverTimeId(J)V

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bootcompleted_receiver_timeid"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 380
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v2, "screenStatusIF":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    .end local v0
    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    .line 389
    :catch_1
    move-exception v0

    .line 392
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    if-nez v0, :cond_2

    .line 393
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    .line 394
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v0, "itfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_2

    .line 400
    :catch_2
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    .end local v0
    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/DisplayColorTempSettings;->URL_WARM_MODE:Landroid/net/Uri;

    const-string v2, "switch_warm_mode"

    .line 405
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mServiceColorTempObserver:Landroid/database/ContentObserver;

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 407
    :catch_3
    move-exception v0

    .line 409
    :goto_3
    return-void
.end method

.method public static setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "mIsSwitchOpened":Z
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 472
    .local v2, "mTimerHourMinute":[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "db_at_time_turn_off_pad"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "sAtTimeTurnOffPadTimeout":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 475
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v7, "shutdown_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 476
    const-string v7, "shutdown_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "shutdownTime":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lt v8, v1, :cond_0

    .line 478
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v4

    .line 479
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v3

    .line 483
    .end local v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_0

    .line 482
    :catch_0
    move-exception v7

    .line 485
    :goto_0
    :try_start_2
    const-string v7, "shutdown_switch"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 486
    const-string v7, "shutdown_switch"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    .line 489
    :cond_1
    goto :goto_1

    .line 488
    :catch_1
    move-exception v7

    .line 491
    .end local v5
    .end local v6
    :goto_1
    goto :goto_2

    .line 490
    :catch_2
    move-exception v5

    .line 493
    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.attime_poweroff_keeper_service"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v6, "atTimePowerOff"

    const-string v7, "%s:%s"

    new-array v1, v1, [Ljava/lang/Object;

    aget v8, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    aget v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 499
    .local v1, "mAM":Landroid/app/AlarmManager;
    const/high16 v6, 0x8000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 501
    .local v6, "mPI":Landroid/app/PendingIntent;
    :try_start_3
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 502
    if-eqz v0, :cond_3

    .line 503
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 504
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    aget v9, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 505
    const/16 v8, 0xc

    aget v3, v2, v3

    invoke-virtual {v7, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 506
    const/16 v3, 0xd

    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 507
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_2

    .line 508
    const/16 v3, 0xa

    const/16 v8, 0x18

    invoke-virtual {v7, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 511
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "db_power_off_pad_timeout_attime"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 514
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v4, v8, v9, v6}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 517
    .end local v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    goto :goto_3

    .line 516
    :catch_3
    move-exception v3

    .line 518
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x1e
    .end array-data
.end method

.method public static setAutoDelayTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isScreenOn"    # Z

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rby_guide_force_exit_flag"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 544
    .local v0, "isGuideOver":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_delaytime_turn_off_pad_timeout"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 546
    .local v1, "currentTimeout":J
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 547
    const-wide/32 v1, 0x6ddd00

    .line 549
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.delaytime_poweroffkeeper_service"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v6, "autoPowerOffDelayTime"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 552
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 555
    .local v6, "mAM":Landroid/app/AlarmManager;
    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    invoke-static {p0, v8, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 557
    .local v7, "mPI":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 558
    if-nez p1, :cond_1

    .line 559
    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const-wide/32 v3, 0xf731400

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 560
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 561
    .local v3, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 562
    const/16 v4, 0xe

    long-to-int v9, v1

    invoke-virtual {v3, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "db_power_off_pad_timeout_delay"

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v4, v9, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 565
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "MM-dd HH:mm"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 566
    .local v4, "spf":Ljava/text/SimpleDateFormat;
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=====divhee===========setAutoDelayTimePowerOffKeeperBroadcastReceiver=======spf===="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 572
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 571
    :catch_0
    move-exception v3

    .line 573
    :goto_0
    return-void
.end method

.method public static startPowerOffKeeperService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.default_poweroff_keeper_service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    const-string v1, ""

    const-string v2, "====divhee=========startFactoryATMIntentService========true="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public static streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "chartSet"    # Ljava/lang/String;

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1186
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 1188
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "con":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1192
    const/4 v1, 0x0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1201
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1200
    :catch_0
    move-exception v4

    .line 1202
    :goto_1
    const/4 v1, 0x0

    .line 1204
    :cond_1
    if-eqz p0, :cond_2

    .line 1206
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1208
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1207
    :catch_1
    move-exception v4

    .line 1209
    :goto_2
    const/4 p0, 0x0

    .line 1193
    :cond_2
    return-object v2

    .line 1197
    .end local v3
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 1194
    :catch_2
    move-exception v2

    .line 1195
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1197
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 1199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1201
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1200
    :catch_3
    move-exception v2

    .line 1202
    :goto_3
    const/4 v1, 0x0

    .line 1204
    :cond_3
    if-eqz p0, :cond_4

    .line 1206
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1208
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 1207
    :catch_4
    move-exception v2

    .line 1209
    :goto_4
    const/4 p0, 0x0

    .line 1212
    :cond_4
    const-string v2, ""

    return-object v2

    .line 1197
    :goto_5
    if-eqz v1, :cond_5

    .line 1199
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1201
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    .line 1200
    :catch_5
    move-exception v3

    .line 1202
    :goto_6
    const/4 v1, 0x0

    .line 1204
    :cond_5
    if-eqz p0, :cond_6

    .line 1206
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1208
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 1207
    :catch_6
    move-exception v3

    .line 1209
    :goto_7
    const/4 p0, 0x0

    :cond_6
    throw v2
.end method

.method public static unicodeToCn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1382
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1383
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1384
    .local v3, "tmpStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isStartWithUnicode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1385
    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->ustartToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 1388
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    add-int/lit8 v2, v2, 0x1

    .line 1391
    .end local v3
    :goto_1
    goto :goto_0

    .line 1392
    .end local v2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private unregistSreenStatusReceiver()V
    .locals 2

    .line 436
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mServiceColorTempObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 438
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 439
    :goto_0
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    :try_start_1
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 442
    :catch_1
    move-exception v0

    .line 444
    :goto_1
    sput-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mScreenStatusReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;

    .line 446
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    if-eqz v0, :cond_1

    .line 448
    :try_start_2
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 449
    :catch_2
    move-exception v0

    .line 451
    :goto_2
    sput-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mBootCompletedReceiver:Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    if-eqz v0, :cond_2

    .line 455
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 456
    :catch_3
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v0
    :goto_3
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mFwqNetCnnReceiver:Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;

    .line 461
    :cond_2
    return-void
.end method

.method private static ustartToCn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1363
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1364
    .local v1, "codeInteger":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1365
    .local v2, "code":I
    int-to-char v3, v2

    .line 1366
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public AnysFwqRequestResultData()J
    .locals 17

    .line 1015
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 1017
    .local v4, "saved_version":J
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v6, v0

    .line 1018
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 1019
    const-string v0, "fwq_cfg_version"

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    move-wide v4, v7

    .line 1021
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->URL_Fwq_CONFIGURE_VER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "?prop=true"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1022
    .local v7, "reqUrl":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->readFwqInfoFromFWQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1023
    .local v8, "reqResult":Ljava/lang/String;
    const-string v0, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "====divhee==========AnysFwqRequestResultData===3===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "mJsonObj":Lorg/json/JSONObject;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1026
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1027
    .end local v0
    .local v9, "mJsonObj":Lorg/json/JSONObject;
    const-string v0, "code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    const-string v0, "code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 1029
    .local v10, "hasCode":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    const-string v11, "latest_version"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "latest_version"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "data"

    .line 1030
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "data"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1031
    const-string v11, "latest_version"

    invoke-virtual {v9, v11, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1032
    .local v11, "fwqCfgVersion":J
    const-string v13, "data"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1033
    .local v13, "dataJsonObj":Lorg/json/JSONObject;
    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11, v12}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getDateToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=fwqCfgVersion=========divhee=========fileNeedUpdate======="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "fwq_cfg_first_init"

    const/4 v15, 0x2

    invoke-static {v0, v14, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1037
    if-eqz v6, :cond_1

    .line 1038
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "nowDataJsonString":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "fwq_cfg_data"

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1040
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "fwq_cfg_version"

    invoke-interface {v14, v15, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1041
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "fwq_cfg_md5"

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v15, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1043
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->refreshSystemFilterList(Ljava/lang/String;)V

    .line 1046
    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyyMMdd"

    invoke-direct {v3, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0
    .local v16, "nowDataJsonString":Ljava/lang/String;
    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    .line 1047
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time"

    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1048
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time_long"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1051
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    .line 1052
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 1053
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 1054
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mSavedFwqCfgMd5Same:Z

    .line 1055
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "=fwqCfgVersion=========divhee=========fileNeedUpdate====2222==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1059
    :goto_0
    return-wide v11

    .line 1060
    .end local v11
    .end local v13
    :cond_2
    if-nez v10, :cond_3

    .line 1062
    :try_start_2
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    .line 1063
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time"

    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1064
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time_long"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1067
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    .line 1068
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 1069
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 1070
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mSavedFwqCfgMd5Same:Z

    .line 1076
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    goto :goto_1

    .line 1074
    :catch_1
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1077
    .end local v0
    :goto_1
    return-wide v4
.end method

.method public checkFwqConfigureEvent(I)V
    .locals 8
    .param p1, "callType"    # I

    .line 643
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isFirstInNeedInit:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isFirstInNeedInit:Z

    .line 645
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isNowNeedUpdateFromFwq()Z

    .line 648
    :cond_0
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=======divhee========checkFwqConfigureEvent==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isNowCanUpdateDataFromFwq()I

    move-result v0

    .line 650
    .local v0, "iNowCanUpdateStatus":I
    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    .line 651
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 658
    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    cmp-long v3, v3, v1

    const-wide/32 v4, 0x36ee80

    if-lez v3, :cond_2

    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 663
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mCheckFwqCfgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    goto :goto_1

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    .end local v0
    :goto_1
    return-void
.end method

.method public getDateToString(J)Ljava/lang/String;
    .locals 3
    .param p1, "milSecond"    # J

    .line 999
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1000
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1002
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1003
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1005
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNowCanUpdateDataFromFwq()I
    .locals 6

    .line 719
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 724
    const/4 v0, 0x2

    return v0

    .line 726
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 720
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    sput-object p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastCheckServiceRunningTime:J

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isFirstInNeedInit:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastUpdateFromFwqDateTime:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fwq_cfg_last_update_time_long"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 142
    .local v0, "lastUpdateFromFwqTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    .line 146
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunableResetColorTemp:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->registSreenStatusReceiver()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 351
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 352
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unregistSreenStatusReceiver()V

    .line 353
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    move-object v1, p0

    .line 154
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 155
    .local v3, "action":Ljava/lang/String;
    const-string v0, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "======divhee===========intent====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getBatteryLevel(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/SettingsApp;->printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 158
    const-string v0, "com.android.settings.default_update_fwq_cfg_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 160
    :try_start_1
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$ForceUpdateFwqInfoTask;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$ForceUpdateFwqInfoTask;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$ForceUpdateFwqInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .end local v3
    :goto_0
    goto/16 :goto_2

    .line 164
    .restart local v3
    :cond_0
    :try_start_2
    const-string v0, "com.android.settings.default_poweroff_keeper_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 166
    :cond_1
    const-string v0, "com.android.settings.delaytime_poweroffkeeper_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.attime_poweroff_keeper_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    :cond_2
    const/4 v0, 0x0

    .line 168
    .local v0, "isEnablePowerOff":Z
    sget-object v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isNowScreenOn(Landroid/content/Context;)Z

    move-result v5

    .line 169
    .local v5, "isCurrentScreenOn":Z
    const-string v6, "com.android.settings.delaytime_poweroffkeeper_service"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/32 v7, 0xea60

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_4

    .line 170
    sget-object v6, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "db_power_off_pad_timeout_delay"

    invoke-static {v6, v11, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 171
    .local v11, "aimPowerOffTime":J
    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v6, v13, v7

    if-gez v6, :cond_3

    .line 172
    const/4 v0, 0x1

    .line 174
    :cond_3
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v6, "spf":Ljava/text/SimpleDateFormat;
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=aim==="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=now==divhee===========delay===isEnablePowerOff=="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "===isCurrentScreenOn="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v6
    .end local v11
    goto :goto_1

    :cond_4
    const-string v6, "com.android.settings.attime_poweroff_keeper_service"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    sget-object v6, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "db_power_off_pad_timeout_attime"

    invoke-static {v6, v11, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 178
    .restart local v11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v6, v13, v7

    if-gez v6, :cond_5

    .line 179
    const/4 v0, 0x1

    .line 181
    :cond_5
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v6
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=aim==="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=now==divhee===========attime===isEnablePowerOff=="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "===isCurrentScreenOn="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v6
    .end local v11
    :cond_6
    :goto_1
    sget-object v6, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v6, v5}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAutoDelayTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;Z)V

    .line 185
    if-nez v0, :cond_7

    .line 187
    sget-object v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 188
    :cond_7
    sget-object v6, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isBatteryCharging(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isChargingTurnOffPadEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 189
    :cond_8
    if-nez v5, :cond_9

    .line 191
    iget-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iput v2, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    .line 193
    sget-object v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->turnOffPadEvent(Landroid/content/Context;)V

    goto :goto_2

    .line 196
    :cond_9
    new-instance v6, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f120443

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 198
    sget-object v7, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 199
    .local v7, "dialogInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0d0042

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 200
    .local v8, "mView":Landroid/view/View;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    const v11, 0x7f0a04a2

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mDelayTimeView:Landroid/widget/TextView;

    .line 202
    const/16 v11, 0x2d

    iput v11, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mPowerOffDelayTime:I

    .line 203
    iput v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    .line 204
    iget-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v11, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    const v4, 0x7f120b11

    new-instance v9, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;

    invoke-direct {v9, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    invoke-virtual {v6, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v4, 0x7f120b10

    new-instance v9, Lcom/android/settings/fuelgauge/PowerOffKeeperService$2;

    invoke-direct {v9, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$2;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    invoke-virtual {v6, v4, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v4, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;

    invoke-direct {v4, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mWaitAlertDialog:Landroid/app/AlertDialog;

    .line 233
    iget-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mWaitAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v9, 0x7d3

    invoke-virtual {v4, v9}, Landroid/view/Window;->setType(I)V

    .line 234
    iget-object v4, v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mWaitAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 240
    .end local v0
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    :goto_2
    goto :goto_3

    .line 239
    :catch_1
    move-exception v0

    .line 242
    :goto_3
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->checkFwqConfigureEvent(I)V

    .line 244
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 243
    :catch_2
    move-exception v0

    .line 246
    :goto_4
    const/4 v0, 0x3

    return v0
.end method

.method public readFwqInfoFromFWQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlhost"    # Ljava/lang/String;

    .line 925
    move-object v0, p1

    .line 932
    .local v0, "newsPath_url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 934
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 936
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 937
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 939
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 940
    .local v3, "code":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 942
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 945
    return-object v4

    .line 947
    .end local v4
    :cond_0
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=========divhee======readFwqInfoFrom===fail===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 952
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public turnOffPadEvent(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isBatteryCharging(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isChargingTurnOffPadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mUserPowerOffPad:I

    .line 328
    sget-object v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    .line 329
    return-void

    .line 333
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "spf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_power_off_pad_auto_action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getBatteryLevel(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 339
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 345
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    .line 346
    :goto_1
    return-void
.end method
