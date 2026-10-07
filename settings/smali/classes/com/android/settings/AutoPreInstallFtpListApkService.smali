.class public Lcom/android/settings/AutoPreInstallFtpListApkService;
.super Landroid/app/Service;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;,
        Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;,
        Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUnzipDataFile;,
        Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;,
        Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;,
        Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    }
.end annotation


# static fields
.field public static isReadboyAppPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final NeerDelayTime:I

.field private final NeerTimeBase:I

.field private final SPEED_0_TIMES_LENGTH:I

.field public final TAG:Ljava/lang/String;

.field private cacheLocalAppPath:Ljava/lang/String;

.field private installCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCallCitOnlyOneTimes:Z

.field private lastTotalRxBytes:J

.field private mAllTryInstalled:I

.field public final mCheckRestartDownlaodTimeDelay:I

.field private mCnnDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mCountNetSpeed_0:I

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mFlowSpeedRunnable:Ljava/lang/Runnable;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHandler:Landroid/os/Handler;

.field mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

.field private mInstallApks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallLoadding:Z

.field public final mInstall_From_Ftp_Download_Mode:Z

.field private mIsAllInstallOk:Z

.field private mIsRegBroadcastReceiver:Z

.field private mLastSSID:Ljava/lang/String;

.field private mLocaledApks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedForceRestartAction:Z

.field private mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mNotConnectedTimes:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private mRandom:Ljava/util/Random;

.field private mReadboyForceInstallApks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadboySsidMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private nowTotalRxBytes:J

.field public restartDownloadTaskChecked:Ljava/lang/Runnable;

