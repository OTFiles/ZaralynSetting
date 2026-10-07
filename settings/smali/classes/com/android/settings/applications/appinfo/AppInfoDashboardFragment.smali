.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
    }
.end annotation


# static fields
.field public static final APP_LIMITED_URI:Landroid/net/Uri;

.field public static final PARENT_MODE_URI:Landroid/net/Uri;

.field static final REQUEST_UNINSTALL:I = 0x0

.field static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field static final UNINSTALL_UPDATES:I = 0x2

.field public static mAppDetailHeaderBottonDisabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotDisadbledPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isHaveRightParentPassword:I

.field private mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

.field private mAppActionResetButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field private mInitialized:Z

.field private mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

.field private mListeningToPackageRemove:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUpdatedSysApp:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.arcface"

    const-string v2, "com.dream.ota.update"

    const-string v3, "com.readboy.parentmanager"

    const-string v4, "com.readboy.handwritingpen"

    const-string v5, "com.dream.forcerest"

    const-string v6, "com.readboy.adblock"

    const-string v7, "com.adobe.air"

    const-string v8, "cn.dream.qaccount"

    const-string v9, "com.readboy.Q.preventWallow"

    const-string v10, "com.readboy.killapp"

    const-string v11, "com.android.packageinstaller"

    const-string v12, "com.android.defcontainer"

    const-string v13, "com.android.backup"

    const-string v14, "com.qualcomm.qti.poweroffalarm"

    const-string v15, "com.android.settings.intelligence"

    const-string v16, "com.android.managedprovisioning"

    const-string v17, "com.android.providers.settings"

    const-string v18, "com.android.permissioncontroller"

    const-string v19, "com.android.keychain"

    const-string v20, "com.readboy.screensnatchingword"

    const-string v21, "com.readboy.android.push"

    const-string v22, "com.readboy.screenrecord"

    const-string v23, "com.android.smspush"

    const-string v24, "cn.dream.ebag"

    const-string v25, "com.sensetime.humanaction"

    const-string v26, "com.qualcomm.timeservice"

    const-string v27, "com.baidu.map.location"

    const-string v28, "com.dream.eyescare"

    const-string v29, "com.readboy.personalsetting"

    const-string v30, "com.android.location.fused"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppDetailHeaderBottonDisabledList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.arcface"

    const-string v2, "com.dream.ota.update"

    const-string v3, "com.readboy.parentmanager"

    const-string v4, "com.readboy.handwritingpen"

    const-string v5, "com.dream.forcerest"

    const-string v6, "com.readboy.adblock"

    const-string v7, "com.android.dialer"

    const-string v8, "com.android.mms"

    const-string v9, "cn.dream.qaccount"

    const-string v10, "com.readboy.Q.preventWallow"

    const-string v11, "com.readboy.killapp"

    const-string v12, "com.android.packageinstaller"

    const-string v13, "com.android.defcontainer"

    const-string v14, "com.android.backup"

    const-string v15, "com.qualcomm.qti.poweroffalarm"

    const-string v16, "com.android.settings.intelligence"

    const-string v17, "com.android.managedprovisioning"

    const-string v18, "com.android.providers.settings"

    const-string v19, "com.android.permissioncontroller"

    const-string v20, "com.android.keychain"

    const-string v21, "com.readboy.screensnatchingword"

    const-string v22, "com.readboy.android.push"

    const-string v23, "com.readboy.screenrecord"

    const-string v24, "com.android.smspush"

    const-string v25, "cn.dream.ebag"

    const-string v26, "com.sensetime.humanaction"

    const-string v27, "com.qualcomm.timeservice"

    const-string v28, "com.baidu.map.location"

    const-string v29, "com.android.settings"

    const-string v30, "com.dream.eyescare"

    const-string v31, "com.readboy.personalsetting"

    const-string v32, "com.android.location.fused"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    .line 1242
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/app_limited"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->APP_LIMITED_URI:Landroid/net/Uri;

    .line 1243
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/install_app_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->PARENT_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    .line 1035
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 714
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 715
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x327

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 720
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "AppInfoDashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 723
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 724
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 725
    .local v2, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_1

    .line 726
    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 729
    return-void
.end method

