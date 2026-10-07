.class public Lcom/android/settings/SettingsApp;
.super Landroid/app/Application;
.source "SettingsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsApp$MyTaskUninstall;,
        Lcom/android/settings/SettingsApp$MyTaskInstall;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/settings/SettingsApp;


# instance fields
.field private LCD_NAME_FILE:Ljava/lang/String;

.field private final MIN_CLICK_DELAY_TIME:I

.field private final TAG:Ljava/lang/String;

.field private lastClickTime:J

.field private mAppDateMore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDateNow:Ljava/util/Date;

.field private mAppToast:Landroid/widget/Toast;

.field public mDatabaseDir:Ljava/lang/String;

.field private mDefaultException:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public mDhcpInfo:Landroid/net/DhcpInfo;

.field public mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

.field public mEnrollActivityStatus:I

.field public mEnrollNeedRealse:I

.field mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

.field private mIsFontsizeOrLanguageRestartLauncher:Z

.field private mLastPowerButtonPressed:J

.field public mLastSystemConfigerModifyLock:J

.field public mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

.field public mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public mPwdVertify:Lcom/android/settings/BeanVariable;

.field public mToken:[B

.field public mWaitLoctaionSdkTask:I

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 77
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 79
    const-string v0, "SettingsApp"

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mToken:[B

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SettingsApp;->mEnrollActivityStatus:I

    .line 85
    iput v1, p0, Lcom/android/settings/SettingsApp;->mEnrollNeedRealse:I

    .line 87
    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/SettingsApp;->mLastSystemConfigerModifyLock:J

    .line 93
    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    .line 95
    iput-wide v2, p0, Lcom/android/settings/SettingsApp;->mLastPowerButtonPressed:J

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/SettingsApp;->mIsFontsizeOrLanguageRestartLauncher:Z

    .line 99
    new-instance v2, Lcom/android/settings/BeanVariable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    .line 101
    new-instance v2, Lcom/android/settings/BeanVariable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    .line 103
    new-instance v2, Lcom/android/settings/BeanVariable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    .line 107
    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    .line 318
    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    .line 595
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/SettingsApp;->MIN_CLICK_DELAY_TIME:I

    .line 1019
    new-instance v0, Lcom/android/settings/SettingsApp$8;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApp$8;-><init>(Lcom/android/settings/SettingsApp;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    .line 1138
    iput v1, p0, Lcom/android/settings/SettingsApp;->mWaitLoctaionSdkTask:I

    .line 1189
    const-string v0, "/sys/readboy/lcd_name"

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->LCD_NAME_FILE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsApp;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsApp;->handlerException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsApp;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;

    .line 77
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mDefaultException:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsApp;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;

    .line 77
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsApp;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;
    .param p1, "x1"    # Landroid/widget/Toast;

    .line 77
    iput-object p1, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$300()Lcom/android/settings/SettingsApp;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/SettingsApp;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;
    .param p1, "x1"    # Ljava/util/Date;

    .line 77
    iput-object p1, p0, Lcom/android/settings/SettingsApp;->mAppDateNow:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsApp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsApp;

    .line 77
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/SettingsApp;
    .locals 2

    const-class v0, Lcom/android/settings/SettingsApp;

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handlerException(Ljava/lang/Throwable;)Z
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 190
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 191
    return v0

    .line 195
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 196
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 197
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 199
    .local v3, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 201
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 207
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=====divhee===========handlerException=======result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v5, "android.content.ActivityNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.APP_ERROR_NOT_FOUND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "tipIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SettingsApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return v6

    .line 213
    .end local v0
    :cond_2
    const-string v5, "android.util.AndroidRuntimeException: Activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.APP_ERROR_UNKNOWN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v0
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SettingsApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    return v6

    .line 240
    .end local v0
    :cond_3
    return v0
.end method


# virtual methods
.method public MyTaskInstallAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1106
    new-instance v0, Lcom/android/settings/SettingsApp$MyTaskInstall;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApp$MyTaskInstall;-><init>(Lcom/android/settings/SettingsApp;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp$MyTaskInstall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1107
    return-void
.end method

.method public MyTaskUninstallAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1119
    new-instance v0, Lcom/android/settings/SettingsApp$MyTaskUninstall;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApp$MyTaskUninstall;-><init>(Lcom/android/settings/SettingsApp;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp$MyTaskUninstall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1120
    return-void
.end method

.method public getDatabaseDir()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mDatabaseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdIniPath()Ljava/lang/String;
    .locals 6

    .line 1233
    const/4 v0, 0x0

    .line 1235
    .local v0, "configFile":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->readLcdNameInfo()Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, "lcdName":Ljava/lang/String;
    const-string v2, "ro.board.platform"

    const-string v3, "unknow"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    .local v2, "cpuInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1239
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x505edde7
    const-string v4, "msm8998"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1    # 0x505edde5
    const-string v4, "msm8996"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2    # 0x505edd65
    const-string v4, "msm8952"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3    # 0x505edd44
    const-string v4, "msm8940"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4    # 0x505edd2c
    const-string v4, "msm8937"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .end local v1
    .end local v2
    goto :goto_1

    .line 1249
    .restart local v1
    .restart local v2
    :pswitch_0    # 0x4 0x3 0x2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system/etc/pp_calib_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1250
    goto :goto_1

    .line 1244
    :pswitch_1    # 0x1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system/etc/qdcm_calib_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1245
    goto :goto_1

    .line 1241
    :pswitch_2    # 0x0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendor/etc/qdcm_calib_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1242
    nop

    .line 1257
    .end local v1
    .end local v2
    :cond_1
    :goto_1
    goto :goto_2

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1258
    .end local v1
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x505edd2c -> :sswitch_4
        0x505edd44 -> :sswitch_3
        0x505edd65 -> :sswitch_2
        0x505edde5 -> :sswitch_1
        0x505edde7 -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNetworkConnectionType()I
    .locals 6

    .line 523
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 524
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 526
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 527
    .local v2, "gprs":Landroid/net/NetworkInfo$State;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 528
    .local v4, "wifi":Landroid/net/NetworkInfo$State;
    :goto_1
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_5

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 531
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v5, :cond_4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_3

    goto :goto_2

    .line 536
    .end local v2
    .end local v4
    :cond_3
    goto :goto_4

    .line 532
    .restart local v2
    .restart local v4
    :cond_4
    :goto_2
    return v3

    .line 529
    :cond_5
    :goto_3
    const/4 v1, 0x2

    return v1

    .line 534
    .end local v2
    .end local v4
    :catch_0
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=1======divhee============get_NetworkConnectionType===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v2
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 539
    .local v2, "netInfos":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_7

    .line 540
    move v3, v1

    .local v3, "inum":I
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_7

    .line 541
    aget-object v4, v2, v3

    if-eqz v4, :cond_6

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v5, :cond_6

    .line 542
    add-int/lit8 v1, v3, 0x51

    return v1

    .line 540
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 548
    .end local v2
    .end local v3
    :cond_7
    goto :goto_6

    .line 546
    :catch_1
    move-exception v2

    .line 547
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=2======divhee============get_NetworkConnectionType===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v2
    :goto_6
    :try_start_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 551
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_a

    .line 552
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    goto :goto_8

    :cond_9
    :goto_7
    const/16 v1, 0x64

    :goto_8
    return v1

    .line 556
    .end local v2
    :cond_a
    goto :goto_9

    .line 554
    :catch_2
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=3======divhee============get_NetworkConnectionType===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v2
    :cond_b
    :goto_9
    return v1
.end method

.method public getSeWenValueDefaultFromDB()I
    .locals 3

    .line 1321
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "now_pad_lcd_ini_sewen_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 284
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 285
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 289
    .end local v0
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public hideAppToast()V
    .locals 1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mAppToast:Landroid/widget/Toast;

    .line 371
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v0
    :goto_0
    return-void
.end method

.method public hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 382
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 383
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 386
    :cond_0
    return-void
.end method

.method public initUncaughtException()V
    .locals 4

    .line 140
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mDefaultException:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/SettingsApp$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsApp$1;-><init>(Lcom/android/settings/SettingsApp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    new-instance v0, Lcom/android/settings/SettingsApp$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApp$2;-><init>(Lcom/android/settings/SettingsApp;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 187
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    .line 1051
    .local v0, "packageNameString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1052
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1053
    .local v2, "installFlags":I
    const/4 v3, 0x0

    move-object v4, v3

    .line 1055
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1056
    .local v6, "pm2":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v4, v7

    .line 1057
    if-eqz v4, :cond_1

    .line 1058
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "infoName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 1063
    .end local v6
    :cond_1
    goto :goto_0

    .line 1061
    :catch_0
    move-exception v6

    .line 1062
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1065
    .end local v6
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1066
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 1068
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v8, 0x0

    .line 1069
    .local v8, "apkExit":Z
    nop

    .line 1071
    .local v5, "versionNameEquals":Z
    if-eqz v4, :cond_2

    .line 1072
    const/16 v9, 0x2000

    :try_start_1
    invoke-virtual {v6, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1073
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_2

    .line 1074
    or-int/lit8 v2, v2, 0x2

    .line 1075
    const-string v10, "INSTALL have"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "pi"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v8, 0x1

    .line 1077
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_2

    .line 1078
    const/4 v5, 0x1

    .end local v9
    goto :goto_1

    .line 1082
    :catch_1
    move-exception v9

    .line 1083
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "exception"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9
    goto :goto_2

    .line 1084
    :cond_2
    :goto_1
    nop

    .line 1085
    :goto_2
    new-instance v9, Lcom/android/settings/apkinstall/InstallAndUninstallAction;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v9, "mInstallUninstall":Lcom/android/settings/apkinstall/InstallAndUninstallAction;
    if-eqz v8, :cond_4

    .line 1087
    if-eqz v5, :cond_3

    .line 1088
    iget-object v10, p0, Lcom/android/settings/SettingsApp;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v0, v11, v3}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    .line 1090
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v3}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 1093
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v3}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1095
    :goto_3
    return-void
.end method

.method public isCheckComplexPwdCorrect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputPwd"    # Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->updatePasswordDate()V

    .line 884
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 885
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsApp;->isCheckComplexPwdCorrect(Ljava/lang/String;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 886
    const/4 v0, 0x1

    return v0

    .line 884
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    .end local v1
    :cond_3
    return v0
.end method

.method public isCheckComplexPwdCorrect(Ljava/lang/String;Ljava/util/Date;)Z
    .locals 4
    .param p1, "inputPwd"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "currentTime":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "middleValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    const/4 v2, 0x1

    return v2

    .line 909
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckedReadboyForAdvancedEnable(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "countTimes"    # I

    .line 938
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    return v0

    .line 941
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isThiredAppInstallEnabledByFwq()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 944
    :cond_1
    new-instance v1, Lcom/android/settings/LunarCalendar;

    invoke-direct {v1}, Lcom/android/settings/LunarCalendar;-><init>()V

    .line 947
    .local v1, "lunarCalendar":Lcom/android/settings/LunarCalendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, -0x1

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 948
    .local v4, "bluetoothName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 949
    .local v5, "iFindout":I
    if-eq v5, v3, :cond_3

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 951
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/SettingsApp;->isCheckComplexPwdCorrect(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 953
    return v2

    .line 955
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/LunarCalendar;->getShortLunarNumbersAndMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_3

    .line 957
    return v2

    .line 962
    .end local v4
    .end local v5
    :cond_3
    goto :goto_0

    .line 960
    :catch_0
    move-exception v4

    .line 961
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    .end local v4
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 966
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 967
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 968
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v0

    .local v5, "inum":I
    :goto_1
    if-ge v5, p2, :cond_8

    .line 970
    const-wide/16 v6, 0x12c

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 972
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 971
    :catch_1
    move-exception v6

    .line 973
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 974
    .local v6, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 975
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 976
    .local v8, "wifi":Landroid/net/wifi/ScanResult;
    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_4
    const-string v9, ""

    .line 978
    .local v9, "ssidName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 979
    .local v10, "iFindout":I
    if-eq v10, v3, :cond_6

    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 981
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/settings/SettingsApp;->isCheckComplexPwdCorrect(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 983
    return v2

    .line 985
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings/LunarCalendar;->getShortLunarNumbersAndMd5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v11, :cond_6

    .line 987
    return v2

    .line 990
    .end local v8
    .end local v9
    .end local v10
    :cond_6
    goto :goto_3

    .line 968
    .end local v6
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 997
    .end local v1
    .end local v4
    .end local v5
    :cond_8
    goto :goto_6

    .line 942
    :cond_9
    :goto_5
    return v2

    .line 995
    :catch_2
    move-exception v1

    .line 996
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===divhee=====================isSpecialReadboyHotspot=error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v1
    :goto_6
    return v0
.end method

.method public isEBagPadModel()Z
    .locals 3

    .line 586
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.product.model.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "iniPadType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ebag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 589
    .end local v1
    :catch_0
    move-exception v1

    .line 591
    return v0
.end method

.method public varargs isFastDoubleClick([I)Z
    .locals 8
    .param p1, "gaptime"    # [I

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 601
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/settings/SettingsApp;->lastClickTime:J

    sub-long v2, v0, v2

    .line 603
    .local v2, "timeGap":J
    const/16 v4, 0x3e8

    .line 604
    .local v4, "minGapTime":I
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 605
    aget v4, p1, v5

    .line 607
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    int-to-long v6, v4

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 608
    const/4 v5, 0x1

    return v5

    .line 610
    :cond_1
    iput-wide v0, p0, Lcom/android/settings/SettingsApp;->lastClickTime:J

    .line 611
    return v5
.end method

.method public isNormalPadZxsModel()Z
    .locals 4

    .line 664
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rby_normal_pad_zxs_model_settings"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "strSaved":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "zxs_enabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "zxs_enabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 668
    return v3

    .line 673
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPasswordCorrect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputPwd"    # Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->updatePasswordDate()V

    .line 856
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 857
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 858
    const/4 v0, 0x1

    return v0

    .line 856
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1
    :cond_3
    return v0
.end method

.method public isPasswordCorrect(Ljava/lang/String;Ljava/util/Date;)Z
    .locals 4
    .param p1, "inputPwd"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .line 865
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "currentTime":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/4 v1, 0x1

    return v1

    .line 872
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRestricted()Z
    .locals 2

    .line 1153
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1154
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public needRequestNormalPadZxsModel()Z
    .locals 6

    .line 683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsApp;->setNormalPadZxsModel(Z)V

    .line 685
    return v1

    .line 687
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "rby_normal_pad_zxs_model_settings"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "strSaved":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_device_boot_times"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 690
    .local v2, "boot_times":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 691
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 692
    .local v4, "lastRequest":I
    const-string v5, "zxs_lastRequest"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    const-string v5, "zxs_lastRequest"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 695
    :cond_1
    if-ne v2, v4, :cond_2

    .line 696
    return v1

    .line 701
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    .end local v0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 117
    sput-object p0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->initUncaughtException()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "strFilesDir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsApp;->mDatabaseDir:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public openAppStore(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.dream.android.appstore"

    const-string v3, "cn.dream.android.appstore.ui.activity.AppDetailActivity_"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 397
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v2, "type"

    const-string v3, "auto_download"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :try_start_0
    instance-of v2, p2, Landroid/app/ReadboyActivity;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 403
    move-object v2, p2

    check-cast v2, Landroid/app/ReadboyActivity;

    invoke-virtual {v2, v0, v3}, Landroid/app/ReadboyActivity;->launchForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 405
    :cond_0
    instance-of v2, p2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 406
    move-object v2, p2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v3, "\u5f53\u524d\u7248\u672c\u5546\u57ce\u4e0d\u652f\u6301\u8df3\u8f6c\uff0c\u8bf7\u624b\u52a8\u6253\u5f00\u540e\u5b89\u88c5"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .end local v2
    goto :goto_1

    .line 410
    :catch_1
    move-exception v2

    .line 411
    .local v2, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v2
    :goto_0
    nop

    .line 416
    :goto_1
    return-void
.end method

.method public printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .line 568
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    .local v1, "key":Ljava/lang/String;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "===divhee=bundle==Key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v1
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    goto :goto_1

    .line 573
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===divhee=bundle==Key=null="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_2

    .line 575
    :goto_1
    nop

    .line 577
    :goto_2
    return-void
.end method

.method public readLcdNameInfo()Ljava/lang/String;
    .locals 5

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1202
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/settings/SettingsApp;->LCD_NAME_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    .line 1203
    nop

    .line 1204
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1206
    const-string v2, "SettingsApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readLcdName name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 1209
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1211
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v2

    .line 1212
    :goto_0
    const/4 v1, 0x0

    .line 1217
    if-eqz v1, :cond_0

    .line 1219
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1220
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1217
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1214
    :catch_2
    move-exception v2

    .line 1215
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    .line 1219
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1221
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    goto :goto_2

    .line 1220
    :catch_3
    move-exception v2

    .line 1222
    :goto_2
    const/4 v1, 0x0

    .line 1225
    :cond_0
    return-object v0

    .line 1217
    :goto_3
    if-eqz v1, :cond_1

    .line 1219
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1221
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 1220
    :catch_4
    move-exception v3

    .line 1222
    :goto_4
    const/4 v1, 0x0

    :cond_1
    throw v2
.end method

.method public readLcdSeWendDefaultAndWriteDB()V
    .locals 14

    .line 1265
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->getLcdIniPath()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "lcdFileName":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==1===divhee==================readLcdSeWendDefaultAndWriteDB=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1268
    const/4 v1, 0x0

    .line 1270
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v2, "lcdIni":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1272
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 1273
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 1274
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1275
    .local v3, "arrLcdInfo":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 1276
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 1277
    .local v4, "lcdInfoBuf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1278
    const-string v5, "ModeID=\"0\" DisplayID=\"0\""

    .line 1279
    .local v5, "key1":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1280
    .local v6, "ifindout1":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1281
    const-string v8, "WhitePoint=\""

    .line 1282
    .local v8, "key2":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 1283
    .local v9, "ifindout2":I
    if-eq v9, v7, :cond_0

    .line 1284
    const-string v7, "\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1285
    .local v7, "ifindout3":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1286
    .local v10, "realValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1287
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "now_pad_lcd_ini_sewen_value"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1288
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "==3===divhee==================readLcdSeWendDefaultAndWriteDB=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    .line 1296
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1298
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v3

    .line 1299
    :goto_0
    const/4 v1, 0x0

    .line 1305
    .end local v2
    :cond_1
    if-eqz v1, :cond_3

    .line 1307
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1309
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    .line 1308
    :catch_1
    move-exception v2

    .line 1310
    :goto_2
    const/4 v1, 0x0

    goto :goto_5

    .line 1305
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1302
    :catch_2
    move-exception v2

    .line 1303
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==2===divhee==================inputStream=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    .end local v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 1307
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 1308
    :catch_3
    move-exception v2

    goto :goto_2

    .line 1305
    :goto_3
    if-eqz v1, :cond_2

    .line 1307
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1309
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 1308
    :catch_4
    move-exception v3

    .line 1310
    :goto_4
    const/4 v1, 0x0

    :cond_2
    throw v2

    .line 1314
    .end local v1
    :cond_3
    :goto_5
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1162
    const-string v0, "SettingsApp"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const-string v0, "SettingsApp"

    const-string v2, "===divhee=== Restricted user, not setting location mode"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move p1, v0

    .line 1167
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee========setLocationMode=====error==mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-void

    .line 1170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1172
    .local v0, "mCurrentMode":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    const-string v2, "NEW_MODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1179
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1180
    .end local v0
    :goto_0
    return-void
.end method

.method public setNormalPadZxsModel(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 711
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_device_boot_times"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 712
    .local v0, "boot_times":I
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 713
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "zxs_lastRequest"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 714
    const-string v2, "zxs_enabled"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 715
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rby_normal_pad_zxs_model_settings"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 718
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    .end local v0
    :goto_0
    return-void
.end method

.method public showAppToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "showtime"    # I

    .line 336
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsApp;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/SettingsApp$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/SettingsApp$3;-><init>(Lcom/android/settings/SettingsApp;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .end local v0
    :goto_1
    return-void
.end method

.method public showAppToastLong(I)V
    .locals 2
    .param p1, "id"    # I

    .line 357
    if-lez p1, :cond_1

    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 361
    return-void

    .line 358
    :cond_1
    :goto_0
    return-void
.end method

.method public showAppToastShort(I)V
    .locals 2
    .param p1, "id"    # I

    .line 328
    if-lez p1, :cond_1

    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsApp;->INSTANCE:Lcom/android/settings/SettingsApp;

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 332
    return-void

    .line 329
    :cond_1
    :goto_0
    return-void
.end method

.method public showPasswordDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 755
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;Z)V

    .line 756
    return-void
.end method

.method public showPasswordDialog(Landroid/app/Activity;Z)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "needExit"    # Z

    .line 758
    const-string v0, "SettingsApp"

    const-string v1, "showPasswordDialog device_name!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/SettingsApp;->updatePasswordDate()V

    .line 763
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const v3, 0x7f0d0081

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 764
    .local v0, "deviceNameLayout":Landroid/view/ViewGroup;
    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 765
    .local v1, "edit":Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 766
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 767
    new-instance v3, Lcom/android/settings/custom/EditFilterName;

    invoke-direct {v3, v1}, Lcom/android/settings/custom/EditFilterName;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 769
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120802

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/SettingsApp;->mAppDateNow:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 771
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/SettingsApp$6;

    invoke-direct {v4, p0, v1, p2, p1}, Lcom/android/settings/SettingsApp$6;-><init>(Lcom/android/settings/SettingsApp;Landroid/widget/EditText;ZLandroid/app/Activity;)V

    .line 772
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/SettingsApp$5;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsApp$5;-><init>(Lcom/android/settings/SettingsApp;)V

    .line 793
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/SettingsApp$4;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/settings/SettingsApp$4;-><init>(Lcom/android/settings/SettingsApp;ZLandroid/app/Activity;)V

    .line 800
    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 808
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 809
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 812
    .local v2, "alertDlg":Landroid/app/AlertDialog;
    new-instance v9, Lcom/android/settings/SettingsApp$7;

    move-object v3, v9

    move-object v4, p0

    move-object v5, v1

    move v6, p2

    move-object v7, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/SettingsApp$7;-><init>(Lcom/android/settings/SettingsApp;Landroid/widget/EditText;ZLandroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 837
    return-void
.end method

.method public toggleGps(Z)V
    .locals 1
    .param p1, "bOnOff"    # Z

    .line 1148
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1149
    .local v0, "mode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsApp;->setLocationMode(I)V

    .line 1150
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pck"    # Ljava/lang/String;

    .line 1031
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1032
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move-object v2, v1

    .line 1034
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1037
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v3

    .line 1036
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v3
    :goto_0
    if-eqz v2, :cond_0

    .line 1039
    new-instance v3, Lcom/android/settings/apkinstall/InstallAndUninstallAction;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;-><init>(Landroid/content/Context;)V

    .line 1040
    .local v3, "mInstallUninstall":Lcom/android/settings/apkinstall/InstallAndUninstallAction;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v1}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->uninstallApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1041
    .end local v3
    goto :goto_1

    .line 1042
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsApp;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishUninstall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1044
    :goto_1
    return-void
.end method

.method public updatePasswordDate()V
    .locals 8

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 841
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateNow:Ljava/util/Date;

    .line 842
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    .line 845
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Date;

    const-wide/32 v4, 0xea60

    sub-long v6, v0, v4

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Date;

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Date;

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v2, p0, Lcom/android/settings/SettingsApp;->mAppDateMore:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Date;

    const-wide/32 v4, 0x2bf20

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method
