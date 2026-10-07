.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isHaveRightParentPassword:I

.field mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

.field private mCacheCleared:Z

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settings/applications/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mDataCleared:Z

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

.field private mStorageUsed:Landroid/support/v7/preference/Preference;

.field private mUri:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    .line 732
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;
    .param p1, "x1"    # Landroid/os/Message;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AppStorageSettings;

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearUriPermissions()V
    .locals 8

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 598
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 600
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 602
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 606
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.android.documentsui.scopedAccess"

    .line 607
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "permissions"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 608
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 609
    .local v3, "providerUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to delete permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 613
    .local v4, "deleted":I
    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entries for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 617
    return-void
.end method

.method private initDataButtons()V
    .locals 11

    .line 431
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 432
    .local v0, "appHasSpaceManagementUI":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .line 434
    .local v3, "appHasActiveAdmins":Z
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 436
    .local v4, "isNonClearableSystemApp":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v1

    .line 438
    .local v5, "appRestrictsClearingData":Z
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 440
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :cond_4
    nop

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_4

    :cond_5
    move v7, v2

    .line 445
    .local v7, "isManageSpaceActivityAvailable":Z
    :goto_4
    const v8, 0x7f1203a3

    if-nez v0, :cond_6

    if-nez v5, :cond_7

    :cond_6
    if-nez v7, :cond_8

    .line 447
    :cond_7
    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 448
    invoke-virtual {v9, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v8

    .line 449
    invoke-virtual {v8, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 450
    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_6

    .line 452
    :cond_8
    if-eqz v0, :cond_9

    .line 453
    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v10, 0x7f120867

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_5

    .line 455
    :cond_9
    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v9, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    .line 457
    :goto_5
    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 458
    invoke-virtual {v9, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v8

    new-instance v9, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;

    invoke-direct {v9, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 459
    invoke-virtual {v8, v9}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 462
    :goto_6
    iget-boolean v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v8, :cond_a

    .line 463
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v8, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 466
    :cond_a
    iget v8, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_b

    goto :goto_7

    :cond_b
    move v1, v2

    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->updateButtonEnable(Z)V

    .line 467
    return-void
.end method

.method private initMoveDialog()V
    .locals 8

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 471
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 473
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 474
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v2

    .line 475
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 476
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 478
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 479
    .local v3, "labels":[Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 480
    .local v4, "current":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 481
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v6}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "volDescrip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 483
    move v4, v5

    .line 485
    :cond_0
    aput-object v6, v3, v5

    .line 480
    .end local v6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 487
    .end local v5
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/storage/VolumeInfo;

    iput-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    .line 488
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12038a

    .line 489
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 490
    invoke-virtual {v5, v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120358

    const/4 v7, 0x0

    .line 491
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 492
    .end local v3
    .end local v4
    goto :goto_1

    .line 493
    :cond_2
    const-string v3, "storage_used"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    .line 494
    const-string v3, "change_storage_button"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    .line 495
    const-string v3, "storage_space"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    .line 497
    :goto_1
    return-void
.end method

.method private initiateClearUserData()V
    .locals 7

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 507
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 508
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v1, :cond_0

    .line 510
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 512
    :cond_0
    nop

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 514
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 515
    .local v3, "res":Z
    if-nez v3, :cond_1

    .line 517
    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v4, 0x7f120bb9

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    .line 522
    :goto_0
    return-void
.end method

.method private isMoveInProgress()Z
    .locals 3

    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 378
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V

    .line 380
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$initDataButtons$0(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public static synthetic lambda$updateUiWithSize$1(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public static synthetic lambda$updateUiWithSize$2(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearCacheClick()V

    return-void
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 529
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 530
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 531
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f1203a3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    .line 532
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 533
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 538
    :goto_0
    return-void
.end method

.method private refreshButtons()V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    .line 428
    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 15

    .line 542
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 547
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 550
    .local v1, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    return-void

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 558
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 559
    .local v3, "uriCounters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Landroid/util/MutableInt;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/GrantedUriPermission;

    .line 560
    .local v5, "perm":Landroid/app/GrantedUriPermission;
    iget-object v8, v5, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 561
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v2, v8, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 562
    .local v7, "provider":Landroid/content/pm/ProviderInfo;
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 563
    .local v9, "app":Ljava/lang/CharSequence;
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/MutableInt;

    .line 564
    .local v10, "count":Landroid/util/MutableInt;
    if-nez v10, :cond_1

    .line 565
    new-instance v11, Landroid/util/MutableInt;

    invoke-direct {v11, v6}, Landroid/util/MutableInt;-><init>(I)V

    invoke-interface {v3, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 567
    :cond_1
    iget v11, v10, Landroid/util/MutableInt;->value:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/util/MutableInt;->value:I

    .line 569
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :goto_1
    goto :goto_0

    .line 572
    :cond_2
    const/4 v4, 0x0

    .line 573
    .local v4, "order":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 574
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Landroid/util/MutableInt;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    iget v9, v9, Landroid/util/MutableInt;->value:I

    .line 575
    .local v9, "numberResources":I
    new-instance v10, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 576
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10003f

    new-array v13, v6, [Ljava/lang/Object;

    .line 579
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    .line 578
    invoke-virtual {v11, v12, v9, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 577
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v10, v7}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 581
    const v11, 0x7f0d00bd

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 582
    invoke-virtual {v10, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 583
    sget-object v11, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding preference \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "\' at order "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v11, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 585
    .end local v8
    .end local v9
    .end local v10
    goto :goto_2

    .line 587
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v5, :cond_4

    .line 588
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    :cond_4
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 592
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    return-void
.end method

.method private removeUriPermissionsFromUi()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 622
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 624
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    if-eq v2, v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 622
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 628
    .end local v1
    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 4

    .line 268
    new-instance v0, Lcom/android/settings/applications/AppStorageSizesController$Builder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;-><init>()V

    const-string v1, "total_size"

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setTotalSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "app_size"

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setAppSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "data_size"

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setDataSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "cache_size"

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setCacheSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    .line 273
    const v1, 0x7f1203c2

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    .line 274
    const v1, 0x7f120729

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->build()Lcom/android/settings/applications/AppStorageSizesController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    .line 276
    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 280
    const-string v0, "storage_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    .line 281
    const-string v0, "change_storage_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 282
    const v2, 0x7f0a00ad

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 283
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v3, 0x7f120389

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f12039c

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    .line 290
    const-string v0, "uri_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    const-string v3, "clear_uri_button"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    .line 293
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v2, 0x7f1203a2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->updateButtonEnable(Z)V

    .line 297
    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 685
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 688
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v3, "Could not find package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    .line 691
    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 695
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 632
    const v0, 0x7f120569

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 658
    return-object v1

    .line 646
    :pswitch_0    # 0x2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1203a3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12039f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 649
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 646
    return-object v0

    .line 634
    :pswitch_1    # 0x1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f12039e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f12039d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 637
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f12055d

    .line 643
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 634
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 763
    const/16 v0, 0x13

    return v0
.end method

.method handleClearCacheClick()V
    .locals 4

    .line 323
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    .line 327
    nop

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 327
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 329
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_2

    .line 331
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x36d

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 336
    return-void
.end method

.method handleClearDataClick()V
    .locals 3

    .line 340
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    .line 344
    nop

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 344
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 347
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    .end local v0
    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    .line 356
    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    iget v3, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, "sa":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 195
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    .line 196
    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 203
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee===error=001==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    goto :goto_2

    .line 187
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    .line 188
    iget v3, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    if-ne v3, v0, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->updateButtonEnable(Z)V

    .line 206
    :cond_5
    :goto_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 388
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 394
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v1, v1, p2

    .line 395
    .local v1, "targetVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 397
    .local v2, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 403
    .end local v3
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 404
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 360
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_2

    .line 367
    nop

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 367
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    .line 373
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 159
    const-string v1, "cache_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    .line 160
    const-string v1, "data_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    .line 161
    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x64

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "NowIsHaveParentPassword"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "NowIsHaveParentPassword"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iput v2, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    .line 170
    :cond_3
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 172
    iput v2, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    .line 175
    :cond_4
    const v0, 0x7f15001c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 179
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 668
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v2, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v2, v0}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    .line 669
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    .line 668
    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 1
    .param p2, "result"    # Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    .line 674
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;>;"
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStorageSizesController;->setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 675
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 676
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStorageSettings;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;>;"
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 663
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 240
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    .line 244
    :try_start_0
    iget v0, p0, Lcom/android/settings/applications/AppStorageSettings;->isHaveRightParentPassword:I

    if-nez v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, "sa":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 247
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 248
    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 256
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee===error=001==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 261
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string v0, "cache_cleared"

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string v0, "data_cleared"

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController;->getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 417
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 418
    .local v1, "storage":Landroid/os/storage/StorageManager;
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    .line 422
    const/4 v2, 0x1

    return v2
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 214
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/applications/AppStorageSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    return v1

    .line 218
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

    .line 219
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/applications/AppStorageSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    return v1

    .line 225
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 232
    .end local v0
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 231
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0
    nop

    .line 235
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateButtonEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 301
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 303
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 306
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_2

    .line 305
    :catch_0
    move-exception v2

    .line 308
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 309
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    goto :goto_4

    .line 311
    :catch_1
    move-exception v2

    .line 314
    :goto_4
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    .line 315
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    nop

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    goto :goto_5

    .line 317
    :catch_2
    move-exception v0

    .line 319
    :goto_5
    return-void
.end method

.method updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 10
    .param p1, "result"    # Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    .line 699
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setCacheCleared(Z)V

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setDataCleared(Z)V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppStorageSizesController;->updateUi(Landroid/content/Context;)V

    .line 708
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_3

    .line 711
    :cond_2
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v2

    .line 712
    .local v2, "cacheSize":J
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 714
    .local v4, "dataSize":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v8, :cond_3

    goto :goto_0

    .line 717
    :cond_3
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v1

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v8

    new-instance v9, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;

    invoke-direct {v9, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 718
    invoke-virtual {v8, v9}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_1

    .line 715
    :cond_4
    :goto_0
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 720
    :goto_1
    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-eqz v6, :cond_5

    goto :goto_2

    .line 723
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isReadboyNeedDisabled(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v1, v7

    invoke-virtual {v6, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    new-instance v6, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 724
    invoke-virtual {v1, v6}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .end local v2
    .end local v4
    goto :goto_3

    .line 721
    .restart local v2
    .restart local v4
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 727
    .end local v2
    .end local v4
    :goto_3
    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_7

    .line 728
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 730
    :cond_7
    return-void
.end method
