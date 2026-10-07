.class public Lcom/android/settings/DeviceAdminAdd;
.super Lcom/android/settings/BaseTitleActivity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mIsCalledFromSupportDialog:Z

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mSupportMessage:Landroid/widget/TextView;

.field private final mToken:Landroid/os/IBinder;

.field mUninstallButton:Landroid/widget/Button;

.field mUninstalling:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/BaseTitleActivity;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->showPolicyTransparencyDialogIfRequired()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private addDeviceAdminPolicies(Z)V
    .locals 8
    .param p1, "showDescription"    # Z

    .line 662
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v0, :cond_4

    .line 663
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 664
    .local v0, "isAdminUser":Z
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 665
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    if-eqz v0, :cond_0

    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    .line 666
    .local v4, "descriptionId":I
    :goto_1
    if-eqz v0, :cond_1

    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .line 667
    .local v5, "labelId":I
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 668
    if-eqz p1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    const-string v7, ""

    .line 667
    :goto_3
    invoke-static {p0, v6, v7, v3}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v3

    .line 669
    .local v3, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 670
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 671
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    .line 673
    .end local v0
    :cond_4
    return-void
.end method

.method private findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 711
    .local v0, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_0

    .line 712
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 714
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$DeviceAdminAdd$3kbf0VppdPbIFmWVVpDZ5dj27E4;

    invoke-direct {v2, p1}, Lcom/android/settings/-$$Lambda$DeviceAdminAdd$3kbf0VppdPbIFmWVVpDZ5dj27E4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 648
    const-string v0, "no_remove_managed_profile"

    .line 649
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    .line 648
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method private getParentUserId()I
    .locals 2

    .line 658
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private hasBaseCantRemoveProfileRestriction()Z
    .locals 2

    .line 653
    const-string v0, "no_remove_managed_profile"

    .line 654
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    .line 653
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAdminUninstallable()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 699
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 700
    .local v0, "um":Landroid/os/UserManager;
    nop

    .line 701
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 700
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 702
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$findAdminWithPackageName$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "i"    # Landroid/content/ComponentName;

    .line 714
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showPolicyTransparencyDialogIfRequired()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 408
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 415
    .local v0, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_1

    .line 416
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 421
    .end local v0
    :cond_1
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 5

    .line 425
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 427
    const v0, 0x16059

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 428
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 427
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 430
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->unrestrictAppIfPossible(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 441
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 437
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 442
    .end local v0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_1

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 445
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 444
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 448
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 446
    :catch_1
    move-exception v0

    .line 447
    .local v0, "re":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 450
    .end local v0
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 451
    return-void
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 463
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    .line 464
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 467
    if-nez p1, :cond_1

    .line 469
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 471
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    .line 472
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_2

    .line 478
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 480
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 479
    :catch_1
    move-exception v0

    .line 481
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    .line 486
    .end local v0
    :goto_2
    return-void
.end method

.method getEllipsizedLines()I
    .locals 3

    .line 688
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 689
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 691
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 692
    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 691
    :goto_0
    return v1
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allow"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 489
    if-eqz p1, :cond_0

    const/16 v0, 0x2fe

    goto :goto_0

    .line 490
    :cond_0
    const/16 v0, 0x2ff

    .line 491
    .local v0, "logCategory":I
    :goto_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v0, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 492
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "icicle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 128
    invoke-super/range {p0 .. p1}, Lcom/android/settings/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 132
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 133
    const-string v0, "appops"

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 136
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "DeviceAdminAdd"

    const-string v3, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 148
    .local v0, "who":Landroid/content/ComponentName;
    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {v1, v6}, Lcom/android/settings/DeviceAdminAdd;->findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v7

    .line 151
    .local v7, "installedAdmin":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/ComponentName;>;"
    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    const-string v4, "DeviceAdminAdd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No component specified in "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 154
    return-void

    .line 156
    :cond_1
    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/content/ComponentName;

    .line 157
    iput-boolean v5, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    .line 160
    .end local v0
    .end local v7
    .local v6, "who":Landroid/content/ComponentName;
    :cond_2
    move-object v6, v0

    if-eqz v3, :cond_6

    const-string v0, "android.app.action.SET_PROFILE_OWNER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 162
    invoke-virtual {v1, v5}, Lcom/android/settings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 163
    iput-boolean v5, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 164
    nop

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "callingPackage":Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 173
    :cond_3
    :try_start_0
    invoke-virtual {v2, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 174
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v5

    if-nez v8, :cond_4

    .line 175
    const-string v4, "DeviceAdminAdd"

    const-string v5, "Cannot set a non-system app as a profile owner"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 177
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 183
    .end local v0
    :cond_4
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeviceAdminAdd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find the package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 182
    return-void

    .line 168
    .end local v0
    :cond_5
    :goto_0
    const-string v0, "DeviceAdminAdd"

    const-string v4, "Unknown or incorrect caller"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 170
    return-void

    .line 188
    .end local v7
    :cond_6
    :goto_1
    const/16 v0, 0x80

    :try_start_1
    invoke-virtual {v2, v6, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v7, v0

    .line 193
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    nop

    .line 192
    nop

    .line 198
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v8, 0x8000

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 202
    .local v8, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    move v9, v0

    .line 203
    .local v9, "count":I
    const/4 v10, 0x0

    .line 204
    .local v10, "found":Z
    move v0, v4

    .local v0, "i":I
    :goto_3
    move v11, v0

    .end local v0
    .local v11, "i":I
    if-ge v11, v9, :cond_9

    .line 205
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    :try_start_2
    iput-object v7, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 212
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v12}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 213
    .local v0, "dpi":Landroid/app/admin/DeviceAdminInfo;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x1

    .line 218
    .end local v0
    .end local v11
    .end local v12
    :goto_4
    goto :goto_5

    .line 216
    .restart local v11
    .restart local v12
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    const-string v13, "DeviceAdminAdd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0
    goto :goto_5

    .line 214
    :catch_2
    move-exception v0

    .line 215
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v13, "DeviceAdminAdd"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_4

    .line 204
    .end local v12
    :cond_8
    add-int/lit8 v0, v11, 0x1

    .end local v11
    .local v0, "i":I
    goto :goto_3

    .line 222
    .end local v0
    :cond_9
    :goto_5
    if-nez v10, :cond_a

    .line 223
    const-string v0, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request to add invalid device admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 225
    return-void

    .line 229
    .end local v8
    .end local v9
    .end local v10
    :cond_a
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v8, v0

    .line 230
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v7, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 232
    :try_start_3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v8}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 241
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    nop

    .line 246
    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    iput-boolean v4, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 248
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v0, v6, v9}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 250
    const-string v0, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested admin is already being removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 252
    return-void

    .line 255
    :cond_b
    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    .local v0, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    nop

    .local v4, "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_d

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 258
    .local v9, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v10, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v11, v9, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v10, v6, v11}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 259
    iput-boolean v5, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 260
    goto :goto_7

    .line 256
    .end local v9
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 263
    .end local v4
    :cond_d
    :goto_7
    iget-boolean v4, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v4, :cond_e

    .line 265
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 267
    return-void

    .line 274
    .end local v0
    :cond_e
    iget-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    .line 276
    return-void

    .line 279
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 281
    const v0, 0x7f0d0092

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 283
    const v0, 0x7f0a0039

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 284
    const v0, 0x7f0a003b

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f0a0037

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f0a0322

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f0a0032

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0a0033

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 290
    new-instance v0, Lcom/android/settings/DeviceAdminAdd$1;

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    .line 296
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 320
    const v4, 0x7f0a0042

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 321
    const v4, 0x7f0a003c

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 322
    const v4, 0x7f0a0040

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    .line 324
    const v4, 0x7f0a00c5

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 325
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 326
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v4, 0x7f0a04b5

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    .line 335
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 336
    iget-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v9, v1}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v4, 0x7f0a001b

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 347
    const v4, 0x7f0a0359

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "restrictedAction":Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 349
    new-instance v5, Lcom/android/settings/DeviceAdminAdd$5;

    invoke-direct {v5, v1}, Lcom/android/settings/DeviceAdminAdd$5;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-void

    .line 237
    .end local v0
    .end local v4
    :catch_3
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DeviceAdminAdd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 240
    return-void

    .line 233
    .end local v0
    :catch_4
    move-exception v0

    .line 234
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "DeviceAdminAdd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 236
    return-void

    .line 189
    .end local v0
    .end local v7
    .end local v8
    :catch_5
    move-exception v0

    move-object v4, v0

    .line 190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeviceAdminAdd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to retrieve device policy "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 192
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 532
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 552
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseTitleActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 534
    :cond_0
    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 535
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 537
    const v2, 0x7f120569

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$6;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$6;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    const v2, 0x7f12055d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected onPause()V
    .locals 4

    .line 507
    invoke-super {p0}, Lcom/android/settings/BaseTitleActivity;->onPause()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 513
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 515
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 516
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 496
    invoke-super {p0}, Lcom/android/settings/BaseTitleActivity;->onResume()V

    .line 497
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 503
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 520
    invoke-super {p0}, Lcom/android/settings/BaseTitleActivity;->onUserLeaveHint()V

    .line 525
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 528
    :cond_0
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 676
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 678
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 679
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 680
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 682
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v2, :cond_2

    .line 683
    const v2, 0x10802bd

    goto :goto_2

    .line 684
    :cond_2
    const v2, 0x10802bc

    .line 682
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    return-void
.end method

