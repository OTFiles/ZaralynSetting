.class public Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;,
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;,
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field mDisableAfterUninstall:Z

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field private final mFragment:Landroid/app/Fragment;

.field final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToPackageRemove:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRequestRemoveDeviceAdmin:I

.field private final mRequestUninstall:I

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUpdatedSysApp:Z

.field private final mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;II)V
    .locals 3
    .param p1, "activity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p6, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p7, "userManager"    # Landroid/os/UserManager;
    .param p8, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p9, "requestUninstall"    # I
    .param p10, "requestRemoveDeviceAdmin"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    .line 582
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 683
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    instance-of v0, p2, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 133
    .local v0, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 134
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 135
    iput-object p5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 136
    iput-object p6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 137
    iput-object p7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 138
    iput-object p8, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 139
    iput-object p4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 141
    iput-object p2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    .line 143
    iput p9, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    .line 144
    iput p10, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    .line 146
    if-eqz p4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v1, p4, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 148
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, p0, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 149
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    goto :goto_0

    .line 151
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    .line 153
    :goto_0
    return-void

    .line 128
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fragment should implement AppButtonsDialogListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isSingleUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    return v0
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

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

.method private isSingleUser()Z
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 578
    .local v0, "userCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 579
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 578
    :cond_1
    :goto_0
    return v1
.end method

.method private refreshAndFinishIfPossible()V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->startListeningToPackageRemove()V

    .line 452
    :goto_0
    return-void
.end method

.method private setIntentAndFinish(Z)V
    .locals 2
    .param p1, "appChanged"    # Z

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    .line 444
    return-void
.end method

.method private showDialogInner(I)V
    .locals 4
    .param p1, "id"    # I

    .line 570
    invoke-static {p1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->newInstance(I)Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;

    move-result-object v0

    .line 571
    .local v0, "newFragment":Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .line 593
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 596
    .local v0, "match":I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_0

    .line 597
    const/4 v1, 0x1

    return v1

    .line 602
    .end local v0
    :cond_0
    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 604
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private startListeningToPackageRemove()V
    .locals 3

    .line 642
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 643
    return-void

    .line 645
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 646
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    .line 652
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 656
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 163
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "action_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    const v1, 0x7f120ee1

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const v1, 0x7f12065e

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$ForceStopButtonListener;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 174
    :cond_0
    return-void
.end method

.method forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x327

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 523
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "AppButtonsPrefCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 526
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 527
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 528
    .local v2, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_0

    .line 529
    iput-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 532
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "action_buttons"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 265
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    if-ne p1, v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 268
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    goto :goto_0

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    if-ne p1, v0, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    .line 275
    :cond_2
    :goto_0
    return-void
.end method

.method public handleDialogClick(I)V
    .locals 5
    .param p1, "id"    # I

    .line 278
    const/16 v0, 0x36a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :pswitch_1    # 0x1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 289
    goto :goto_0

    .line 280
    :pswitch_2    # 0x0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 282
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 284
    nop

    .line 294
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method handleDisableable()Z
    .locals 6

    .line 536
    const/4 v0, 0x0

    .line 540
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f12053b

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 541
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 547
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 548
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 549
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    move v0, v1

    goto :goto_1

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v2, 0x7f1205b7

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 552
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 553
    const/4 v0, 0x1

    goto :goto_1

    .line 543
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 544
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 556
    :goto_1
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 457
    :try_start_0
    const-string v0, "webviewupdate"

    .line 459
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 460
    .local v0, "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    invoke-interface {v0, p1}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 461
    const/4 v1, 0x1

    return v1

    .line 465
    .end local v0
    :cond_0
    nop

    .line 467
    const/4 v0, 0x0

    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 561
    invoke-static {p1, p2, p3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 326
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 198
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 331
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 336
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 316
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    .line 306
    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 321
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

    .line 311
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    .line 186
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 299
    return-void
.end method

.method refreshUi()Z
    .locals 8

    .line 609
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 610
    return v1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->retrieveAppEntry()V

    .line 613
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    goto :goto_1

    .line 617
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 619
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 621
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 622
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 623
    .local v4, "activityPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 627
    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 628
    const-string v6, "android.app.home.alternate"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 630
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v1
    .end local v2
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateUninstallButton()V

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 638
    const/4 v1, 0x1

    return v1

    .line 614
    .end local v0
    :cond_4
    :goto_1
    return v1
.end method

.method retrieveAppEntry()V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 341
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v3, 0x401240

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 349
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppButtonsPrefCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 353
    .end local v0
    :goto_0
    goto :goto_1

    .line 355
    :cond_0
    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 357
    :goto_1
    return-void
.end method

.method uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .line 505
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 508
    .local v0, "packageUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    const/16 v5, 0x368

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 513
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    iget v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 515
    return-void
.end method

.method updateForceStopButton()V
    .locals 14

    .line 472
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "AppButtonsPrefCtl"

    const-string v2, "User can\'t force stop device admin"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto/16 :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 479
    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "App is not explicitly stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto :goto_0

    .line 482
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v4, "package"

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 483
    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.PACKAGES"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v1, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v1, "AppButtonsPrefCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast to query restart status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v5 .. v13}, Lcom/android/settings/SettingsActivity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 492
    .end local v0
    :goto_0
    return-void
.end method

.method updateForceStopButtonInner(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 496
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 501
    :goto_0
    return-void
.end method

.method updateUninstallButton()V
    .locals 7

    .line 361
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 362
    .local v0, "isBundled":Z
    :goto_0
    const/4 v3, 0x1

    .line 363
    .local v3, "enabled":Z
    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleDisableable()Z

    move-result v3

    goto :goto_1

    .line 366
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 367
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 370
    const/4 v3, 0x0

    .line 375
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    const/4 v3, 0x0

    .line 382
    :cond_3
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    const/4 v3, 0x0

    .line 387
    :cond_4
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 389
    const/4 v3, 0x0

    .line 393
    :cond_5
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 394
    const/4 v3, 0x0

    .line 403
    :cond_6
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 404
    if-eqz v0, :cond_7

    .line 405
    const/4 v3, 0x0

    goto :goto_3

    .line 407
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v5

    .line 409
    .local v5, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v5, :cond_9

    .line 412
    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-le v6, v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_3

    .line 416
    :cond_9
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    move v3, v1

    .line 421
    .end local v4
    .end local v5
    :cond_a
    :goto_3
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_b

    .line 422
    const/4 v3, 0x0

    .line 425
    :cond_b
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 426
    const/4 v3, 0x0

    .line 429
    :cond_c
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 430
    return-void
.end method
