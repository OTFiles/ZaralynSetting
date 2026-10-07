.class public Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;
.super Landroid/app/Service;
.source "SettingsRecoveryReinstallDslAppDialogIntentService.java"


# static fields
.field private static mRrDslAppDialogService:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;


# instance fields
.field private mIsRrDslAppDialogPTMOver:Z

.field public onHandleIntentEventCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mRrDslAppDialogService:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mIsRrDslAppDialogPTMOver:Z

    .line 90
    new-instance v0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;-><init>(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    .line 17
    iget-boolean v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mIsRrDslAppDialogPTMOver:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mIsRrDslAppDialogPTMOver:Z

    return p1
.end method

.method static synthetic access$100()Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mRrDslAppDialogService:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->nowStopRrDslAppDialogTestModeIntentService(Landroid/content/Context;)V

    return-void
.end method

.method private nowStopRrDslAppDialogTestModeIntentService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    :goto_0
    const-string v0, ""

    const-string v1, "=========divhee=========stopRrDslAppDialogTestModeIntentService========"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, "intentService":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsRecoveryReinstallDslAppDialogIntentService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 145
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0
    :goto_1
    return-void
.end method

.method public static startRrDslAppDialogUpdateIntentService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.action.readboy_rrdslappdialog_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    const-string v1, ""

    const-string v2, "====divhee=========startRrDslAppDialogTestModeIntentService========true="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    sput-object p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->mRrDslAppDialogService:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    .line 48
    const-string v0, ""

    const-string v1, "====divhee=========startRrDslAppDialogTestModeIntentService========onCreate="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 53
    const-string v0, ""

    const-string v1, "====divhee=========startRrDslAppDialogTestModeIntentService========onDestroy="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 64
    const-string v0, ""

    const-string v1, "====divhee=========startRrDslAppDialogTestModeIntentService========onHandleIntent111="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee=========startRrDslAppDialogTestModeIntentService========onHandleIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.action.readboy_rrdslappdialog_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .end local v0
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