.method unrestrictAppIfPossible(Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 3
    .param p1, "batteryUtils"    # Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 455
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, "uid":I
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 460
    :cond_0
    return-void
.end method

.method updateInterface()V
    .locals 10

    .line 558
    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 562
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v3

    .line 566
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    .end local v3
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    const/4 v4, 0x1

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 579
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 580
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 581
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 582
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 583
    .local v3, "isProfileOwner":Z
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v5

    .line 584
    .local v5, "isManagedProfile":Z
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 586
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f1200c8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 587
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v7, 0x7f120bc1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 589
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    .line 590
    .local v6, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v7

    .line 591
    .local v7, "hasBaseRestriction":Z
    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 595
    .end local v6
    .end local v7
    goto/16 :goto_5

    :cond_4
    const v0, 0x7f120bc0

    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 596
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v7

    .line 595
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 608
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 609
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f120514

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 610
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 610
    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v4, v1

    .line 609
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const v4, 0x7f1200af

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->setTitle(I)V

    .line 613
    iget-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v4, :cond_6

    .line 614
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v4, 0x7f120bbf

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 616
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 598
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 600
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200c9

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 603
    :cond_8
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200c5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 605
    :goto_4
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    :goto_5
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 620
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 619
    invoke-virtual {v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 621
    .local v0, "supportMessage":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 622
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 625
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    .end local v0
    .end local v3
    .end local v5
    :goto_6
    goto :goto_8

    .line 628
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v3, 0x7f120515

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 630
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v1

    .line 629
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_b

    .line 632
    const v0, 0x7f120a76

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 634
    :cond_b
    const v0, 0x7f1200bc

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 636
    :goto_7
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v3, 0x7f1200bb

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->isAdminUninstallable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 638
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iput-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 643
    :goto_8
    return-void
.end method