.method public static getBlackList(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1477
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getBlackList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1478
    return-void
.end method

.method public static getBlackList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1480
    .local p1, "newArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "hqb"

    const-string v1, "divhee===hqb__pm__getBlackList"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1482
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1483
    const/4 v1, 0x0

    .line 1485
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->APP_LIMITED_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 1486
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1487
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1488
    const-string v2, "package_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1489
    .local v2, "col":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1490
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1491
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    .line 1498
    :cond_1
    if-eqz v1, :cond_2

    .line 1500
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1502
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1501
    :catch_0
    move-exception v2

    .line 1503
    :goto_1
    const/4 v1, 0x0

    .line 1505
    :cond_2
    if-eqz p1, :cond_4

    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1506
    :goto_2
    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1498
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 1495
    :catch_1
    move-exception v2

    .line 1496
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1498
    .end local v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 1500
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1502
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1501
    :catch_2
    move-exception v2

    .line 1503
    :goto_3
    const/4 v1, 0x0

    .line 1505
    :cond_3
    if-eqz p1, :cond_4

    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    .line 1509
    :cond_4
    :goto_4
    return-void

    .line 1498
    :goto_5
    if-eqz v1, :cond_5

    .line 1500
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1502
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 1501
    :catch_3
    move-exception v3

    .line 1503
    :goto_6
    const/4 v1, 0x0

    .line 1505
    :cond_5
    if-eqz p1, :cond_6

    sget-object v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1506
    sget-object v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    throw v2
.end method

.method public static getIsFrozen(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1091
    const/4 v0, 0x0

    .line 1093
    .local v0, "isFrozen":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1094
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isActivitiesForPackageDisabled(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1095
    .local v1, "iAppDisabledState":I
    move v2, v0

    .line 1096
    .local v2, "forceUpdate":Z
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1098
    .end local v1
    .end local v2
    :cond_1
    return v0
.end method

.method public static getKillappSharedPreferencesData()Ljava/lang/String;
    .locals 4

    .line 1642
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v1, "com.readboy.killapp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1643
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1645
    .local v1, "spf":Landroid/content/SharedPreferences;
    const-string v2, "fwq_cfg_data"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "value":Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1649
    .end local v0
    .end local v1
    .end local v2
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divhee error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    goto :goto_0

    .line 1647
    :catch_1
    move-exception v0

    .line 1648
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "tag"

    const-string v2, "divhee app isnot installed com.readboy.killapp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    .end local v0
    nop

    .line 1652
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 882
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    .line 883
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 884
    if-nez v0, :cond_2

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 886
    .local v1, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    .line 890
    .end local v1
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v1
.end method

.method public static getParentModeAllIgnoreFilterReadboyApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "system_mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v0, "packNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1419
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    .line 1421
    .local v9, "sbFilter":Ljava/lang/StringBuilder;
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1422
    .local v10, "moreCell":[Ljava/lang/String;
    move v1, v8

    .local v1, "inum":I
    :goto_0
    array-length v2, v10

    if-ge v1, v2, :cond_1

    .line 1423
    if-nez v1, :cond_0

    .line 1424
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const-string v2, "system_mode"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v2, " == 1 and "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1428
    :cond_0
    const-string v2, "and "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :goto_1
    const-string v2, "app_user_type != "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    aget-object v2, v10, v1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1436
    .end local v1
    :cond_1
    const/4 v1, 0x0

    move-object v11, v1

    .line 1439
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->PARENT_MODE_URI:Landroid/net/Uri;

    const-string v1, "package_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v11, v1

    .line 1440
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1444
    :cond_2
    const-string v1, "package_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 1449
    if-eqz v11, :cond_5

    .line 1451
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1452
    :catch_0
    move-exception v1

    goto :goto_5

    .line 1441
    :cond_3
    :goto_2
    nop

    .line 1449
    if-eqz v11, :cond_4

    .line 1451
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1453
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1452
    :catch_1
    move-exception v1

    .line 1455
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 1441
    .end local v11
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v0

    .line 1449
    .end local v1
    .restart local v11
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 1446
    :catch_2
    move-exception v1

    .line 1447
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1449
    .end local v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_5

    .line 1451
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1453
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    goto :goto_5

    .line 1452
    :catch_3
    move-exception v1

    .line 1455
    :cond_5
    :goto_5
    const/4 v1, 0x0

    .line 1456
    .end local v11
    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_8

    .line 1449
    .end local v1
    .restart local v11
    :goto_6
    if-eqz v11, :cond_6

    .line 1451
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1453
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 1452
    :catch_4
    move-exception v2

    .line 1455
    :cond_6
    :goto_7
    const/4 v2, 0x0

    .end local v11
    .local v2, "cursor":Landroid/database/Cursor;
    throw v1

    .line 1460
    .end local v2
    .end local v9
    .end local v10
    :cond_7
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.iflytek.speechcloud"

    const-string v3, "com.readboy.arcface"

    const-string v4, "com.dinghmcn.android.wificonnectclient"

    const-string v5, "com.sensetime.humanaction"

    const-string v6, "com.sohu.inputmethod.sogouoem"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1465
    .local v1, "someIgnoreApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .local v8, "inum":I
    :goto_9
    move v2, v8

    .end local v8
    .local v2, "inum":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1466
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1465
    add-int/lit8 v8, v2, 0x1

    .end local v2
    .restart local v8
    goto :goto_9

    .line 1470
    .end local v8
    :cond_8
    return-object v0
.end method

.method public static getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "system_mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v0, "packNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1354
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    .line 1356
    .local v9, "sbFilter":Ljava/lang/StringBuilder;
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1357
    .local v10, "moreCell":[Ljava/lang/String;
    const-string v1, "( ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    move v1, v8

    .local v1, "inum":I
    :goto_0
    array-length v2, v10

    if-ge v1, v2, :cond_1

    .line 1359
    if-nez v1, :cond_0

    .line 1360
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1362
    :cond_0
    const-string v2, "and "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :goto_1
    const-string v2, "system_mode"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    const-string v2, " != "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    aget-object v2, v10, v1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    .end local v1
    :cond_1
    const-string v1, ") or  "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    const-string v1, "system_mode"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    const-string v1, " is null )"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    const/4 v1, 0x0

    move-object v11, v1

    .line 1376
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->PARENT_MODE_URI:Landroid/net/Uri;

    const-string v1, "package_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " app_user_type in (3) and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v11, v1

    .line 1377
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1381
    :cond_2
    const-string v1, "package_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 1386
    if-eqz v11, :cond_5

    .line 1388
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1389
    :catch_0
    move-exception v1

    goto :goto_5

    .line 1378
    :cond_3
    :goto_2
    nop

    .line 1386
    if-eqz v11, :cond_4

    .line 1388
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1390
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1389
    :catch_1
    move-exception v1

    .line 1392
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 1378
    .end local v11
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v0

    .line 1386
    .end local v1
    .restart local v11
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 1383
    :catch_2
    move-exception v1

    .line 1384
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1386
    .end local v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_5

    .line 1388
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1390
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    goto :goto_5

    .line 1389
    :catch_3
    move-exception v1

    .line 1392
    :cond_5
    :goto_5
    const/4 v1, 0x0

    .line 1393
    .end local v11
    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_8

    .line 1386
    .end local v1
    .restart local v11
    :goto_6
    if-eqz v11, :cond_6

    .line 1388
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1390
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 1389
    :catch_4
    move-exception v2

    .line 1392
    :cond_6
    :goto_7
    const/4 v2, 0x0

    .end local v11
    .local v2, "cursor":Landroid/database/Cursor;
    throw v1

    .line 1397
    .end local v2
    .end local v9
    .end local v10
    :cond_7
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.iflytek.speechcloud"

    const-string v3, "com.readboy.arcface"

    const-string v4, "com.dinghmcn.android.wificonnectclient"

    const-string v5, "com.sensetime.humanaction"

    const-string v6, "com.sohu.inputmethod.sogouoem"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1402
    .local v1, "someIgnoreApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .local v8, "inum":I
    :goto_9
    move v2, v8

    .end local v8
    .local v2, "inum":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1403
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v8, v2, 0x1

    .end local v2
    .restart local v8
    goto :goto_9

    .line 1407
    .end local v8
    :cond_8
    return-object v0
.end method

.method public static getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "system_mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v0, "packNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1319
    .local v7, "cr":Landroid/content/ContentResolver;
    if-eqz v7, :cond_5

    .line 1320
    const/4 v1, 0x0

    move-object v8, v1

    .line 1323
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->PARENT_MODE_URI:Landroid/net/Uri;

    const-string v1, "package_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system_mode in ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 1324
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    const-string v1, "package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1333
    if-eqz v8, :cond_3

    .line 1335
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1336
    :catch_0
    move-exception v1

    goto :goto_3

    .line 1325
    :cond_1
    :goto_0
    nop

    .line 1333
    if-eqz v8, :cond_2

    .line 1335
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1337
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1336
    :catch_1
    move-exception v1

    .line 1339
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 1325
    .end local v8
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v0

    .line 1333
    .end local v1
    .restart local v8
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1330
    :catch_2
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1333
    .end local v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_3

    .line 1335
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1337
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    goto :goto_3

    .line 1336
    :catch_3
    move-exception v1

    .line 1339
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 1340
    .end local v8
    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_6

    .line 1333
    .end local v1
    .restart local v8
    :goto_4
    if-eqz v8, :cond_4

    .line 1335
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1337
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1336
    :catch_4
    move-exception v2

    .line 1339
    :cond_4
    :goto_5
    const/4 v2, 0x0

    .end local v8
    .local v2, "cursor":Landroid/database/Cursor;
    throw v1

    .line 1342
    .end local v2
    :cond_5
    :goto_6
    return-object v0
.end method

.method public static isActivitiesForPackageDisabled(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1112
    const/4 v0, -0x1

    .line 1117
    .local v0, "iResult":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1118
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1120
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    .line 1121
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 1122
    .local v3, "iEnabelSetting":I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1125
    :cond_0
    const/4 v0, 0x1

    .end local v1
    .end local v2
    .end local v3
    goto :goto_1

    .line 1123
    .restart local v1
    .restart local v2
    .restart local v3
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1132
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    :goto_1
    goto :goto_2

    .line 1130
    :catch_0
    move-exception v1

    .line 1131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    goto :goto_2

    .line 1128
    :catch_1
    move-exception v1

    .line 1129
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v1
    goto :goto_1

    .line 1133
    :goto_2
    return v0
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPackageForbidden(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1216
    const-string v0, "hqb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee===hqb__pm__isPackageForbidden__packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1219
    const-string v0, "hqb"

    const-string v2, "divhee===hqb__pm__isPackageForbidden__false1"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return v1

    .line 1222
    :cond_0
    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1223
    return v2

    .line 1225
    :cond_1
    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getBlackList(Landroid/content/Context;)V

    .line 1226
    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1227
    const-string v0, "hqb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "divhee===hqb__pm__isPackageForbidden__mBlacklist.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    const-string v0, "hqb"

    const-string v1, "divhee===hqb__pm__isPackageForbidden__true2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return v2

    .line 1233
    :cond_2
    const-string v0, "hqb"

    const-string v2, "divhee===hqb__pm__isPackageForbidden__false3"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return v1
.end method

.method public static isReadboyNeedDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 147
    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppDetailHeaderBottonDisabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cn.dream.ebag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    :goto_0
    return v1

    .line 152
    :cond_2
    return v1
.end method

.method private isSingleUser()Z
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 824
    .local v0, "userCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static onClickThaw(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1107
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setApplicationFrozen(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1108
    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getIsFrozen(Ljava/lang/String;)Z

    .line 1109
    return-void
.end method

.method private onPackageRemoved()V
    .locals 2

    .line 829
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->finishActivity(I)V

    .line 831
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v1

    .line 832
    :goto_0
    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 834
    return-void
.end method

.method public static queryLauncherAppClassByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcusPkgName"    # Ljava/lang/String;

    .line 1766
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1767
    .local v0, "pkgManager":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1769
    .local v1, "iSB":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1770
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1774
    .local v3, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1775
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1776
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1777
    const-string v6, "@"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    :cond_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    .end local v5
    goto :goto_0

    .line 1782
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static resetParentModeStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "system_mode"    # I

    .line 1253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1257
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1258
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1259
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "system_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1261
    sget-object v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->PARENT_MODE_URI:Landroid/net/Uri;

    const-string v5, "package_name=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1264
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 1265
    .local v2, "pkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    const-string v5, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "system_mode"

    invoke-static {p0, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->sentToParentManagerAppModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1283
    .end local v0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->recheckoutOneAppLauncherStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 1285
    return-void

    .line 1254
    :cond_2
    :goto_1
    return-void
.end method

.method public static sentToParentManagerAppModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "lable_name"    # Ljava/lang/String;

    .line 1293
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.readboy.parentmanager.APP_SYSTEM_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v1, "lable_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v1, "pack_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1300
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1301
    .end local v0
    :goto_0
    return-void
.end method

.method public static setActivityDisplayByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentname"    # Landroid/content/ComponentName;
    .param p2, "showhide"    # Z

    .line 1573
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    monitor-enter v0

    .line 1574
    const/4 v1, -0x1

    .line 1576
    .local v1, "isNowStatus":I
    const/4 v2, 0x0

    :try_start_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "===divhee======showhideapp==divhee========setActivityDisplay_ByComponentName=======11=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 1578
    if-nez p2, :cond_5

    sget-object v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 1579
    const/4 v1, -0x2

    .line 1589
    if-eqz p1, :cond_0

    .line 1590
    :try_start_1
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1591
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1596
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.snda.wifilocating"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1597
    .local v3, "disabledPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getKillappSharedPreferencesData()Ljava/lang/String;

    move-result-object v4

    .line 1598
    .local v4, "netDisablePkgs":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_3

    .line 1600
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1602
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1603
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1604
    const/4 v7, 0x0

    .line 1605
    .local v7, "jsonItemValue":Ljava/lang/String;
    nop

    .local v2, "inum":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ge v2, v8, :cond_2

    .line 1607
    :try_start_4
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .line 1610
    goto :goto_1

    .line 1608
    :catch_0
    move-exception v8

    .line 1609
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1612
    .end local v8
    :goto_1
    :try_start_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1613
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    goto :goto_2

    .line 1615
    :catch_1
    move-exception v8

    .line 1605
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1621
    .end local v2
    .end local v5
    .end local v6
    .end local v7
    :cond_2
    goto :goto_3

    .line 1620
    :catch_2
    move-exception v2

    .line 1623
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1625
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1627
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1631
    .end local v3
    .end local v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    goto :goto_4

    .line 1629
    :catch_3
    move-exception v2

    .line 1630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===divhee==============getKillappSharedPreferencesData===error==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .end local v2
    :goto_4
    monitor-exit v0

    .line 1580
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    .line 1582
    :cond_5
    if-nez p2, :cond_6

    const/4 v3, 0x2

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    :try_start_8
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1583
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v1, p2

    .line 1589
    :cond_7
    if-eqz p1, :cond_8

    .line 1590
    :try_start_9
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1591
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1596
    .end local v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_8
    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.snda.wifilocating"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1597
    .local v3, "disabledPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getKillappSharedPreferencesData()Ljava/lang/String;

    move-result-object v4

    .line 1598
    .restart local v4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v5, :cond_b

    .line 1600
    :try_start_b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .restart local v5
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1602
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1603
    .restart local v6
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 1604
    const/4 v7, 0x0

    .line 1605
    .restart local v7
    nop

    .local v2, "inum":I
    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-ge v2, v8, :cond_a

    .line 1607
    :try_start_c
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v7, v8

    .line 1610
    goto :goto_7

    .line 1608
    :catch_4
    move-exception v8

    .line 1609
    .restart local v8
    const/4 v7, 0x0

    .line 1612
    .end local v8
    :goto_7
    :try_start_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1613
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_9
    goto :goto_8

    .line 1615
    :catch_5
    move-exception v8

    .line 1605
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1621
    .end local v2
    .end local v5
    .end local v6
    .end local v7
    :cond_a
    goto :goto_9

    .line 1620
    :catch_6
    move-exception v2

    .line 1623
    :cond_b
    :goto_9
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1625
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1627
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .end local v3
    .end local v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_e

    .line 1629
    :catch_7
    move-exception v2

    .line 1630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_f
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===divhee==============getKillappSharedPreferencesData===error==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_f

    .line 1589
    .end local v2
    :catchall_0
    move-exception v3

    goto/16 :goto_11

    .line 1586
    :catch_8
    move-exception v3

    .line 1587
    .local v3, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1589
    .end local v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz p1, :cond_c

    .line 1590
    :try_start_11
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1591
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1596
    .end local v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :try_start_12
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.snda.wifilocating"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1597
    .local v3, "disabledPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getKillappSharedPreferencesData()Ljava/lang/String;

    move-result-object v4

    .line 1598
    .restart local v4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-nez v5, :cond_f

    .line 1600
    :try_start_13
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .restart local v5
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1602
    const-string v6, "4"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1603
    .restart local v6
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_e

    .line 1604
    const/4 v7, 0x0

    .line 1605
    .restart local v7
    nop

    .local v2, "inum":I
    :goto_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-ge v2, v8, :cond_e

    .line 1607
    :try_start_14
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object v7, v8

    .line 1610
    goto :goto_b

    .line 1608
    :catch_9
    move-exception v8

    .line 1609
    .restart local v8
    const/4 v7, 0x0

    .line 1612
    .end local v8
    :goto_b
    :try_start_15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1613
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_d
    goto :goto_c

    .line 1615
    :catch_a
    move-exception v8

    .line 1605
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1621
    .end local v2
    .end local v5
    .end local v6
    .end local v7
    :cond_e
    goto :goto_d

    .line 1620
    :catch_b
    move-exception v2

    .line 1623
    :cond_f
    :goto_d
    :try_start_16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1625
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1627
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1631
    .end local v3
    .end local v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_10
    :goto_e
    goto :goto_10

    .line 1629
    :catch_c
    move-exception v2

    .line 1630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_17
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===divhee==============getKillappSharedPreferencesData===error==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    .end local v2
    nop

    .line 1633
    .end local v1
    :goto_10
    monitor-exit v0

    .line 1634
    return-void

    .line 1589
    .restart local v1
    :goto_11
    if-eqz p1, :cond_11

    .line 1590
    new-instance v4, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v4}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v4

    .line 1591
    .local v4, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v4}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .end local v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_12

    .line 1633
    .end local v1
    :catchall_1
    move-exception v1

    goto/16 :goto_18

    .line 1596
    .restart local v1
    :cond_11
    :goto_12
    :try_start_18
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, "com.snda.wifilocating"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1597
    .local v4, "disabledPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getKillappSharedPreferencesData()Ljava/lang/String;

    move-result-object v5

    .line 1598
    .local v5, "netDisablePkgs":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v6, :cond_14

    .line 1600
    :try_start_19
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "4"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "4"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1602
    const-string v7, "4"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1603
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_13

    .line 1604
    const/4 v8, 0x0

    .line 1605
    .local v8, "jsonItemValue":Ljava/lang/String;
    nop

    .local v2, "inum":I
    :goto_13
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-ge v2, v9, :cond_13

    .line 1607
    :try_start_1a
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object v8, v9

    .line 1610
    goto :goto_14

    .line 1608
    :catch_d
    move-exception v9

    .line 1609
    .local v9, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1612
    .end local v9
    :goto_14
    :try_start_1b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1613
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_12
    goto :goto_15

    .line 1615
    :catch_e
    move-exception v9

    .line 1605
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1621
    .end local v2
    .end local v6
    .end local v7
    .end local v8
    :cond_13
    goto :goto_16

    .line 1620
    :catch_f
    move-exception v2

    .line 1623
    :cond_14
    :goto_16
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1625
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1627
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 1631
    .end local v4
    .end local v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_15
    goto :goto_17

    .line 1629
    :catch_10
    move-exception v2

    .line 1630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===divhee==============getKillappSharedPreferencesData===error==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .end local v2
    :goto_17
    throw v3

    .line 1633
    .end local v1
    :goto_18
    monitor-exit v0

    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    throw v1
.end method

.method public static setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showhide"    # Z

    .line 1518
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    monitor-enter v0

    .line 1519
    const/4 v1, -0x1

    .line 1521
    .local v1, "isNowStatus":I
    :try_start_0
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "=====divhee========setActivityDisplay_ByPkgName=======1=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    if-eqz p0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1526
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1527
    .local v2, "searchIntent":Landroid/content/Intent;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======1==divhee==============searchIntent===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    if-eqz v2, :cond_0

    .line 1529
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====2====divhee==============searchIntent===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_0
    if-nez p2, :cond_2

    sget-object v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 1532
    const/4 v1, -0x2

    .line 1558
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1559
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1560
    .local v3, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1561
    .end local v3
    :cond_1
    monitor-exit v0

    .line 1533
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    .line 1535
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1536
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/16 v6, 0x21

    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1537
    .local v5, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_7

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v6, v6

    if-lez v6, :cond_7

    .line 1538
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v7, v6

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v8, v1

    move v1, v3

    .end local v1
    .local v8, "isNowStatus":I
    :goto_0
    if-ge v1, v7, :cond_6

    :try_start_3
    aget-object v9, v6, v1

    .line 1540
    .local v9, "resolveInfo":Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_3

    :try_start_4
    const-string v10, "com.android.settings"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v11, "com.android.settings.CryptKeeper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 1549
    :catch_0
    move-exception v10

    goto :goto_3

    .line 1543
    :cond_3
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    const/4 v11, 0x2

    goto :goto_1

    :cond_4
    move v11, v3

    :goto_1
    invoke-virtual {p0, v10, v11, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1545
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-gez v8, :cond_5

    .line 1546
    move v8, p2

    .line 1551
    :cond_5
    goto :goto_4

    .line 1549
    :goto_3
    nop

    .line 1550
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1538
    .end local v9
    .end local v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1558
    .end local v2
    .end local v4
    .end local v5
    :catchall_0
    move-exception v2

    move v1, v8

    goto :goto_7

    .line 1555
    :catch_1
    move-exception v2

    move v1, v8

    goto :goto_5

    .line 1558
    :cond_6
    move v1, v8

    .end local v8
    .restart local v1
    :cond_7
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1559
    new-instance v2, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v2}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v2

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 1558
    :catchall_1
    move-exception v2

    goto :goto_7

    .line 1555
    :catch_2
    move-exception v2

    .line 1556
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1558
    .end local v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1559
    new-instance v2, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v2}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v2

    .line 1560
    .local v2, "launcherStatus":Lcom/android/settings/database/LauncherStatus;
    :goto_6
    invoke-static {v2}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1561
    .end local v2
    nop

    .line 1563
    .end local v1
    :cond_8
    monitor-exit v0

    .line 1564
    return-void

    .line 1558
    .restart local v1
    :goto_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1559
    new-instance v3, Lcom/android/settings/database/LauncherStatus;

    invoke-direct {v3}, Lcom/android/settings/database/LauncherStatus;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/settings/database/LauncherStatus;->reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;

    move-result-object v3

    .line 1560
    .restart local v3
    invoke-static {v3}, Lcom/android/settings/database/StacksDatabase;->saveLauStatusNowStatus(Lcom/android/settings/database/LauncherStatus;)Z

    .line 1561
    .end local v3
    :cond_9
    throw v2

    .line 1563
    .end local v1
    :catchall_2
    move-exception v1

    monitor-exit v0

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public static setApplicationFrozen(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "frozen"    # Z

    .line 1161
    if-eqz p0, :cond_1

    .line 1162
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_2

    .line 1166
    :cond_1
    :goto_1
    nop

    .line 1167
    :goto_2
    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 4
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 927
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:no_headers"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 929
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 932
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    .line 933
    .end local v0
    .end local v2
    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 938
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v0
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 940
    return-void
.end method

.method public static setReceiversEnabledByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentname"    # Landroid/content/ComponentName;
    .param p2, "showhide"    # Z

    .line 1746
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee========setReceiversEnabled_ByComponentName=======1001=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1748
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    return-void

    .line 1751
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1756
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1757
    .end local v0
    :goto_1
    return-void
.end method

.method public static setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showhide"    # Z

    .line 1715
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee========setReceiversEnabled_ByPkgName=======1000=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1717
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    return-void

    .line 1720
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1721
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1722
    .local v2, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 1723
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 1725
    .local v7, "resolveInfo":Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    invoke-virtual {p0, v8, v9, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1729
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1727
    :catch_0
    move-exception v8

    .line 1728
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1723
    .end local v7
    .end local v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1735
    .end local v1
    .end local v2
    :cond_2
    goto :goto_3

    .line 1733
    :catch_1
    move-exception v0

    .line 1734
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1736
    .end local v0
    :goto_3
    return-void
.end method

.method public static setServiceEnabledByComponentName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Z)V
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentname"    # Landroid/content/ComponentName;
    .param p2, "showhide"    # Z

    .line 1694
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee========setServiceEnabled_ByComponentName=======1001=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1696
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    return-void

    .line 1699
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1704
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1705
    .end local v0
    :goto_1
    return-void
.end method

.method public static setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showhide"    # Z

    .line 1663
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee========setServiceEnabled_ByPkgName=======1000=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1665
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mNotDisadbledPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    return-void

    .line 1668
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1669
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1670
    .local v2, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 1671
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 1673
    .local v6, "resolveInfo":Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1677
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1675
    :catch_0
    move-exception v7

    .line 1676
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1671
    .end local v6
    .end local v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1683
    .end local v1
    .end local v2
    :cond_2
    goto :goto_3

    .line 1681
    :catch_1
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1684
    .end local v0
    :goto_3
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "caller"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p4, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/os/Bundle;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    .line 734
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    .line 737
    :cond_0
    const-string v0, "package"

    iget-object v1, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "uid"

    iget-object v1, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    const-string v0, "callme"

    const-string v1, "com.android.settings"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======divhee=========startAppInfoFragment===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 745
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 746
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 747
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x1

    .line 748
    invoke-virtual {v0, p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 749
    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 751
    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    .line 1028
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 1029
    return-void

    .line 1031
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .line 699
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 705
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 706
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x368

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/util/Pair;

    .line 707
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 709
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 710
    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    .line 711
    return-void
.end method


# virtual methods
.method addToCallbackList(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    return-void
.end method

.method createDialog(II)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 648
    const v0, 0x7f120117

    const v1, 0x7f120118

    const/4 v2, 0x0

    const v3, 0x7f12055d

    packed-switch p1, :pswitch_data_0

    .line 695
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 668
    :pswitch_0    # 0x3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 670
    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 668
    return-object v0

    .line 650
    :pswitch_1    # 0x2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 652
    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 650
    return-object v0

    .line 683
    :pswitch_2    # 0x1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f120660

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f12065f

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120569

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 686
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 683
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 389
    .local v2, "lifecycle":Lcom/android/settingslib/core/lifecycle/Lifecycle;
    new-instance v3, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v3, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-direct {v3, p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 391
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v3, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-direct {v3, p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionResetButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    .line 393
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionResetButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 396
    .local v4, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v4
    goto :goto_0

    .line 401
    :cond_1
    new-instance v3, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    .line 403
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v3, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v3, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 407
    .local v3, "appMemoryPreferenceController":Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v4, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v4, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v4, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v4, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v4, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    return-object v1
.end method

.method ensurePackageInfoAvailable(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 454
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 455
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 456
    const-string v0, "AppInfoDashboard"

    const-string v1, "Package info not available. Is this package already uninstalled?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    return v1
.end method

.method getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 374
    const-string v0, "AppInfoDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 311
    const/16 v0, 0x14

    return v0
.end method

.method getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 839
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .line 841
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 844
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 846
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 847
    add-int/lit8 v1, v1, 0x1

    .line 851
    .end local v4
    :cond_0
    goto :goto_1

    .line 849
    :catch_0
    move-exception v4

    .line 850
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppInfoDashboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v3
    .end local v4
    :goto_1
    goto :goto_0

    .line 854
    :cond_1
    return v1
.end method

.method getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 369
    const v0, 0x7f150016

    return v0
.end method

.method handleForceStopButtonClick()V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 806
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 807
    return-void

    .line 809
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    .line 810
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_2

    .line 813
    nop

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 813
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    .line 819
    :goto_0
    return-void
.end method

.method handleUninstallButtonClick()V
    .locals 9

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 756
    return-void

    .line 758
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    .line 759
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 762
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 763
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 765
    .local v2, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 766
    .local v4, "uninstallDAIntent":Landroid/content/Intent;
    const-string v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v6, 0x369

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v5, v2, v6, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 770
    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 771
    return-void

    .line 773
    .end local v2
    .end local v4
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v2, v0, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 775
    .local v2, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v4, :cond_4

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v4, v0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v1

    .line 777
    .local v4, "uninstallBlockedBySystem":Z
    :goto_1
    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    .line 778
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 779
    :cond_5
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_8

    .line 780
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isDisabledUntilUsed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 784
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isSingleUser()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 785
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    .line 787
    :cond_6
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    .line 790
    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x36b

    new-array v8, v3, [Landroid/util/Pair;

    .line 790
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 793
    new-instance v5, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, p0, v6, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v1, v3

    .line 795
    invoke-virtual {v5, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 797
    :cond_8
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_9

    .line 798
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 800
    :cond_9
    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 802
    :goto_2
    return-void
.end method

.method public isSystemProtectedApp()Z
    .locals 3

    .line 586
    const/4 v0, 0x1

    .line 587
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 588
    const/4 v0, 0x0

    goto :goto_1

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 592
    const/4 v0, 0x0

    goto :goto_1

    .line 590
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 594
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 513
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 514
    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 548
    :pswitch_0    # 0x1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    goto :goto_2

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    goto :goto_2

    .line 528
    :pswitch_1    # 0x0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v3, "\u5378\u8f7d\u5b8c\u6210"

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 532
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 533
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 535
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_2

    .line 536
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    .line 537
    new-instance v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 539
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 542
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    goto :goto_2

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    .line 546
    goto :goto_2

    .line 516
    :cond_4
    if-eq p2, v2, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    iget v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    if-ne v3, v1, :cond_5

    goto :goto_1

    .line 520
    :cond_5
    iput v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 522
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 524
    goto :goto_2

    .line 518
    :cond_6
    :goto_1
    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 555
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 966
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "packageName":Ljava/lang/String;
    const-class v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 238
    const-class v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 239
    const-class v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 241
    .local v1, "installer":Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 243
    const-class v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 244
    const-class v2, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 245
    const-class v2, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 247
    const-class v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 248
    const-class v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 249
    const-class v2, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    .line 250
    invoke-virtual {v2, v0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    move-result-object v2

    .line 251
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 252
    const-class v2, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 253
    const-class v2, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 254
    const-class v2, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 256
    const-class v2, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 258
    .local v2, "writeSystemSettings":Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 260
    const-class v4, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 261
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 262
    .local v4, "drawOverlay":Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;
    invoke-virtual {v4, p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 264
    const-class v6, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    .line 265
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    .line 266
    .local v6, "pip":Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;
    invoke-virtual {v6, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v6, p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 268
    const-class v7, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 269
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 270
    .local v7, "externalSource":Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;
    invoke-virtual {v7, v0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v7, p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 273
    const-class v8, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v2, v9, v5

    aput-object v4, v9, v3

    const/4 v3, 0x2

    aput-object v6, v9, v3

    const/4 v3, 0x3

    aput-object v7, v9, v3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 284
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    .line 285
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    .line 293
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setHasOptionsMenu(Z)V

    .line 295
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->runCheckParentPassword(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 297
    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 301
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 465
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f12011c

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 467
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 468
    const/4 v1, 0x1

    const v2, 0x7f120edf

    invoke-interface {p1, v0, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 469
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 470
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 306
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 307
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 971
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 976
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 508
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 505
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 506
    return v1

    .line 502
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 503
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 961
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 983
    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const-string v0, "AppInfoDashboard"

    const-string v1, "Package change irrelevant, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    .line 444
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 332
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 334
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "isProtectdApp":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    :cond_1
    const/4 v0, 0x1

    .line 483
    :cond_2
    const-string v1, ""

    const-string v2, "=divhee=====AppInfoDashboardFragment==app=(%s:%s)"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "error"

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    move v2, v7

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    move v1, v7

    goto :goto_2

    :cond_5
    move v1, v6

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    .line 487
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 488
    .local v1, "uninstallUpdatesItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 490
    .local v2, "uninstallUpdateDisabled":Z
    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    move v6, v7

    nop

    :cond_6
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 492
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v3, v1, v4}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 496
    :cond_7
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 956
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 316
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 320
    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 324
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    goto :goto_0

    .line 325
    :cond_0
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    if-nez v1, :cond_1

    .line 326
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 328
    :cond_1
    :goto_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 951
    return-void
.end method

.method refreshUi()Z
    .locals 6

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 600
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 601
    return v1

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 605
    return v1

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    .line 613
    .local v2, "callback":Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
    if-eqz v2, :cond_3

    .line 614
    :try_start_0
    iget v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;->refreshUi(Z)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 616
    :catch_0
    move-exception v3

    .end local v2
    goto :goto_3

    .line 617
    .restart local v2
    :cond_3
    :goto_2
    nop

    .line 618
    .end local v2
    :goto_3
    goto :goto_0

    .line 620
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    const/high16 v2, 0x800000

    if-nez v0, :cond_6

    .line 622
    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    .line 623
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    move v1, v3

    nop

    :cond_5
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    goto :goto_4

    .line 628
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0x400200

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 632
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    if-nez v4, :cond_8

    .line 636
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/2addr v2, v4

    if-eqz v2, :cond_7

    move v1, v3

    nop

    :cond_7
    return v1

    .line 640
    .end local v0
    :cond_8
    nop

    .line 643
    :goto_4
    return v3

    .line 638
    :catch_1
    move-exception v0

    .line 639
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method retrieveAppEntry()V
    .locals 5

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 896
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 897
    return-void

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_1

    .line 900
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 901
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 903
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    .line 904
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 905
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    .line 908
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v3, 0x401240

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v1

    .line 915
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppInfoDashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v1
    :goto_0
    goto :goto_1

    .line 918
    :cond_2
    const-string v1, "AppInfoDashboard"

    const-string v2, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 921
    :goto_1
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 342
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 344
    return v1

    .line 346
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    return v1

    .line 353
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 361
    .end local v0
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 357
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 359
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isHaveRightParentPassword:I

    .line 360
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0
    nop

    .line 364
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 559
    const/4 v0, 0x1

    .line 560
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v1, :cond_0

    .line 561
    const/4 v0, 0x0

    goto :goto_1

    .line 562
    :cond_0
    if-nez p1, :cond_1

    .line 563
    const/4 v0, 0x0

    goto :goto_1

    .line 564
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 565
    const/4 v0, 0x0

    goto :goto_1

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 568
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 569
    const/4 v0, 0x0

    goto :goto_1

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 571
    const/4 v0, 0x0

    goto :goto_1

    .line 572
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v2, :cond_6

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 574
    const/4 v0, 0x0

    goto :goto_1

    .line 575
    :cond_6
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 576
    const/4 v0, 0x0

    goto :goto_1

    .line 567
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 578
    :cond_8
    :goto_1
    return v0
.end method

.method showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .line 943
    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 944
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method startListeningToPackageRemove()V
    .locals 3

    .line 1018
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 1022
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1025
    return-void
.end method
