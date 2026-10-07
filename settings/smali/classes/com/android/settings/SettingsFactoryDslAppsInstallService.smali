.class public Lcom/android/settings/SettingsFactoryDslAppsInstallService;
.super Landroid/app/Service;
.source "SettingsFactoryDslAppsInstallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;,
        Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;
    }
.end annotation


# instance fields
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

.field private localAppListError:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localAppListNeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localAppListResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayExitService:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

.field private mIsAllInstallOk:Z

.field private mIsFactoryDslAppsTMOver:Z

.field private mIsFactoryDslAppsTMStart:Z

.field private mIsRegBroadcastReceiver:Z

.field private mWatiTimeRightDslInstallAppRunnable:Ljava/lang/Runnable;

.field public onHandleIntentEventCallback:Ljava/lang/Runnable;

.field private uninstallCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const-string v0, "DslAppsInstall"

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsRegBroadcastReceiver:Z

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMOver:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMStart:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->installCountList:Ljava/util/ArrayList;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->uninstallCountList:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    .line 322
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsAllInstallOk:Z

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$2;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mWatiTimeRightDslInstallAppRunnable:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mDelayExitService:Ljava/lang/Runnable;

    .line 485
    new-instance v0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 33
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMOver:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 33
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mWatiTimeRightDslInstallAppRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 33
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->stopFactoryTestModeIntentService()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->packageDeleteObserver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->installPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkInstallAllDslAppsIsOK()V
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 703
    const-string v0, "\r\n"

    .line 704
    .local v0, "errorApkNames":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 705
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========divhee=========localAppListError=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 709
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v1
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->showAlamrErrorDialog(Ljava/lang/String;)V

    .line 713
    .end local v0
    goto :goto_2

    .line 715
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->deleteDslInstallLocalApks()V

    .line 717
    :goto_2
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;

    .line 524
    const-string v0, "DslAppsInstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======divhee==========installPackage===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 529
    .local v0, "packageNameString":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/apkinstall/InstallAndUninstallAction;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;-><init>(Landroid/content/Context;)V

    .line 530
    .local v1, "mInstallUninstall":Lcom/android/settings/apkinstall/InstallAndUninstallAction;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 531
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 532
    .local v3, "installFlags":I
    const/4 v4, 0x0

    .line 533
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 535
    .local v5, "pm2":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v5, v7

    .line 536
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 539
    goto :goto_0

    .line 537
    :catch_0
    move-exception v7

    .line 538
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    .end local v7
    :goto_0
    if-eqz v4, :cond_5

    .line 543
    :try_start_1
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v0, v7

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 547
    invoke-static {v0, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 551
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 553
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v9, 0x0

    .line 554
    .local v9, "apkExit":Z
    move v10, v6

    .line 556
    .local v10, "versionNameEquals":Z
    const/16 v11, 0x2000

    :try_start_2
    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 557
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_2

    .line 558
    or-int/lit8 v3, v3, 0x2

    .line 560
    const/4 v9, 0x1

    .line 561
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v12, :cond_2

    .line 562
    const/4 v10, 0x1

    .line 567
    .end local v11
    :cond_2
    goto :goto_1

    .line 565
    :catch_1
    move-exception v11

    .line 566
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "DslAppsInstall"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v11
    :goto_1
    if-eqz v9, :cond_4

    .line 569
    if-eqz v10, :cond_3

    .line 570
    const/4 v11, 0x1

    invoke-direct {p0, v0, p1, v11}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 572
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v12

    invoke-virtual {p0, v12, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getDslAppsInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1, v11, p1, v12}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 577
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v12

    invoke-virtual {p0, v12, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getDslAppsInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1, v11, p1, v12}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 579
    :catch_2
    move-exception v7

    .line 580
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    const-string v8, "DslAppsInstall"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=info=error====divhee===========fileName=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0, v0, p1, v6}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 583
    .end local v7
    :goto_2
    goto :goto_4

    .line 586
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getDslAppsInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v1, v7, p1, v8}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 590
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 587
    :catch_3
    move-exception v7

    .line 588
    .restart local v7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    invoke-direct {p0, v0, p1, v6}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    .end local v7
    :goto_3
    const-string v6, "DslAppsInstall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=info=null====divhee===========fileName=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_4
    return-void
.end method

.method public static nowStartDslAppsInstallService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 269
    const-string v0, ""

    const-string v1, "===divhee==========start====now_StartDslAppsInstallService=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "android.action.readboy_factory_dsl_apps_install_test_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "call_me"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 278
    return-void
.end method