.field private uninstallCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 3020
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.sim.cit"

    const-string v2, "com.baidu.map.location"

    const-string v3, "org.codeaurora.bluetooth"

    const-string v4, "com.sensetime.humanaction"

    const-string v5, "com.iflytek.speechcloud"

    const-string v6, "android.dream.cn.rbrecite"

    const-string v7, "com.farproc.wifi.analyzer"

    const-string v8, "com.download.studymanager"

    const-string v9, "com.dinghmcn.android.wificonnectclient"

    const-string v10, "com.download.studymanager"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyAppPkgNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    const-string v0, "AutoPreInstallAPK"

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstall_From_Ftp_Download_Mode:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallLoadding:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 106
    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLastSSID:Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    .line 110
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mRandom:Ljava/util/Random;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->installCountList:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->uninstallCountList:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->uploadPkgNames:Ljava/util/ArrayList;

    .line 118
    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isCallCitOnlyOneTimes:Z

    .line 124
    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    .line 410
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    .line 412
    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedForceRestartAction:Z

    .line 415
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$1;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    .line 465
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$2;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCnnDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 833
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$4;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$4;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 847
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$5;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$5;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1192
    const v1, 0xea60

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCheckRestartDownlaodTimeDelay:I

    .line 1196
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$6;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$6;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    .line 2508
    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$8;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    .line 3245
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->lastTotalRxBytes:J

    .line 3246
    iput-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->nowTotalRxBytes:J

    .line 3248
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->NeerTimeBase:I

    .line 3250
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->NeerDelayTime:I

    .line 3252
    const v1, 0x927c0

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->SPEED_0_TIMES_LENGTH:I

    .line 3254
    iput v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCountNetSpeed_0:I

    .line 3256
    iput v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNotConnectedTimes:I

    .line 3273
    new-instance v0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;

    invoke-direct {v0, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$11;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mFlowSpeedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static GantPermisssionForAllReadboyApps(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3063
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyPackageNeedGantPermisssion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 3067
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 3066
    :catch_0
    move-exception v0

    .line 3068
    :goto_0
    return-void
.end method

.method public static GantPermisssionForAllReadboyApps(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 3053
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->GantPermisssionForAllReadboyApps(Landroid/content/Context;Ljava/lang/String;)V

    .line 3054
    return-void
.end method

.method private static IsExsits(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p0, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "SSID"    # Ljava/lang/String;

    .line 3713
    if-eqz p0, :cond_1

    .line 3714
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3715
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3716
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 3717
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 3718
    return-object v2

    .line 3720
    .end local v2
    :cond_0
    goto :goto_0

    .line 3723
    .end local v0
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 3725
    :cond_1
    nop

    .line 3726
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 988
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 989
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 990
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 991
    return-object v2

    .line 993
    .end local v2
    :cond_0
    goto :goto_0

    .line 998
    .end local v0
    :cond_1
    goto :goto_1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    .end local v0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/settings/AutoPreInstallFtpListApkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedForceRestartAction:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/AutoPreInstallFtpListApkService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedForceRestartAction:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/AutoPreInstallFtpListApkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageDeleteObserver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->installPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/AutoPreInstallFtpListApkService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-wide v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->lastTotalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/settings/AutoPreInstallFtpListApkService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # J

    .line 78
    iput-wide p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->lastTotalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/settings/AutoPreInstallFtpListApkService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-wide v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->nowTotalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/settings/AutoPreInstallFtpListApkService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # J

    .line 78
    iput-wide p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->nowTotalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/settings/AutoPreInstallFtpListApkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCountNetSpeed_0:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCountNetSpeed_0:I

    return p1
.end method

.method static synthetic access$1808(Lcom/android/settings/AutoPreInstallFtpListApkService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCountNetSpeed_0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCountNetSpeed_0:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/AutoPreInstallFtpListApkService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Z

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->wifiForget(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;JLandroid/app/DownloadManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/app/DownloadManager;

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isNeedRestartDownloadTask(Landroid/content/Context;JLandroid/app/DownloadManager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/AutoPreInstallFtpListApkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNotConnectedTimes:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNotConnectedTimes:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/settings/AutoPreInstallFtpListApkService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNotConnectedTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNotConnectedTimes:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mFlowSpeedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AutoPreInstallFtpListApkService;Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .param p3, "x3"    # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/AutoPreInstallFtpListApkService;Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .param p3, "x3"    # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadOnlyDataBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoForgetEspHotspot(Ljava/lang/String;)V
    .locals 7
    .param p0, "ssidHeaderName"    # Ljava/lang/String;

    .line 3733
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3734
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3736
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_2

    .line 3737
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3738
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3740
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 3742
    .local v3, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 3743
    .local v4, "ssidName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_1

    .line 3746
    :try_start_1
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3749
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3747
    :catch_0
    move-exception v5

    .line 3748
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3751
    .end local v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v6, Lcom/android/settings/AutoPreInstallFtpListApkService$15;

    invoke-direct {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService$15;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3763
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 3761
    :catch_1
    move-exception v5

    .line 3762
    .restart local v5
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3765
    .end local v3
    .end local v4
    .end local v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    goto :goto_0

    .line 3768
    .end local v1
    :catch_2
    move-exception v1

    .line 3769
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    .end local v1
    goto :goto_4

    .line 3770
    .restart local v0
    :cond_2
    nop

    .line 3772
    .end local v0
    :cond_3
    :goto_4
    return-void
.end method

.method public static autoLinkEspReadboyHotspot()V
    .locals 11

    .line 3560
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/SettingsAdbUsbReceiver;->isSpecialReadboyHotspot(Landroid/content/Context;I)Z

    move-result v0

    .line 3561
    .local v0, "isWifiSsidExsisted":Z
    if-nez v0, :cond_3

    .line 3562
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_pad_now_is_in_factory"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3563
    .local v1, "isInFactory":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v4

    if-nez v4, :cond_3

    .line 3565
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 3566
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3567
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 3568
    nop

    .local v3, "inum":I
    :goto_0
    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    .line 3570
    const-wide/16 v5, 0x12c

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 3572
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3571
    :catch_0
    move-exception v5

    .line 3573
    :goto_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 3575
    .local v5, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3576
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3577
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 3579
    .local v8, "wifi":Landroid/net/wifi/ScanResult;
    :try_start_1
    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "readboy_workshop_test_hotspot"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3580
    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3584
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_3

    .line 3582
    :catch_1
    move-exception v9

    .line 3583
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3585
    .end local v8
    .end local v9
    :goto_3
    goto :goto_2

    .line 3587
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 3589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    rem-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-static {v4, v7, v8, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->wifiAutoConnect(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3590
    return-void

    .line 3568
    .end local v5
    .end local v6
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3597
    .end local v1
    .end local v3
    .end local v4
    :cond_3
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .line 2958
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2959
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2960
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2961
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 2962
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 2963
    return v1

    .line 2960
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2967
    .end local v0
    .end local v2
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private downloadBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preAppInfo"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .param p3, "isInnerFolder"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1029
    const/4 v0, 0x0

    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 1034
    :cond_0
    iget-object v3, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    .line 1036
    .local v3, "apkUrl":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "fileName":Ljava/lang/String;
    move-object v6, v0

    .line 1039
    .local v6, "downloadUpdateApkFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1040
    .local v7, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/app/DownloadManager$Request;

    invoke-direct {v8, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1042
    .local v8, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v8, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 1043
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5e94\u7528\u66f4\u65b0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1044
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u672c\u6b21\u66f4\u65b0\u63cf\u8ff0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1045
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 1047
    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1050
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    const/4 v11, 0x0

    if-le v9, v10, :cond_1

    .line 1055
    invoke-virtual {v8, v11}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1057
    :cond_1
    const/4 v9, 0x0

    .line 1058
    .local v9, "filePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v12, "mounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1059
    if-eqz p3, :cond_2

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    goto :goto_0

    .line 1062
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 1071
    :goto_0
    iget-object v12, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1072
    invoke-virtual {v1, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->findLocalApkPath(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    move-result-object v12

    .line 1073
    .local v12, "localPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v12, :cond_3

    .line 1074
    iget-object v13, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    move-object v6, v13

    .line 1075
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v13, "cacheApk":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1077
    iput-object v6, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 1078
    const/16 v14, 0x8

    iput v14, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 1080
    new-instance v14, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;

    invoke-direct {v14, v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    new-array v15, v5, [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    aput-object v2, v15, v11

    invoke-virtual {v14, v15}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1082
    new-instance v14, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;

    invoke-direct {v14, v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    aput-object v5, v0, v11

    invoke-virtual {v14, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1083
    return-object v6

    .line 1093
    .end local v12
    .end local v13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1094
    const-string v0, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=====divhee====downloadUpdateApkFilePath==="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iput-object v6, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 1096
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 1097
    .local v12, "dstFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_4

    .line 1100
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 1103
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1101
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .end local v0
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v13, v0

    .line 1106
    .local v13, "fileUri":Landroid/net/Uri;
    invoke-virtual {v8, v13}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 1108
    iget-wide v14, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v12

    const-wide/16 v11, -0x1

    .end local v12
    .local v17, "dstFile":Ljava/io/File;
    cmp-long v0, v14, v11

    if-eqz v0, :cond_5

    .line 1110
    :try_start_3
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v5, v5, [J

    iget-wide v14, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    const/16 v16, 0x0

    aput-wide v14, v5, v16

    invoke-virtual {v0, v5}, Landroid/app/DownloadManager;->remove([J)I

    .line 1112
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1111
    :catch_1
    move-exception v0

    .line 1113
    :goto_2
    :try_start_4
    iput-wide v11, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    .line 1115
    :cond_5
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v8}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v11

    iput-wide v11, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    .line 1119
    const-string v0, "AutoPreInstallAPK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====divhee======download_BySelf==req====="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v7
    .end local v8
    .end local v9
    .end local v13
    .end local v17
    goto :goto_3

    .line 1066
    .restart local v7
    .restart local v8
    .restart local v9
    :cond_6
    const-string v5, "AutoPreInstallAPK"

    const-string v11, "=======divhee======ERROR : no TFCard, no SDCard===="

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 1120
    .end local v7
    .end local v8
    .end local v9
    :catch_2
    move-exception v0

    .line 1121
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1122
    const-string v5, "AutoPreInstallAPK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "======divhee===download_BySelf error========fileName=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "===downloadUpdateApkFilePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v6, 0x0

    .line 1125
    .end local v0
    :goto_3
    return-object v6

    .line 1030
    .end local v3
    .end local v4
    .end local v6
    :cond_7
    :goto_4
    const-string v3, "AutoPreInstallAPK"

    const-string v4, "========divhee=======download_BySelf=====apkUrl=null=="

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-object v0
.end method

.method public static downloadInfoFromFwqAboutPadSettings(Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;)V
    .locals 2
    .param p0, "downloadInterface"    # Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;

    .line 3348
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$12;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$12;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3405
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3406
    return-void
.end method

.method public static downloadIsFactoryFromFwqAboutPadSettings()V
    .locals 8

    .line 3432
    invoke-static {}, Lcom/android/settings/DateTimeSettings;->forceSyncDateTimeNowTime()V

    .line 3434
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/SettingsAdbUsbReceiver;->isSpecialReadboyHotspot(Landroid/content/Context;I)Z

    move-result v0

    .line 3435
    .local v0, "isWifiSsidExsisted":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3437
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3438
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 3443
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "readboy_pad_now_is_in_factory"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3444
    .local v3, "isInFactory":I
    if-ne v3, v1, :cond_1

    .line 3446
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3447
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 3451
    :cond_1
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcAnyOneNeedClose()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3453
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    .line 3454
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SettingsCleanCachedReceiver;->cleanAdbDebuggingKeys(Landroid/content/Context;)V

    .line 3456
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-nez v1, :cond_4

    .line 3457
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3458
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3459
    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->autoLinkEspReadboyHotspot()V

    .line 3461
    .end local v1
    :cond_3
    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 3462
    invoke-static {}, Lcom/android/settings/DateTimeSettings;->forceSyncDateTimeNowTime()V

    .line 3464
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3465
    .local v1, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3466
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    const-string v5, ""

    .line 3467
    .local v5, "ssidName":Ljava/lang/String;
    :goto_0
    const-string v6, "readboy_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3469
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/settings/AutoPreInstallFtpListApkService$13;

    invoke-direct {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService$13;-><init>()V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3540
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 3551
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    goto :goto_2

    .line 3544
    :catch_0
    move-exception v1

    .line 3545
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3546
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcAnyOneNeedClose()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3548
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    .line 3549
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SettingsCleanCachedReceiver;->cleanAdbDebuggingKeys(Landroid/content/Context;)V

    .line 3553
    .end local v1
    :cond_7
    :goto_2
    return-void
.end method

.method private downloadOnlyDataBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preAppInfo"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .param p3, "isInnerFolder"    # Z

    .line 1134
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1139
    :cond_0
    iget-object v1, p2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    .line 1140
    .local v1, "dataUrl":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, "fileName":Ljava/lang/String;
    nop

    .line 1143
    .local v0, "downloadUpdateDataFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1144
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-direct {v5, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1146
    .local v5, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6570\u636e\u66f4\u65b0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672c\u6b21\u66f4\u65b0\u63cf\u8ff0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1149
    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 1151
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1154
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-le v3, v6, :cond_1

    .line 1159
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1162
    :cond_1
    iget-object v3, p2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    move-object v0, v3

    .line 1163
    const-string v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=====divhee====downloadUpdateDataFilePath==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v3, "dstFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_2

    .line 1168
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1171
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v6

    .line 1170
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1173
    .end local v6
    :cond_2
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1174
    .local v6, "fileUri":Landroid/net/Uri;
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 1176
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v7, v5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v7

    iput-wide v7, p2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    .line 1180
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "====divhee======download_BySelf==req====="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1181
    :catch_1
    move-exception v3

    .line 1182
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1183
    const-string v4, "AutoPreInstallAPK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "======divhee===download_BySelf error========fileName=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "===downloadUpdateDataFilePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x0

    .line 1186
    .end local v3
    :goto_1
    return-object v0

    .line 1135
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    :goto_2
    const-string v1, "AutoPreInstallAPK"

    const-string v2, "========divhee=======download_BySelf=====apkUrl=null=="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-object v0
.end method

.method public static getAuthKey()Ljava/lang/String;
    .locals 5

    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getAuthKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # Ljava/lang/String;

    .line 1770
    const-string v0, "apps"

    .line 1771
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "M4S8tUB8OBBvIUN7"

    .line 1773
    .local v1, "appSecret":Ljava/lang/String;
    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object p0, v4, v6

    const/4 v7, 0x2

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1774
    .local v2, "md5":Ljava/lang/String;
    const-string v4, "%s-%s-%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p0, v3, v6

    aput-object v2, v3, v7

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1775
    .local v3, "authKey":Ljava/lang/String;
    return-object v3
.end method

.method private getBytesAndStatus(J)[I
    .locals 7
    .param p1, "downloadId"    # J

    .line 1340
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1343
    .local v0, "bytesAndStatus":[I
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1344
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v3, 0x0

    .line 1346
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1347
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1349
    const-string v5, "bytes_so_far"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v0, v4

    .line 1351
    const-string v4, "total_size"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v2

    .line 1353
    const/4 v2, 0x2

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v2

    .line 1356
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 1358
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1361
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v2

    .line 1360
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====getBytesAndStatus==divhee==============cursor=error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v2
    :goto_0
    const/4 v3, 0x0

    .line 1365
    :cond_1
    return-object v0

    .line 1356
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_2

    .line 1358
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1361
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1359
    :catch_1
    move-exception v4

    .line 1360
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====getBytesAndStatus==divhee==============cursor=error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v4
    :goto_1
    const/4 v3, 0x0

    :cond_2
    throw v2

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method public static getInFatoryMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # Ljava/lang/String;

    .line 1784
    const-string v0, "apps"

    .line 1785
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "M4S8tUB8OBBvIUN7"

    .line 1786
    .local v1, "appSecret":Ljava/lang/String;
    const-string v2, "%s-%s-%s-%s-%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Readboy_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1787
    .local v2, "md5":Ljava/lang/String;
    return-object v2
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3230
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3232
    :catch_0
    move-exception v0

    .line 3233
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPermisssionGroup(Lcom/android/settings/model/AppPermissions;Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;
    .locals 3
    .param p0, "mAppPermissions"    # Lcom/android/settings/model/AppPermissions;
    .param p1, "group"    # Ljava/lang/String;

    .line 3221
    invoke-virtual {p0}, Lcom/android/settings/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/model/AppPermissionGroup;

    .line 3222
    .local v1, "mGroup":Lcom/android/settings/model/AppPermissionGroup;
    invoke-virtual {v1}, Lcom/android/settings/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3223
    return-object v1

    .line 3225
    .end local v1
    :cond_0
    goto :goto_0

    .line 3226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStringMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .line 1735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    const-string v0, ""

    return-object v0

    .line 1738
    :cond_0
    const/4 v0, 0x0

    .line 1740
    .local v0, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v0, v1

    .line 1741
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1742
    .local v1, "bytes":[B
    const-string v2, ""

    .line 1743
    .local v2, "result":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v5, v1, v4

    .line 1744
    .local v5, "b":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1745
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1748
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

    .line 1743
    .end local v5
    .end local v6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1750
    :cond_2
    return-object v2

    .line 1751
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 1752
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1754
    .end local v1
    const-string v1, ""

    return-object v1
.end method

.method private installPackage(Ljava/lang/String;)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2390
    const-string v0, "AutoPreInstallAPK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======divhee==========installPackage===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2392
    return-void

    .line 2394
    :cond_0
    const/4 v0, 0x0

    .line 2395
    .local v0, "packageNameString":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/apkinstall/InstallAndUninstallAction;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;-><init>(Landroid/content/Context;)V

    .line 2396
    .local v1, "mInstallUninstall":Lcom/android/settings/apkinstall/InstallAndUninstallAction;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2397
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 2398
    .local v3, "installFlags":I
    const/4 v4, 0x0

    .line 2400
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 2403
    goto :goto_0

    .line 2401
    :catch_0
    move-exception v6

    .line 2402
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2404
    .end local v6
    :goto_0
    if-eqz v4, :cond_5

    .line 2407
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2408
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 2412
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    .line 2414
    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 2416
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x0

    .line 2417
    .local v7, "apkExit":Z
    move v8, v5

    .line 2419
    .local v8, "versionNameEquals":Z
    :try_start_2
    iget-object v9, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    const/16 v10, 0x2000

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 2420
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_2

    .line 2421
    or-int/lit8 v3, v3, 0x2

    .line 2423
    const/4 v7, 0x1

    .line 2424
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v10, :cond_2

    .line 2425
    const/4 v8, 0x1

    .line 2430
    .end local v9
    :cond_2
    goto :goto_1

    .line 2428
    :catch_1
    move-exception v9

    .line 2429
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "AutoPreInstallAPK"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    .end local v9
    :goto_1
    if-eqz v7, :cond_4

    .line 2432
    if-eqz v8, :cond_3

    .line 2433
    const/4 v9, 0x1

    invoke-direct {p0, v0, p1, v9}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2435
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v9

    invoke-virtual {p0, v9, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPreInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v1, p0, p1, v9}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 2440
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v9

    invoke-virtual {p0, v9, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPreInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v1, p0, p1, v9}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .end local v6
    .end local v7
    .end local v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 2442
    :catch_2
    move-exception v6

    .line 2443
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2444
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=info=error====divhee===========fileName=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    invoke-direct {p0, v0, p1, v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2446
    .end local v6
    :goto_2
    goto :goto_4

    .line 2449
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPreInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, p0, p1, v6}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 2453
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 2450
    :catch_3
    move-exception v6

    .line 2451
    .restart local v6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2452
    invoke-direct {p0, v0, p1, v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2455
    .end local v6
    :goto_3
    const-string v5, "AutoPreInstallAPK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=info=null====divhee===========fileName=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :goto_4
    return-void
.end method

.method private static isNeedRestartDownloadTask(Landroid/content/Context;JLandroid/app/DownloadManager;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "download_id"    # J
    .param p3, "downloadManager"    # Landroid/app/DownloadManager;

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 1247
    .local v1, "isNeedDownloadAgain":I
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1248
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 1249
    invoke-virtual {p3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 1250
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1251
    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1252
    .local v3, "columnIndex":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1253
    .local v4, "status":I
    const-string v5, "reason"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1254
    .local v5, "columnReason":I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1255
    .local v6, "reason":I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 1256
    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    const/16 v7, 0x10

    if-eq v4, v7, :cond_0

    packed-switch v4, :pswitch_data_0

    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    goto :goto_1

    .line 1312
    .restart local v2
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    :pswitch_0    # 0x2
    goto :goto_1

    .line 1308
    :pswitch_1    # 0x1
    move v1, v4

    .line 1309
    goto :goto_1

    .line 1287
    :cond_0
    move v1, v4

    .line 1288
    goto :goto_1

    .line 1290
    :cond_1
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 1296
    :pswitch_2    # 0x4
    goto :goto_0

    .line 1293
    :pswitch_3    # 0x3
    goto :goto_0

    .line 1299
    :pswitch_4    # 0x2
    nop

    .line 1304
    :goto_0
    move v1, v4

    .line 1305
    nop

    .line 1321
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1323
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1325
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    goto :goto_3

    .line 1324
    :catch_0
    move-exception v2

    .line 1326
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 1321
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 1318
    :catch_1
    move-exception v2

    .line 1319
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====divhee==============isNeedRestartDownload_Task=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    .end local v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 1323
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1324
    :catch_2
    move-exception v2

    goto :goto_3

    .line 1330
    :cond_3
    :goto_4
    return v1

    .line 1321
    :goto_5
    if-eqz v0, :cond_4

    .line 1323
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1325
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 1324
    :catch_3
    move-exception v3

    .line 1326
    :goto_6
    const/4 v0, 0x0

    :cond_4
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
    .end packed-switch
.end method

.method public static isReadboyDslHotSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "SSID"    # Ljava/lang/String;
    .param p1, "espSSID"    # Ljava/lang/String;

    .line 749
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 750
    return v1

    .line 753
    :cond_0
    const-string v0, "\""

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "realSSID":Ljava/lang/String;
    const-string v2, "readboy5G_pre_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "readboy_pre_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 757
    :goto_1
    return v1
.end method

.method public static isReadboyPackageNeedGantPermisssion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3033
    if-eqz p0, :cond_1

    const-string v0, "com.android."

    .line 3034
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.readboy."

    .line 3035
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.readboy."

    .line 3036
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.dream."

    .line 3037
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.dream."

    .line 3038
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.dream."

    .line 3039
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.process.media"

    .line 3040
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyAppPkgNames:Ljava/util/ArrayList;

    .line 3041
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3043
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3045
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isStartWithUnicode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 1803
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1806
    :cond_0
    const-string v1, "\\u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1807
    return v0

    .line 1810
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 1811
    return v0

    .line 1813
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "content":Ljava/lang/String;
    const-string v1, "[0-9|a-f|A-F][0-9|a-f|A-F][0-9|a-f|A-F][0-9|a-f|A-F]"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1816
    .local v1, "isMatch":Z
    return v1

    .line 1804
    .end local v0
    .end local v1
    :cond_3
    :goto_0
    return v0
.end method

.method public static isWifiConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;

    .line 3639
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3642
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 3643
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 3644
    return v0

    .line 3646
    :cond_1
    sget-object v2, Lcom/android/settings/AutoPreInstallFtpListApkService$16;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3655
    return v0

    .line 3653
    :pswitch_0    # 0x2 0x3 0x4 0x5 0x6 0x1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3640
    .end local v1
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method private static newWifiConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p0, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "iType"    # I

    .line 3664
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3665
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 3666
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 3667
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 3668
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 3669
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 3670
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 3672
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3674
    invoke-static {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->IsExsits(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3675
    .local v2, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 3676
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3679
    :cond_1
    const/4 v3, 0x0

    if-ne p3, v1, :cond_2

    .line 3682
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 3684
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p3, v5, :cond_3

    .line 3686
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3687
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 3688
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    .line 3689
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 3690
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 3691
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 3692
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 3693
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 3694
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 3695
    :cond_3
    if-ne p3, v4, :cond_4

    .line 3697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3698
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3699
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 3700
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 3701
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 3702
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 3704
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 3705
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 3706
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 3708
    :cond_4
    :goto_0
    return-object v0
.end method

.method private newWifiConfig(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "iType"    # I

    .line 915
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 916
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 917
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 918
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 919
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 920
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 921
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 923
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 925
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 926
    .local v2, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 927
    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 930
    :cond_1
    const/4 v3, 0x0

    if-ne p3, v1, :cond_2

    .line 933
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 935
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p3, v5, :cond_3

    .line 937
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 938
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 939
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    .line 940
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 941
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 942
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 943
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 944
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 945
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 946
    :cond_3
    if-ne p3, v4, :cond_4

    .line 948
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 949
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 950
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 951
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 952
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 953
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 955
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 956
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 957
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 981
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static nowStartAutoPreInstallFtpListApkService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    const-string v0, ""

    const-string v1, "===divhee==========start====now_StartAutoPreInstallFtpListApkService=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AutoPreInstallFtpListApkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "call_me"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    return-void
.end method

.method private packageDeleteObserver(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2749
    const-string v0, "AutoPreInstallAPK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========divhee==========packageDeleteObserver===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    return-void
.end method

.method private packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "installRealSucess"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2549
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_7

    .line 2550
    move v2, v8

    .local v2, "inum":I
    :goto_0
    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 2552
    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2553
    .local v10, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v10, :cond_3

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2555
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    iget-object v12, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-boolean v13, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v13, :cond_0

    iget-object v13, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2556
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v11, :cond_1

    iget v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    if-gt v11, v4, :cond_1

    iget-wide v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_1

    .line 2558
    iput-boolean v8, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2559
    iget v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    add-int/2addr v11, v9

    iput v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    .line 2560
    iput v3, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 2561
    iget-wide v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_2

    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v11, :cond_2

    .line 2563
    iput-boolean v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedForceRestartAction:Z

    .line 2564
    iget-object v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2565
    iget-object v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 2569
    :cond_1
    iput-boolean v9, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2573
    :cond_2
    :goto_2
    iget-object v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2550
    .end local v10
    :cond_3
    add-int/2addr v2, v9

    goto :goto_0

    .line 2576
    .end local v2
    :cond_4
    move v2, v8

    .restart local v2
    :goto_3
    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 2578
    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2579
    .restart local v10
    if-eqz v10, :cond_6

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2580
    iput-boolean v9, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2581
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    iget-object v12, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-boolean v13, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v13, :cond_5

    iget-object v13, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2582
    iget-object v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2576
    .end local v10
    :cond_6
    add-int/2addr v2, v9

    goto :goto_3

    .line 2592
    .end local v2
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v2, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2593
    .local v2, "savedDownloadOptionStatus":I
    const/4 v10, 0x2

    if-ne v2, v10, :cond_8

    move v11, v9

    goto :goto_5

    :cond_8
    move v11, v8

    .line 2594
    .local v11, "isAllTryInstalled":Z
    :goto_5
    if-ne v2, v10, :cond_9

    move v12, v9

    goto :goto_6

    :cond_9
    move v12, v8

    .line 2595
    .local v12, "isAllInstalledOk":Z
    :goto_6
    if-ne v2, v10, :cond_a

    move v13, v9

    goto :goto_7

    :cond_a
    move v13, v8

    .line 2596
    .local v13, "isAllDataUnzipOk":Z
    :goto_7
    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v8

    .local v11, "inum":I
    .local v12, "isAllTryInstalled":Z
    .local v13, "isAllInstalledOk":Z
    .local v14, "isAllDataUnzipOk":Z
    :goto_8
    if-eqz v12, :cond_14

    iget-object v15, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_14

    .line 2598
    iget-object v15, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2599
    .local v15, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v15, :cond_13

    .line 2600
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    iget-object v10, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v3, :cond_b

    iget-object v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    invoke-static {v7, v10, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2601
    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-eqz v3, :cond_c

    .line 2602
    iput-boolean v9, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2604
    :cond_c
    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v3, :cond_d

    .line 2605
    const/4 v12, 0x0

    .line 2606
    const/4 v13, 0x0

    .line 2608
    :cond_d
    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v3, :cond_e

    .line 2609
    const/4 v13, 0x0

    goto :goto_b

    .line 2610
    :cond_e
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    iget-object v7, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-boolean v10, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v10, :cond_f

    iget-object v10, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    invoke-static {v3, v7, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2611
    const/4 v13, 0x0

    .line 2613
    iput-boolean v8, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2614
    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v3, :cond_10

    iget v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    if-gt v3, v4, :cond_10

    iget-wide v9, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    cmp-long v3, v9, v5

    if-eqz v3, :cond_10

    .line 2615
    const/4 v12, 0x0

    .line 2617
    iput-boolean v8, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2618
    iget v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    iput v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    .line 2619
    const/4 v3, -0x1

    iput v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 2620
    iget-wide v9, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    cmp-long v7, v9, v5

    if-eqz v7, :cond_11

    iget-boolean v7, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v7, :cond_11

    .line 2622
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedForceRestartAction:Z

    .line 2623
    iget-object v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2624
    iget-object v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v7, v9, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 2628
    :cond_10
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2632
    :cond_11
    :goto_b
    invoke-virtual {v15}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2634
    const/4 v14, 0x0

    .line 2636
    :cond_12
    iget-boolean v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-eqz v3, :cond_13

    invoke-virtual {v15}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2638
    iget-object v3, v15, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v9, "android.permission.READ_MEDIA_STORAGE"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x1

    invoke-static {v0, v3, v7, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 2596
    .end local v15
    :cond_13
    add-int/lit8 v11, v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_8

    .line 2643
    .end local v11
    :cond_14
    nop

    .local v8, "inum":I
    :goto_c
    move v3, v8

    .end local v8
    .local v3, "inum":I
    if-eqz v12, :cond_17

    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 2645
    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2646
    .local v4, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v4, :cond_16

    .line 2647
    iget-boolean v5, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v5, :cond_15

    .line 2648
    const/4 v12, 0x0

    .line 2649
    const/4 v13, 0x0

    .line 2651
    :cond_15
    iget-boolean v5, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v5, :cond_16

    .line 2652
    const/4 v4, 0x0

    .line 2643
    .end local v13
    .local v4, "isAllInstalledOk":Z
    move v13, v4

    .end local v4
    .restart local v13
    :cond_16
    add-int/lit8 v8, v3, 0x1

    .end local v3
    .restart local v8
    goto :goto_c

    .line 2657
    .end local v8
    :cond_17
    if-eqz v13, :cond_18

    .line 2658
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    goto :goto_d

    .line 2660
    :cond_18
    const/4 v3, 0x1

    :goto_d
    if-eqz v12, :cond_19

    .line 2661
    iput v3, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2663
    :cond_19
    const-string v3, "AutoPreInstallAPK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "===downloadinstallmode=====divhee==========packageInstallOvserver===="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "==isAllInstalled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "==mIsAllInstallOk="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    if-eqz v12, :cond_1b

    if-eqz v14, :cond_1b

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 2666
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deletePreInstallLocalApks()V

    .line 2668
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SettingsCleanCachedReceiver;->readboyCleanLauncherAppDataClear(Landroid/content/Context;)V

    .line 2670
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "first_time_install_pre_apps_flag"

    iget-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-eqz v7, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v3, 0x3

    :goto_e
    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2671
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2673
    invoke-virtual {v0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .line 2724
    .end local v2
    .end local v12
    .end local v13
    .end local v14
    :cond_1b
    return-void
.end method

.method public static requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "needGantPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3077
    .local p3, "espPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee======requestPermisssionForApps===1==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    invoke-static {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3079
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3082
    :cond_0
    new-instance v1, Lcom/android/settings/model/AppPermissions;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Lcom/android/settings/AutoPreInstallFtpListApkService$9;

    invoke-direct {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService$9;-><init>()V

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 3088
    .local v1, "mAppPermissions":Lcom/android/settings/model/AppPermissions;
    invoke-virtual {v1}, Lcom/android/settings/model/AppPermissions;->refresh()V

    .line 3096
    invoke-virtual {v1}, Lcom/android/settings/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/model/AppPermissionGroup;

    .line 3115
    .local v3, "group":Lcom/android/settings/model/AppPermissionGroup;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3116
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Lcom/android/settings/model/AppPermissionGroup;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/model/Permission;

    .line 3117
    .local v6, "permission":Lcom/android/settings/model/Permission;
    invoke-virtual {v6}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    .line 3118
    .local v7, "perm":Landroid/content/pm/PermissionInfo;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 3123
    .local v9, "filterPermissions":[Ljava/lang/String;
    iget-object v10, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPermisssionGroup(Lcom/android/settings/model/AppPermissions;Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;

    move-result-object v10

    .line 3124
    .local v10, "permissionGroup":Lcom/android/settings/model/AppPermissionGroup;
    if-eqz p2, :cond_1

    .line 3125
    invoke-virtual {v6}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10, v9}, Lcom/android/settings/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3127
    invoke-virtual {v10, v8, v9}, Lcom/android/settings/model/AppPermissionGroup;->grantRuntimePermissions(Z[Ljava/lang/String;)Z

    goto :goto_2

    .line 3130
    :cond_1
    invoke-virtual {v10, v9}, Lcom/android/settings/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3132
    invoke-virtual {v10, v8, v9}, Lcom/android/settings/model/AppPermissionGroup;->revokeRuntimePermissions(Z[Ljava/lang/String;)Z

    .line 3138
    .end local v6
    .end local v7
    .end local v9
    .end local v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    goto :goto_1

    .line 3141
    .end local v4
    :cond_3
    goto :goto_3

    .line 3139
    :catch_0
    move-exception v4

    .line 3140
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem getting package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    .end local v3
    .end local v4
    :goto_3
    goto :goto_0

    .line 3143
    :cond_4
    return-void

    .line 3080
    .end local v1
    :cond_5
    :goto_4
    return-void
.end method

.method public static requestPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "needGantPermissions"    # Z
    .param p3, "isFullPermission"    # Z

    .line 3152
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee======requestPermisssionForApps===1==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    invoke-static/range {p0 .. p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3154
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 3155
    return-void

    .line 3157
    :cond_0
    new-instance v0, Lcom/android/settings/model/AppPermissions;

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lcom/android/settings/AutoPreInstallFtpListApkService$10;

    invoke-direct {v8}, Lcom/android/settings/AutoPreInstallFtpListApkService$10;-><init>()V

    move-object v3, v0

    move-object/from16 v4, p0

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 3163
    .local v3, "mAppPermissions":Lcom/android/settings/model/AppPermissions;
    invoke-virtual {v3}, Lcom/android/settings/model/AppPermissions;->refresh()V

    .line 3171
    invoke-virtual {v3}, Lcom/android/settings/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/settings/model/AppPermissionGroup;

    .line 3174
    .local v5, "group":Lcom/android/settings/model/AppPermissionGroup;
    if-nez p3, :cond_1

    invoke-virtual {v3}, Lcom/android/settings/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/settings/model/ModelUtils;->shouldShowPermission(Lcom/android/settings/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3175
    goto :goto_0

    .line 3190
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3191
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Lcom/android/settings/model/AppPermissionGroup;->getPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/model/Permission;

    .line 3192
    .local v8, "permission":Lcom/android/settings/model/Permission;
    invoke-virtual {v8}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v9

    .line 3193
    .local v9, "perm":Landroid/content/pm/PermissionInfo;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 3198
    .local v11, "filterPermissions":[Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v3, v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPermisssionGroup(Lcom/android/settings/model/AppPermissions;Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;

    move-result-object v12

    .line 3199
    .local v12, "permissionGroup":Lcom/android/settings/model/AppPermissionGroup;
    if-eqz p2, :cond_2

    .line 3200
    invoke-virtual {v12, v11}, Lcom/android/settings/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3202
    invoke-virtual {v12, v10, v11}, Lcom/android/settings/model/AppPermissionGroup;->grantRuntimePermissions(Z[Ljava/lang/String;)Z

    goto :goto_2

    .line 3205
    :cond_2
    invoke-virtual {v12, v11}, Lcom/android/settings/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3206
    const-string v13, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=====divhee======revokeRuntimePermissions===404==="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    const/4 v10, 0x0

    invoke-virtual {v12, v10, v11}, Lcom/android/settings/model/AppPermissionGroup;->revokeRuntimePermissions(Z[Ljava/lang/String;)Z

    .line 3213
    .end local v8
    .end local v9
    .end local v11
    .end local v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    goto :goto_1

    .line 3216
    .end local v0
    :cond_4
    goto :goto_3

    .line 3214
    :catch_0
    move-exception v0

    .line 3215
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem getting package info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    .end local v0
    .end local v5
    :goto_3
    goto/16 :goto_0

    .line 3218
    :cond_5
    return-void
.end method

.method private searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "fileold"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1930
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;>;"
    .local p3, "readboyforcelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1931
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    if-lez v1, :cond_3

    .line 1932
    const/4 v1, 0x0

    .local v1, "jId":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1933
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1934
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    .line 1936
    :try_start_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getApkInfoByApkPath(Ljava/lang/String;)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    move-result-object v2

    .line 1937
    .local v2, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=======divhee=========searchPreInstallApp========"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    if-eqz v2, :cond_0

    .line 1939
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    invoke-virtual {p0, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyNeedInstallApps(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1941
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=1===readboyforcelist===divhee=========searchPreInstallApp========"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->cloneMySelf(Z)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=2===readboyforcelist===divhee=========searchPreInstallApp========"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1946
    :catch_0
    move-exception v2

    .line 1947
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1948
    .end local v2
    :cond_0
    :goto_1
    goto :goto_2

    .line 1951
    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1932
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1957
    .end local v0
    .end local v1
    :cond_3
    goto :goto_3

    .line 1955
    :catch_1
    move-exception v0

    .line 1956
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1958
    .end local v0
    :goto_3
    return-void
.end method

.method public static sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 2733
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2735
    :cond_0
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send pkgname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/mall_app"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2737
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2738
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2739
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2741
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======zhh=====sendPkg_ToParent==OK==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2742
    :catch_0
    move-exception v0

    .line 2743
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2744
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======zhh=====sendPkg_ToParent==error==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    .end local v0
    :goto_0
    return-void

    .line 2734
    :cond_1
    :goto_1
    return-void
.end method

.method public static streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "chartSet"    # Ljava/lang/String;

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2307
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2309
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "con":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2312
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2314
    .end local v1
    .end local v3
    :catch_0
    move-exception v1

    .line 2315
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2317
    .end local v1
    const-string v1, ""

    return-object v1
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .line 2927
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2929
    .local v0, "destDirFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v1, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2930
    .local v1, "zFile":Lnet/lingala/zip4j/core/ZipFile;
    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {v1}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2934
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2935
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2937
    :cond_0
    invoke-virtual {v1}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2938
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/ZipFile;->setPassword([C)V

    .line 2940
    :cond_1
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 2942
    const/4 v2, 0x0

    .line 2943
    .local v2, "firstFolderPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 2944
    .local v3, "childFiles":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 2945
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2947
    :cond_2
    return-object v2

    .line 2932
    .end local v2
    .end local v3
    :cond_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "It\'s a bad zip file."

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2951
    .end local v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 2952
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2953
    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deleteDir(Ljava/io/File;)Z

    .end local v1
    goto :goto_0

    .line 2948
    :catch_1
    move-exception v1

    .line 2949
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    .line 2950
    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deleteDir(Ljava/io/File;)Z

    .line 2954
    .end local v1
    nop

    .line 2955
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static unicodeToCn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1845
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1846
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1847
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1848
    .local v3, "tmpStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isStartWithUnicode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1849
    invoke-static {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->ustartToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 1852
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    add-int/lit8 v2, v2, 0x1

    .line 1855
    .end local v3
    :goto_1
    goto :goto_0

    .line 1856
    .end local v2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static ustartToCn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1827
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1828
    .local v1, "codeInteger":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1829
    .local v2, "code":I
    int-to-char v3, v2

    .line 1830
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static wifiAutoConnect(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 3607
    if-nez p0, :cond_0

    .line 3608
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 3610
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee connect() called with: ssid = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], password = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    invoke-static {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isWifiConnected(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    .line 3612
    .local v0, "isConnected":Z
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divhee connect: is already connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    if-eqz v0, :cond_1

    .line 3614
    const/4 v1, 0x1

    return v1

    .line 3616
    :cond_1
    const/4 v1, 0x0

    .line 3617
    .local v1, "result":Z
    if-eqz p0, :cond_2

    .line 3621
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->newWifiConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AutoPreInstallFtpListApkService$14;

    invoke-direct {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService$14;-><init>()V

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3632
    :cond_2
    return v1
.end method

.method private wifiForget(Z)V
    .locals 6
    .param p1, "notListenNetwork"    # Z

    .line 766
    if-eqz p1, :cond_1

    .line 768
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    if-eqz v0, :cond_0

    .line 769
    const-string v0, ""

    const-string v1, "=====divhee===wifiForget===unregisterReceiver===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCnnDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 775
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 776
    .end local v0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    .line 783
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    goto :goto_1

    .line 781
    :catch_1
    move-exception v0

    .line 782
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 798
    .end local v0
    :cond_1
    :goto_1
    :try_start_3
    const-string v0, ""

    const-string v1, "==00===divhee====wifiForget=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 801
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 803
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 805
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v4, 0x0

    .line 806
    invoke-static {v3, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyDslHotSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==33===divhee====wifiForget===mLastSSID====realforget==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 812
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 810
    :catch_2
    move-exception v3

    .line 811
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    .end local v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 817
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 815
    :catch_3
    move-exception v3

    .line 816
    .restart local v3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    .end local v2
    .end local v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_4
    goto :goto_2

    .line 824
    .end local v0
    :cond_3
    goto :goto_5

    .line 822
    :catch_4
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 827
    .end local v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    goto :goto_6

    .line 825
    :catch_5
    move-exception v0

    .line 826
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    .end local v0
    :goto_6
    return-void
.end method


# virtual methods
.method public anysPreInstallApkInfo(Ljava/lang/String;)I
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .line 2003
    const/4 v0, 0x3

    .line 2005
    .local v0, "iAnysResult":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2006
    .local v1, "root_json":Lorg/json/JSONObject;
    const-string v2, "errcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    const-string v2, "errcode"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2007
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2008
    .local v2, "data_json":Lorg/json/JSONObject;
    const-string v4, "rows"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "total"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "total"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_c

    .line 2009
    const-string v4, "rows"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2010
    .local v4, "rows_json":Lorg/json/JSONArray;
    move v5, v3

    .local v5, "inum":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 2011
    new-instance v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    invoke-direct {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;-><init>()V

    .line 2012
    .local v6, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2013
    .local v7, "cell_json":Lorg/json/JSONObject;
    const-string v8, "app_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2014
    const-string v8, "app_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    .line 2016
    :cond_0
    const-string v8, "app_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2017
    const-string v8, "app_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_show_name:Ljava/lang/String;

    .line 2019
    :cond_1
    const-string v8, "pkg_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2020
    const-string v8, "pkg_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    .line 2022
    :cond_2
    const-string v8, "version"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2023
    const-string v8, "version"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    .line 2025
    :cond_3
    const-string v8, "developer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2026
    const-string v8, "developer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_developer:Ljava/lang/String;

    .line 2028
    :cond_4
    const-string v8, "download_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2029
    const-string v8, "download_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    .line 2031
    :cond_5
    const-string v8, "add_time"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2032
    const-string v8, "add_time"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_add_time:Ljava/lang/String;

    .line 2034
    :cond_6
    const-string v8, "model"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2035
    const-string v8, "model"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_model:Ljava/lang/String;

    .line 2037
    :cond_7
    const-string v8, "zip_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2038
    const-string v8, "zip_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->anysDataDownloadInfoByUrl(Ljava/lang/String;)Z

    .line 2040
    :cond_8
    const-string v8, "version_code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2041
    const-string v8, "version_code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    .line 2043
    :cond_9
    const-string v8, "is_force_download"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2044
    const-string v8, "is_force_download"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    goto :goto_1

    :cond_a
    move v8, v3

    :goto_1
    iput-boolean v8, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    goto :goto_2

    .line 2046
    :cond_b
    iput-boolean v3, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    .line 2049
    :goto_2
    iget-object v8, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    .end local v6
    .end local v7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2052
    .end local v4
    .end local v5
    :cond_c
    const/4 v0, 0x2

    .line 2053
    .end local v2
    goto :goto_3

    :cond_d
    const-string v2, "errcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "errcode"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_f

    .line 2054
    const-string v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8fc7\u671f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2055
    :cond_e
    const-string v2, "AutoPreInstallAPK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======divhee====error===errmsg=====result==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNeedRetryPreinstallAppResetStatus()V

    .line 2057
    const-string v2, "AutoPreInstallAPK"

    const-string v3, "======divhee====mWatiTimeRightPreInstallAppRunnable==111="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 2063
    .end local v1
    :cond_f
    :goto_3
    goto :goto_4

    .line 2061
    :catch_0
    move-exception v1

    .line 2062
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2064
    .end local v1
    :goto_4
    return v0
.end method

.method public autoUnzipDataFile(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)V
    .locals 9
    .param p1, "preAppInfoNow"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2778
    if-nez p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2779
    return-void

    .line 2781
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 2782
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2784
    .local v2, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    :try_start_0
    iget-wide v4, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    iget-wide v6, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    .line 2785
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2790
    :cond_1
    goto :goto_2

    .line 2786
    :cond_2
    :goto_1
    iput-boolean v3, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_test:Z

    .line 2787
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2789
    :catch_0
    move-exception v3

    .line 2781
    .end local v2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2794
    .end local v1
    :cond_3
    :goto_3
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "AutoPreInstallAPK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=1=divhee===MyTaskUnzipDataFile===running=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v2, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2796
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2797
    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->setFolerIgnoreMediaFile(Ljava/lang/String;)V

    .line 2798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".unzipok"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->setFolerFlagFile(Ljava/lang/String;)V

    .line 2799
    nop

    .local v0, "inum":I
    :goto_4
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 2800
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2802
    .local v4, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-wide v5, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    iget-wide v7, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    .line 2808
    :cond_4
    goto :goto_6

    .line 2804
    :cond_5
    :goto_5
    iput-boolean v3, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    .line 2805
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 2807
    :catch_1
    move-exception v5

    .line 2799
    .end local v4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2811
    .end local v0
    :cond_6
    :goto_7
    :try_start_3
    const-string v0, "AutoPreInstallAPK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=2=divhee===MyTaskUnzipDataFile===running=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v0, :cond_8

    .line 2815
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2816
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2817
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2821
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    goto :goto_8

    .line 2819
    :catch_2
    move-exception v0

    .line 2820
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2825
    .end local v0
    .end local v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_8
    goto :goto_9

    .line 2823
    :catch_3
    move-exception v0

    .line 2824
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2828
    .end local v0
    :goto_9
    invoke-direct {p0, v1, v1, v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2830
    return-void
.end method

.method public delayInstallPreInstallApps(Ljava/lang/String;)V
    .locals 4
    .param p1, "tmpFilePath"    # Ljava/lang/String;

    .line 1718
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/AutoPreInstallFtpListApkService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$7;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mRandom:Ljava/util/Random;

    .line 1724
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x1770

    int-to-long v2, v2

    .line 1718
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1725
    return-void
.end method

.method public deletePreInstallLocalApks()V
    .locals 5

    .line 1863
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-eqz v0, :cond_5

    .line 1864
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1865
    move v0, v1

    .local v0, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1867
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    iget-object v3, v3, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1868
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1870
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1874
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 1872
    :catch_0
    move-exception v2

    .line 1873
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1865
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1878
    .end local v0
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/readboy/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1879
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/readboy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v0, "cacheFile2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1881
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===120====divhee===========deletePreInstallLocalApks======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/readboy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1887
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_2

    .line 1885
    :catch_1
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1889
    .end local v0
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1890
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v0, "cacheFile2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1892
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===121====divhee===========deletePreInstallLocalApks======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1898
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    goto :goto_3

    .line 1896
    :catch_2
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1899
    .end local v0
    :goto_3
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1900
    nop

    .local v1, "inum":I
    :goto_4
    move v0, v1

    .end local v1
    .local v0, "inum":I
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1902
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    iget-object v2, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1905
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1909
    .end local v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    goto :goto_5

    .line 1907
    :catch_3
    move-exception v1

    .line 1908
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1900
    .end local v1
    :goto_5
    add-int/lit8 v1, v0, 0x1

    .end local v0
    .local v1, "inum":I
    goto :goto_4

    .line 1913
    .end local v1
    :cond_5
    return-void
.end method

.method public downloadPreInstallFtpApkList()V
    .locals 17

    .line 2085
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2086
    .local v2, "isRealReqPreAppTaskStart":Z
    const/4 v3, 0x3

    move v4, v3

    .line 2089
    .local v4, "isRealReqPreAppTaskSucess":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v0, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2090
    iget-boolean v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallLoadding:Z

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 2091
    iput-boolean v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallLoadding:Z

    .line 2092
    const/4 v2, 0x1

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "first_time_install_pre_apps_flag"

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "first_time_install_pre_apps_flag"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2097
    :cond_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadInfoFromFwqAboutPadSettings(Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;)V

    .line 2100
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "http://192.168.16.247/V3/index.php?s=/ApiTool/ApiApps/apps.html"

    .line 2101
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v9, "&authKey=%s&model=%s"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getAuthKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2103
    .local v9, "param":Ljava/lang/String;
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2104
    .local v10, "url":Ljava/net/URL;
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "=====divhee========download_PreInstallFtpApkList====="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 2107
    .local v11, "connection":Ljava/net/HttpURLConnection;
    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2108
    const/16 v12, 0x2710

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2110
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 2111
    .local v12, "code":I
    const/16 v13, 0xc8

    if-ne v12, v13, :cond_1

    .line 2113
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 2114
    .local v13, "inputStream":Ljava/io/InputStream;
    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Lcom/android/settings/AutoPreInstallFtpListApkService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2115
    .local v14, "result":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 2117
    invoke-virtual {v1, v14}, Lcom/android/settings/AutoPreInstallFtpListApkService;->anysPreInstallApkInfo(Ljava/lang/String;)I

    move-result v15

    move v4, v15

    .line 2118
    const-string v15, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "=======divhee========download_PreInstallFtpApkList===result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2120
    .end local v13
    .end local v14
    goto :goto_0

    .line 2121
    :cond_1
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2122
    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "=======divhee========download_PreInstallFtpApkList==fail=="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2129
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "local_first_install_preapps_num_total"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "first_install_preapps_num_total"

    iget-object v5, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2131
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2132
    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2134
    move v0, v6

    .local v0, "inum":I
    :goto_2
    move v3, v0

    .end local v0
    .local v3, "inum":I
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v3, v0, :cond_8

    .line 2136
    :try_start_4
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2138
    .local v0, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    iget-object v5, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2139
    iget-object v5, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 2142
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "first_install_preapps_num_need_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2145
    iget-object v5, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v9, 0x8

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v5

    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v11, v8

    :goto_3
    invoke-static {v5, v10, v11}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2147
    iput-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2148
    iput v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 2149
    iput-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2151
    new-instance v5, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;

    invoke-direct {v5, v1, v8}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    new-array v9, v7, [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    aput-object v0, v9, v6

    invoke-virtual {v5, v9}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 2154
    :cond_4
    invoke-direct {v1, v1, v0, v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    move-result-object v5

    .line 2155
    .local v5, "savedFilePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2156
    iput-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 2157
    iput v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 2158
    iget-object v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v6

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    :goto_4
    iput-boolean v9, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 2159
    const-string v9, "AutoPreInstallAPK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreInstallAPK=========divhee========error====savedFilePath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2161
    :cond_6
    iget-object v9, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2162
    iget-object v9, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    const-wide/32 v11, 0xea60

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2165
    .end local v5
    :goto_5
    invoke-virtual {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2167
    invoke-direct {v1, v1, v0, v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadOnlyDataBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    .line 2171
    .end local v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    goto :goto_6

    .line 2169
    :catch_1
    move-exception v0

    .line 2170
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2134
    .end local v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    add-int/lit8 v0, v3, 0x1

    .end local v3
    .local v0, "inum":I
    goto/16 :goto_2

    .line 2176
    .end local v0
    :cond_8
    goto :goto_7

    .line 2174
    :catch_2
    move-exception v0

    .line 2175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2177
    .end local v0
    :goto_7
    iput-boolean v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallLoadding:Z

    .line 2183
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2186
    :try_start_7
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->readboyForceInstallLocalAppReadboyFolder()V

    .line 2191
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    goto :goto_8

    .line 2189
    :catch_3
    move-exception v0

    .line 2190
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2194
    .end local v0
    :goto_8
    if-eqz v2, :cond_19

    .line 2196
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2197
    .local v0, "savedDownloadOptionStatus":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    move v5, v7

    goto :goto_9

    :cond_b
    move v5, v6

    .line 2198
    .local v5, "isAllTryInstalled":Z
    :goto_9
    if-ne v0, v3, :cond_c

    move v8, v7

    goto :goto_a

    :cond_c
    move v8, v6

    .line 2199
    .local v8, "isAllInstalledOk":Z
    :goto_a
    if-ne v0, v3, :cond_d

    move v3, v7

    goto :goto_b

    :cond_d
    move v3, v6

    .line 2200
    .local v3, "isAllDataUnzipOk":Z
    :goto_b
    move v9, v3

    move v3, v6

    .local v3, "inum":I
    .local v9, "isAllDataUnzipOk":Z
    :goto_c
    if-eqz v5, :cond_12

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_12

    .line 2202
    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2203
    .local v10, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v10, :cond_11

    .line 2204
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v11, :cond_e

    .line 2205
    const/4 v5, 0x0

    .line 2206
    const/4 v8, 0x0

    .line 2208
    :cond_e
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v11, :cond_f

    .line 2209
    const/4 v8, 0x0

    .line 2211
    :cond_f
    invoke-virtual {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v11

    if-nez v11, :cond_10

    .line 2213
    const/4 v9, 0x0

    .line 2215
    :cond_10
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-eqz v11, :cond_11

    invoke-virtual {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 2217
    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    const-string v13, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v14, "android.permission.READ_MEDIA_STORAGE"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v11, v7, v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 2200
    .end local v10
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2222
    .end local v3
    :cond_12
    nop

    .local v6, "inum":I
    :goto_d
    move v3, v6

    .end local v6
    .restart local v3
    if-eqz v5, :cond_15

    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_15

    .line 2224
    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2225
    .local v6, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v6, :cond_14

    .line 2226
    iget-boolean v10, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v10, :cond_13

    .line 2227
    const/4 v5, 0x0

    .line 2228
    const/4 v8, 0x0

    .line 2230
    :cond_13
    iget-boolean v10, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v10, :cond_14

    .line 2231
    const/4 v6, 0x0

    .line 2222
    .end local v8
    .local v6, "isAllInstalledOk":Z
    move v8, v6

    .end local v6
    .restart local v8
    :cond_14
    add-int/lit8 v6, v3, 0x1

    .end local v3
    .local v6, "inum":I
    goto :goto_d

    .line 2235
    .end local v6
    :cond_15
    if-eqz v8, :cond_16

    .line 2236
    iput-boolean v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    .line 2238
    :cond_16
    if-eqz v5, :cond_17

    .line 2239
    iput v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2241
    :cond_17
    if-eqz v5, :cond_19

    if-eqz v9, :cond_19

    const/4 v3, 0x2

    if-ne v0, v3, :cond_19

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deletePreInstallLocalApks()V

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "first_time_install_pre_apps_flag"

    iget-boolean v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-eqz v10, :cond_18

    const/4 v10, 0x2

    goto :goto_e

    :cond_18
    const/4 v10, 0x3

    :goto_e
    invoke-static {v3, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2246
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2248
    invoke-virtual {v1, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .end local v0
    .end local v5
    .end local v8
    .end local v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    .line 2251
    :catch_4
    move-exception v0

    .line 2252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2254
    .end local v0
    goto/16 :goto_17

    .line 2253
    :cond_19
    :goto_f
    goto/16 :goto_17

    .line 2183
    :catchall_0
    move-exception v0

    move v3, v2

    move-object v2, v0

    goto/16 :goto_18

    .line 2179
    :catch_5
    move-exception v0

    .line 2180
    .restart local v0
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2181
    const-string v3, "AutoPreInstallAPK"

    const-string v5, "=====divhee=======downloadPreInstallFtpApkList==error=="

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    .end local v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v3, 0x2

    iput v3, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2186
    :try_start_a
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->readboyForceInstallLocalAppReadboyFolder()V

    .line 2191
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_1a
    goto :goto_10

    .line 2189
    :catch_6
    move-exception v0

    .line 2190
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2194
    .end local v0
    :goto_10
    if-eqz v2, :cond_19

    .line 2196
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2197
    .local v0, "savedDownloadOptionStatus":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b

    move v5, v7

    goto :goto_11

    :cond_1b
    move v5, v6

    .line 2198
    .restart local v5
    :goto_11
    if-ne v0, v3, :cond_1c

    move v8, v7

    goto :goto_12

    :cond_1c
    move v8, v6

    .line 2199
    .restart local v8
    :goto_12
    if-ne v0, v3, :cond_1d

    move v3, v7

    goto :goto_13

    :cond_1d
    move v3, v6

    .line 2200
    .local v3, "isAllDataUnzipOk":Z
    :goto_13
    move v9, v3

    move v3, v6

    .local v3, "inum":I
    .restart local v9
    :goto_14
    if-eqz v5, :cond_22

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_22

    .line 2202
    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2203
    .restart local v10
    if-eqz v10, :cond_21

    .line 2204
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v11, :cond_1e

    .line 2205
    const/4 v5, 0x0

    .line 2206
    const/4 v8, 0x0

    .line 2208
    :cond_1e
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v11, :cond_1f

    .line 2209
    const/4 v8, 0x0

    .line 2211
    :cond_1f
    invoke-virtual {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v11

    if-nez v11, :cond_20

    .line 2213
    const/4 v9, 0x0

    .line 2215
    :cond_20
    iget-boolean v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-eqz v11, :cond_21

    invoke-virtual {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 2217
    iget-object v11, v10, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    const-string v13, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v14, "android.permission.READ_MEDIA_STORAGE"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v11, v7, v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 2200
    .end local v10
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2222
    .end local v3
    :cond_22
    nop

    .restart local v6
    :goto_15
    move v3, v6

    .end local v6
    .restart local v3
    if-eqz v5, :cond_25

    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_25

    .line 2224
    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2225
    .local v6, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v6, :cond_24

    .line 2226
    iget-boolean v10, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v10, :cond_23

    .line 2227
    const/4 v5, 0x0

    .line 2228
    const/4 v8, 0x0

    .line 2230
    :cond_23
    iget-boolean v10, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v10, :cond_24

    .line 2231
    const/4 v6, 0x0

    .line 2222
    .end local v8
    .local v6, "isAllInstalledOk":Z
    move v8, v6

    .end local v6
    .restart local v8
    :cond_24
    add-int/lit8 v6, v3, 0x1

    .end local v3
    .local v6, "inum":I
    goto :goto_15

    .line 2235
    .end local v6
    :cond_25
    if-eqz v8, :cond_26

    .line 2236
    iput-boolean v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    .line 2238
    :cond_26
    if-eqz v5, :cond_27

    .line 2239
    iput v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2241
    :cond_27
    if-eqz v5, :cond_19

    if-eqz v9, :cond_19

    const/4 v3, 0x2

    if-ne v0, v3, :cond_19

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deletePreInstallLocalApks()V

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "first_time_install_pre_apps_flag"

    iget-boolean v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-eqz v10, :cond_28

    const/4 v10, 0x2

    goto :goto_16

    :cond_28
    const/4 v10, 0x3

    :goto_16
    invoke-static {v3, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2246
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2248
    invoke-virtual {v1, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .end local v0
    .end local v5
    .end local v8
    .end local v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_f

    .line 2255
    :goto_17
    const-string v0, "AutoPreInstallAPK"

    const-string v3, "=====divhee=======downloadPreInstallFtpApkList==end=="

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    return-void

    .line 2183
    .end local v2
    .local v3, "isRealReqPreAppTaskStart":Z
    :goto_18
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2186
    :try_start_c
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->readboyForceInstallLocalAppReadboyFolder()V

    .line 2191
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_29
    goto :goto_19

    .line 2189
    :catch_7
    move-exception v0

    .line 2190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2194
    .end local v0
    :goto_19
    if-eqz v3, :cond_38

    .line 2196
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "download_option_first_time_install_pre_apps_is_ok"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2197
    .local v0, "savedDownloadOptionStatus":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2a

    move v8, v7

    goto :goto_1a

    :cond_2a
    move v8, v6

    .line 2198
    .local v8, "isAllTryInstalled":Z
    :goto_1a
    if-ne v0, v5, :cond_2b

    move v9, v7

    goto :goto_1b

    :cond_2b
    move v9, v6

    .line 2199
    .local v9, "isAllInstalledOk":Z
    :goto_1b
    if-ne v0, v5, :cond_2c

    move v5, v7

    goto :goto_1c

    :cond_2c
    move v5, v6

    .line 2200
    .local v5, "isAllDataUnzipOk":Z
    :goto_1c
    move v10, v5

    move v5, v6

    .local v5, "inum":I
    .local v10, "isAllDataUnzipOk":Z
    :goto_1d
    if-eqz v8, :cond_31

    iget-object v11, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_31

    .line 2202
    iget-object v11, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2203
    .local v11, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v11, :cond_30

    .line 2204
    iget-boolean v12, v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v12, :cond_2d

    .line 2205
    const/4 v8, 0x0

    .line 2206
    const/4 v9, 0x0

    .line 2208
    :cond_2d
    iget-boolean v12, v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v12, :cond_2e

    .line 2209
    const/4 v9, 0x0

    .line 2211
    :cond_2e
    invoke-virtual {v11}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v12

    if-nez v12, :cond_2f

    .line 2213
    const/4 v10, 0x0

    .line 2215
    :cond_2f
    iget-boolean v12, v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-eqz v12, :cond_30

    invoke-virtual {v11}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v12

    if-eqz v12, :cond_30

    iget-object v12, v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30

    .line 2217
    iget-object v12, v11, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    new-instance v13, Ljava/util/ArrayList;

    const-string v14, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v15, "android.permission.READ_MEDIA_STORAGE"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v12, v7, v13}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestEspPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 2200
    .end local v11
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2222
    .end local v5
    :cond_31
    nop

    .restart local v6
    :goto_1e
    move v5, v6

    .end local v6
    .restart local v5
    if-eqz v8, :cond_34

    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_34

    .line 2224
    iget-object v6, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2225
    .local v6, "tempPreAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    if-eqz v6, :cond_33

    .line 2226
    iget-boolean v11, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    if-nez v11, :cond_32

    .line 2227
    const/4 v8, 0x0

    .line 2228
    const/4 v9, 0x0

    .line 2230
    :cond_32
    iget-boolean v11, v6, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v11, :cond_33

    .line 2231
    const/4 v6, 0x0

    .line 2222
    .end local v9
    .local v6, "isAllInstalledOk":Z
    move v9, v6

    .end local v6
    .restart local v9
    :cond_33
    add-int/lit8 v6, v5, 0x1

    .end local v5
    .local v6, "inum":I
    goto :goto_1e

    .line 2235
    .end local v6
    :cond_34
    if-eqz v9, :cond_35

    .line 2236
    iput-boolean v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    .line 2238
    :cond_35
    if-eqz v8, :cond_36

    .line 2239
    iput v7, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    .line 2241
    :cond_36
    if-eqz v8, :cond_38

    if-eqz v10, :cond_38

    const/4 v5, 0x2

    if-ne v0, v5, :cond_38

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->deletePreInstallLocalApks()V

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "first_time_install_pre_apps_flag"

    iget-boolean v12, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-eqz v12, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v5, 0x3

    :goto_1f
    invoke-static {v6, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2246
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2248
    invoke-virtual {v1, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .end local v0
    .end local v8
    .end local v9
    .end local v10
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_20

    .line 2251
    :catch_8
    move-exception v0

    .line 2252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    nop

    .line 2253
    :cond_38
    :goto_20
    throw v2
.end method

.method public findLocalApkPath(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .locals 5
    .param p1, "preAppInfo"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 1691
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1692
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 1695
    .local v1, "tmpAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=======divhee==========findLocalApkPath======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    .line 1697
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1698
    iget-boolean v2, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 1699
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=======divhee==========findLocalApkPath====findout==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    goto :goto_1

    .line 1702
    :cond_0
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "=======divhee==========findLocalApkPath====findout==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1706
    .end local v1
    :cond_1
    goto :goto_1

    .line 1705
    :catch_0
    move-exception v1

    .line 1692
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1709
    .end local v0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApkInfoByApkPath(Ljava/lang/String;)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .locals 5
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, "preappInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1968
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1969
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1970
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1971
    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1973
    new-instance v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    invoke-direct {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;-><init>()V

    move-object v0, v4

    .line 1974
    iput-boolean v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    .line 1975
    iput-object p1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 1976
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_show_name:Ljava/lang/String;

    .line 1977
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    .line 1978
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    .line 1979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    .line 1981
    .end local v3
    :cond_0
    return-object v0
.end method

.method public getInterStoragePathRootFolder()Ljava/lang/String;
    .locals 2

    .line 1916
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1920
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPath"    # Ljava/lang/String;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AutoPreInstallFtpListApkCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "call_me"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "install_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->installCountList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->installCountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2710

    add-int/2addr v2, v1

    const/high16 v1, 0x8000000

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getWifiFlow()Landroid/app/usage/NetworkStats$Bucket;
    .locals 8

    .line 3260
    const/4 v0, 0x0

    .line 3262
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    sub-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3266
    goto :goto_0

    .line 3264
    :catch_0
    move-exception v1

    .line 3265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3267
    .end local v1
    :goto_0
    return-object v0
.end method

.method public isFileDownloadTrueSucessfull(Ljava/lang/String;J)Z
    .locals 7
    .param p1, "filePathName"    # Ljava/lang/String;
    .param p2, "downloadId"    # J

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 451
    invoke-direct {p0, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getBytesAndStatus(J)[I

    move-result-object v1

    .line 452
    .local v1, "bytesAndStatus":[I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    aget v3, v1, v2

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    aget v5, v1, v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 453
    return v2

    .line 457
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 459
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadboyNeedInstallApps(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Z
    .locals 2
    .param p1, "preappInfo"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 1990
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 1991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    const-string v1, "/PreInstallApks/readboy/"

    .line 1992
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    const/4 v0, 0x1

    return v0

    .line 1995
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .line 890
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 894
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1

    .line 895
    return v1

    .line 897
    :cond_1
    sget-object v2, Lcom/android/settings/AutoPreInstallFtpListApkService$16;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 906
    return v1

    .line 904
    :pswitch_0    # 0x2 0x3 0x4 0x5 0x6 0x1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 891
    .end local v0
    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public mNeedRetryPreinstallAppResetStatus()V
    .locals 4

    .line 2071
    invoke-static {}, Lcom/android/settings/DateTimeSettings;->forceSyncDateTimeNowTime()V

    .line 2074
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_install_pre_apps_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2075
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_install_pre_apps_flag"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2078
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2079
    return-void
.end method

.method public notifyToCitDisplay(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 369
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isCallCitOnlyOneTimes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=isCallCitOnlyOneTimes===divhee=====9===nowStopAutoPreInstallFtpListApkService=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isCallCitOnlyOneTimes:Z

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isCallCitOnlyOneTimes:Z

    .line 374
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AutoPreInstallOver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "intentOver":Landroid/content/Intent;
    const-string v1, "com.sim.cit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "all_sucess"

    iget-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 380
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsAllInstallOk:Z

    if-nez v0, :cond_0

    .line 384
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sim.cit"

    const-string v3, "com.sim.cit.MainList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    const-string v1, "call_preinstall_result"

    const-string v2, "now_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 388
    :catch_1
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    .end local v0
    :cond_0
    :goto_1
    return-void
.end method

.method public nowStopAutoPreInstallFtpListApkService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 322
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AutoPreInstallFtpListApkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 327
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .end local v0
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 131
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 132
    const-string v0, "netstats"

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->isCallCitOnlyOneTimes:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    .line 135
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mDownloadManager:Landroid/app/DownloadManager;

    .line 136
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mFlowSpeedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 310
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 311
    const-string v0, ""

    const-string v1, "=====divhee===onDestroy======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 144
    const-string v1, "android.intent.action.AutoPreInstallFtpListApkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "AutoPreInstallAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "======divhee======onStartCommand==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "==mAllTryInstalled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    if-eqz v1, :cond_8

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->onStartEvent()V

    goto/16 :goto_3

    .line 151
    :cond_0
    const-string v1, "android.intent.action.AutoPreInstallFtpListApkCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    const-string v1, "install_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 153
    const-string v1, "AutoPreInstallAPK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==888=divhee===\u6536\u5230\u5b89\u88c5\u53cd\u9988\u5e7f\u64ad\u4e86 action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, "status":I
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "pkgName":Ljava/lang/String;
    const-string v5, "install_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "apkPath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 160
    .local v6, "msg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 162
    const-string v7, "AutoPreInstallAPK"

    const-string v8, "APP Install Success!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 166
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install FAILURE status_massage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "===888===divhee===\u6536\u5230\u5b89\u88c5\u53cd\u9988\u5e7f\u64ad\u4e86======"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 171
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    if-nez v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v7, v5, v4, v2, v6}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .end local v0
    :cond_3
    :goto_1
    goto :goto_3

    .line 175
    .restart local v0
    :cond_4
    :try_start_2
    const-string v1, "uninstall_pkg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 176
    const-string v1, "AutoPreInstallAPK"

    const-string v4, "==888=divhee===\u6536\u5230\u5378\u8f7d\u53cd\u9988\u5e7f\u64ad\u4e86"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .restart local v1
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .restart local v4
    const-string v5, "uninstall_pkg"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "unpkgName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .restart local v6
    if-nez v1, :cond_5

    .line 185
    const-string v7, "AutoPreInstallAPK"

    const-string v8, "APP UnInstall Success!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    :cond_5
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 189
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnInstall FAILURE status_massage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 193
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    if-nez v1, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-virtual {v7, v5, v2, v6}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishUninstall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 196
    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    goto :goto_3

    .line 195
    :catch_1
    move-exception v1

    .line 201
    .end local v0
    :cond_8
    :goto_3
    goto :goto_4

    .line 200
    :catch_2
    move-exception v0

    .line 202
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected onStartEvent()V
    .locals 4

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    if-nez v0, :cond_0

    .line 226
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====divhee===onStartEvent===registerReceiver==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCnnDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    .line 247
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v0
    :goto_1
    new-instance v0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;

    invoke-direct {v0, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    return-void
.end method

.method protected onStopEvent()V
    .locals 5

    .line 255
    const-string v0, ""

    const-string v1, "=====divhee===preinstall_onStopEvent===start===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mFlowSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->uploadPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    if-eqz v2, :cond_0

    .line 268
    const-string v2, ""

    const-string v3, "=====divhee===onStopEvent===unregisterReceiver===="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mCnnDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 272
    :catch_1
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    .end local v2
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mIsRegBroadcastReceiver:Z

    .line 282
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    goto :goto_2

    .line 280
    :catch_2
    move-exception v2

    .line 281
    .restart local v2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v2
    :goto_2
    const-string v2, ""

    const-string v3, "=====divhee===preinstall_onStopEvent===start=2==="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "am":Landroid/app/ActivityManager;
    nop

    .line 287
    .local v0, "result":Z
    :try_start_4
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, v3

    .line 290
    goto :goto_3

    .line 288
    :catch_3
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v3
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 296
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 294
    :catch_4
    move-exception v3

    .line 295
    .restart local v3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v3
    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mPM:Landroid/content/pm/PackageManager;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 300
    const-string v3, "com.android.providers.downloads"

    invoke-virtual {v2, v3, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move v0, v1

    .line 303
    goto :goto_5

    .line 301
    :catch_5
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v1
    :goto_5
    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee=========onStopEvent==end===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->wifiForget(Z)V

    .line 306
    const-string v1, ""

    const-string v3, "=====divhee===preinstall_onStopEvent===end2===="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public readboyForceInstallLocalAppReadboyFolder()V
    .locals 3

    .line 1627
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1628
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee===============readboyForceInstallLocalAppReadboyFolder===size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "inum":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1631
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 1632
    .local v1, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    iget-boolean v2, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v2, :cond_0

    .line 1634
    iget-object v2, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->delayInstallPreInstallApps(Ljava/lang/String;)V

    .line 1630
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1638
    .end local v0
    :cond_1
    return-void
.end method

.method public searchAndInstallAllPreInstallLocalApks()V
    .locals 3

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getInterStoragePathRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    .line 1608
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1609
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1610
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PreInstallApks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    goto :goto_0

    .line 1614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PreInstallApks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    .line 1616
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLocaledApks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboyForceInstallApks:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1621
    .end local v0
    :cond_1
    return-void
.end method

.method public setFolerFlagFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 2900
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2901
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2902
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2905
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v1, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2907
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2908
    .local v2, "folder":Ljava/io/File;
    nop

    .line 2909
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2910
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2911
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 2913
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 2915
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2918
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2916
    :catch_0
    move-exception v3

    .line 2917
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2923
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    goto :goto_1

    .line 2922
    :catch_1
    move-exception v0

    .line 2924
    :goto_1
    return-void
.end method

.method public setFolerIgnoreMediaFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 2868
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2869
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2873
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2874
    .local v1, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2875
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2876
    .local v2, "folder":Ljava/io/File;
    nop

    .line 2877
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2878
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2879
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 2881
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 2883
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2886
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2884
    :catch_0
    move-exception v3

    .line 2885
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2891
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    goto :goto_1

    .line 2890
    :catch_1
    move-exception v0

    .line 2892
    :goto_1
    return-void
.end method

.method public startLoadingPreInstallAppsEvent(Z)V
    .locals 18
    .param p1, "isForcedRestartDownload"    # Z

    move-object/from16 v1, p0

    .line 595
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 596
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 597
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    const-string v0, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====divhee======startLoadingPreInstallAppsEvent======="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 599
    const-string v0, "AutoPreInstallAPK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "===divhee====preinstall====\u7f51\u7edc\u5df2\u8fde\u63a5====mAllTryInstalled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v6, :cond_11

    .line 601
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyMMdd"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 602
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 603
    .local v10, "dateTime":J
    const-wide/16 v12, 0x0

    .line 605
    .local v12, "versionCode":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 606
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit16 v14, v14, 0x3e8

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v12, v14

    .line 609
    .end local v0
    goto :goto_1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    .end local v0
    :goto_1
    const-string v0, "AutoPreInstallAPK"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "=dateTime=====divhee========versionCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "==mInstallApks="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "===mAllTryInstalled="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz p1, :cond_3

    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 613
    move v0, v5

    .local v0, "inum":I
    :goto_2
    move v15, v0

    .end local v0
    .local v15, "inum":I
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_3

    .line 615
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 616
    .local v0, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    iget-wide v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    const-wide/16 v16, -0x1

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    iget-boolean v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v7, :cond_1

    .line 618
    invoke-direct {v1, v1, v0, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    .line 620
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->checkDataDownloadUnzipOk()Z

    move-result v7

    if-nez v7, :cond_2

    .line 622
    invoke-direct {v1, v1, v0, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadOnlyDataBySelf(Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    .line 626
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_3

    .line 624
    :catch_1
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    .end local v0
    :goto_3
    add-int/lit8 v0, v15, 0x1

    .end local v15
    .local v0, "inum":I
    goto :goto_2

    .line 629
    .end local v0
    :cond_3
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mInstallApks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 630
    cmp-long v0, v10, v12

    if-ltz v0, :cond_5

    iget v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mAllTryInstalled:I

    if-eqz v0, :cond_5

    .line 631
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 632
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_4

    .line 633
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 634
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_4

    .line 635
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyDslHotSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    .end local v6
    :cond_4
    new-instance v4, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;

    invoke-direct {v4, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 639
    .end local v0
    goto :goto_4

    .line 640
    :cond_5
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2710

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    const-string v0, "AutoPreInstallAPK"

    const-string v4, "======divhee====mWatiTimeRightPreInstallAppRunnable==222="

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v9
    .end local v10
    .end local v12
    :cond_6
    :goto_4
    goto/16 :goto_9

    .line 647
    :cond_7
    const-wide/16 v7, 0x2710

    const-string v0, "AutoPreInstallAPK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoPreInstallAPK===divhee====preinstall====\u7f51\u7edc\u5df2\u65ad\u5f00==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v6

    goto :goto_5

    :cond_8
    move v10, v5

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v9, 0x0

    .line 649
    .local v9, "randomSSID":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 651
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 652
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 654
    const-wide/16 v10, 0x64

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 656
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 655
    :catch_2
    move-exception v0

    .line 657
    :goto_6
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 658
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 659
    move v10, v5

    .local v10, "inum":I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 660
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 662
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget-object v12, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    iget v12, v11, Landroid/net/wifi/ScanResult;->level:I

    const/16 v13, -0x50

    if-le v12, v13, :cond_9

    iget-object v12, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 663
    invoke-static {v12, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyDslHotSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 665
    iget-object v12, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v11
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 669
    .end local v10
    :cond_a
    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_b

    .line 671
    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/settings/AutoPreInstallFtpListApkService$3;

    invoke-direct {v10, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService$3;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 684
    .end local v0
    :cond_b
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 685
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 686
    .end local v9
    .local v0, "randomSSID":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mReadboySsidMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 688
    move-object v9, v0

    .end local v0
    .restart local v9
    :cond_c
    if-eqz v9, :cond_e

    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLastSSID:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLastSSID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 689
    :cond_d
    invoke-direct {v1, v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->wifiForget(Z)V

    .line 691
    :cond_e
    if-eqz v9, :cond_f

    .line 692
    const-string v0, ""

    invoke-virtual {v1, v9, v0, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->wifiAutoConnect(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 721
    :cond_f
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 722
    iget-object v0, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWatiTimeRightPreInstallAppRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_10

    goto :goto_8

    :cond_10
    const-wide/16 v7, 0x1388

    :goto_8
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    .end local v9
    :cond_11
    :goto_9
    return-void
.end method

.method public stopMyselfServiceEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 400
    const-string v0, ""

    const-string v1, "===divhee==========stop====stop_MyselfServiceEvent=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->onStopEvent()V

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->notifyToCitDisplay(Landroid/content/Context;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->nowStopAutoPreInstallFtpListApkService(Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public uploadInstalledPreApks(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Ljava/lang/String;)V
    .locals 10
    .param p1, "preAppInfo"    # Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 2268
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->uploadPkgNames:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2269
    const-string v0, "http://192.168.16.247/V3/index.php?s=/ApiTool/ApiApps/addlog.html"

    .line 2270
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v1, "&authKey=%s&model=%s&app_id=%s&number=%s&firmware_ver=%s&pkgName=%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getAuthKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "param":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v2, "url":Ljava/net/URL;
    const-string v3, "AutoPreInstallAPK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======divhee=========uploadInstalledPreApks=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 2276
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2277
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2279
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 2280
    .local v4, "code":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 2281
    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->uploadPkgNames:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 2284
    .local v5, "inputStream":Ljava/io/InputStream;
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2285
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 2286
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "=========divhee======uploadInstalledPreApks===sucess===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    .end local v5
    .end local v6
    goto :goto_0

    .line 2288
    :cond_0
    const-string v5, "AutoPreInstallAPK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=========divhee======uploadInstalledPreApks===fail===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :goto_0
    goto :goto_1

    .line 2293
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2291
    :cond_1
    const-string v0, "AutoPreInstallAPK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========divhee======uploadInstalledPreApks===none===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    .line 2293
    :goto_2
    nop

    .line 2294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutoPreInstallAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========divhee======uploadInstalledPreApks===error===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    .end local v0
    :goto_3
    return-void
.end method

.method public wifiAutoConnect(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 866
    const-string v0, "AutoPreInstallAPK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee connect() called with: ssid = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], password = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mLastSSID:Ljava/lang/String;

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isWifiConnected(Ljava/lang/String;)Z

    move-result v0

    .line 869
    .local v0, "isConnected":Z
    const-string v1, "AutoPreInstallAPK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divhee connect: is already connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-eqz v0, :cond_0

    .line 871
    const/4 v1, 0x1

    return v1

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 874
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 876
    :cond_1
    const/4 v1, 0x0

    .line 877
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    .line 881
    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->newWifiConfig(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 883
    :cond_2
    return v1
.end method