.method private packageDeleteObserver(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 746
    const-string v0, "DslAppsInstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========divhee==========packageDeleteObserver===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method private packageInstallOvserver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "installRealSucess"    # Z

    .line 667
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    invoke-static {p1, p0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 678
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsAllInstallOk:Z

    .line 684
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=====divhee====packageInstallOvserver=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "==isAllInstalled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsAllInstallOk:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "======divhee======packageInstallOvserver=========="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsAllInstallOk:Z

    if-eqz v0, :cond_5

    .line 688
    invoke-direct {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->checkInstallAllDslAppsIsOK()V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_install_dsl_apps_flag"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    iput-boolean v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMOver:Z

    .line 694
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .line 696
    :cond_5
    return-void
.end method

.method private searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "fileold"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 437
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 438
    const/4 v1, 0x0

    .local v1, "jId":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 439
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=======divhee=========searchPreInstallApp========"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 438
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0
    .end local v1
    :cond_2
    goto :goto_2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    .end local v0
    :goto_2
    return-void
.end method

.method private showAlamrErrorDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorApkNames"    # Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$5;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    return-void
.end method

.method private stopFactoryTestModeIntentService()V
    .locals 2

    .line 238
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 242
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->stopSelf()V

    .line 244
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 243
    :catch_1
    move-exception v0

    .line 246
    :goto_1
    return-void
.end method


# virtual methods
.method public autoDslInstallLocalApks()V
    .locals 6

    .line 355
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMStart:Z

    if-nez v0, :cond_3

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMStart:Z

    .line 357
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListError:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getInterStoragePathRootFolder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DslInstallApks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    goto :goto_0

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DslInstallApks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 367
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 372
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 373
    const/4 v1, 0x0

    move v2, v1

    .local v2, "inum":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 375
    new-instance v3, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;)V

    new-array v4, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->localAppListNeed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    .end local v2
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsFactoryDslAppsTMOver:Z

    .line 381
    :cond_3
    return-void
.end method

.method public deleteDslInstallLocalApks()V
    .locals 4

    .line 387
    iget-boolean v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsAllInstallOk:Z

    if-eqz v0, :cond_5

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "dellocalAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getInterStoragePathRootFolder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DslInstallApks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DslInstallApks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 396
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->searchPreInstallLocalApp(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 401
    .end local v1
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 402
    const/4 v1, 0x0

    .local v1, "inum":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 404
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 410
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_2

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    .end local v2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    .end local v1
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 415
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "cacheFile2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 422
    .end local v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    goto :goto_3

    .line 420
    :catch_1
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    .end local v0
    .end local v1
    :cond_5
    :goto_3
    return-void
.end method

.method public getDslAppsInstallCallbackInstall(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPath"    # Ljava/lang/String;

    .line 281
    const-string v0, ""

    const-string v1, "===divhee==========start====get_DslAppsInstallCallbackInstall=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, "intentService":Landroid/content/Intent;
    const-string v1, "android.intent.action.FactoryDslAppsInstallCallback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "call_me"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "install_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->installCountList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->installCountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x7530

    add-int/2addr v2, v1

    const/high16 v1, 0x8000000

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getInterStoragePathRootFolder()Ljava/lang/String;
    .locals 2

    .line 427
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nowStopAutoPreInstallFtpListApkService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 255
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "intentService":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsFactoryDslAppsInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 261
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    const-string v0, ""

    const-string v1, "=====divhee===onDestroy====DslAppsInstall==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee====SettingsFactoryDslAppsInstallService=====onStartCommand========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.FactoryDslAppsInstallCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const-string v1, "install_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "DslAppsInstall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==777=divhee===\u6536\u5230\u5b89\u88c5\u53cd\u9988\u5e7f\u64ad\u4e86 action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, "status":I
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "pkgName":Ljava/lang/String;
    const-string v5, "install_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "apkPath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 82
    .local v6, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 84
    const-string v7, "DslAppsInstall"

    const-string v8, "APP Install Success!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_0
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 88
    const-string v7, "DslAppsInstall"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install FAILURE status_massage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "===777===divhee===\u6536\u5230\u5b89\u88c5\u53cd\u9988\u5e7f\u64ad\u4e86======"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 93
    iget-object v7, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v7, v5, v4, v2, v6}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .end local v0
    :cond_2
    :goto_1
    goto/16 :goto_6

    .line 97
    .restart local v0
    :cond_3
    :try_start_2
    const-string v1, "uninstall_pkg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    const-string v1, "DslAppsInstall"

    const-string v4, "==777=divhee===\u6536\u5230\u5378\u8f7d\u53cd\u9988\u5e7f\u64ad\u4e86"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .restart local v1
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .restart local v4
    const-string v5, "uninstall_pkg"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "unpkgName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .restart local v6
    if-nez v1, :cond_4

    .line 107
    const-string v7, "DslAppsInstall"

    const-string v8, "APP UnInstall Success!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    :cond_4
    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 111
    const-string v7, "DslAppsInstall"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnInstall FAILURE status_massage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 115
    iget-object v7, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mInstallAndUninstallCallback:Lcom/android/settings/apkinstall/InstallAndUninstallCallback;

    if-nez v1, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v7, v5, v2, v6}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;->onFinishUninstall(Ljava/lang/String;ZLjava/lang/String;)V

    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 117
    :catch_1
    move-exception v1

    .line 118
    .end local v0
    :cond_6
    :goto_3
    goto/16 :goto_6

    .line 121
    .restart local v0
    :cond_7
    const/4 v1, 0x0

    .line 122
    .local v1, "isNeedRealStartService":Z
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->getInterStoragePathRootFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 124
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DslInstallApks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    goto :goto_4

    .line 127
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DslInstallApks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    .line 129
    :goto_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->cacheLocalAppPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 131
    const/4 v1, 0x1

    .line 134
    .end local v2
    :cond_9
    const-string v2, "DslAppsInstall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======divhee======onStartCommand==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mIsRegBroadcastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "==isNeedRealStartService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v1, :cond_a

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onStartEvent()V

    goto :goto_5

    .line 138
    :cond_a
    iget-object v2, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->mDelayExitService:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "android.action.readboy_factory_dsl_apps_install_test_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 149
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .end local v0
    .end local v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_b
    :goto_6
    goto :goto_7

    .line 154
    :catch_2
    move-exception v0

    .line 156
    :goto_7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected onStartEvent()V
    .locals 2

    .line 191
    const-string v0, ""

    const-string v1, "=====divhee===onStartEvent==00===DslAppsInstall=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method protected onStopEvent()V
    .locals 2

    .line 198
    const-string v0, ""

    const-string v1, "=====divhee===onStopEvent==00===DslAppsInstall=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public stopMyselfServiceEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 313
    const-string v0, ""

    const-string v1, "===divhee======DslAppsInstall====stop====stop_MyselfServiceEvent=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onStopEvent()V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->nowStopAutoPreInstallFtpListApkService(Landroid/content/Context;)V

    .line 316
    return-void
.end method
