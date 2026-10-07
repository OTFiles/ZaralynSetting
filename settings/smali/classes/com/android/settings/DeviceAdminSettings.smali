.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;,
        Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    }
.end annotation


# instance fields
.field private final mAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceOwnerPkg:Ljava/lang/String;

.field private mProfileOwnerComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Lcom/android/settings/DeviceAdminSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceAdminSettings$1;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;

    .line 64
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->isRemovingAdmin(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private addActiveAdminsForProfile(Ljava/util/List;I)V
    .locals 9
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 405
    .local p1, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 407
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 408
    .local v1, "iPackageManager":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 409
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 410
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 413
    .local v4, "activeAdmin":Landroid/content/ComponentName;
    const v5, 0xc8080

    :try_start_0
    invoke-interface {v1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 421
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 420
    nop

    .line 422
    invoke-direct {p0, v5}, Lcom/android/settings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .line 423
    .local v6, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    .line 424
    goto :goto_1

    .line 428
    :cond_0
    new-instance v7, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;-><init>(Lcom/android/settings/DeviceAdminSettings$1;)V

    .line 429
    .local v7, "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    iput-object v6, v7, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 430
    invoke-virtual {v6, v0}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    .line 431
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    .line 432
    iget-object v8, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto :goto_1

    .line 418
    .restart local v4
    :catch_0
    move-exception v5

    .line 419
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "DeviceAdminSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    nop

    .line 409
    .end local v4
    .end local v5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    return-void
.end method

.method private addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V
    .locals 10
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 364
    .local p1, "alreadyAddedComponents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 365
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, "enabledForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 372
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 373
    .local v2, "n":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 374
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v6, "riComponentName":Landroid/content/ComponentName;
    if-eqz p1, :cond_1

    .line 379
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 380
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v7}, Lcom/android/settings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v7

    .line 382
    .local v7, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 383
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v8

    if-nez v8, :cond_2

    .line 384
    goto :goto_1

    .line 386
    :cond_2
    new-instance v8, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;-><init>(Lcom/android/settings/DeviceAdminSettings$1;)V

    .line 387
    .local v8, "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    iput-object v7, v8, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 388
    invoke-virtual {v7, v0}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    .line 390
    iput-boolean v3, v8, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    .line 391
    iget-object v9, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .end local v4
    :cond_4
    return-void
.end method

.method private createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 446
    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 459
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .line 327
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method private isRemovingAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .line 331
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method private updateAvailableAdminsForProfile(I)V
    .locals 1
    .param p1, "profileId"    # I

    .line 345
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "activeAdminsListForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/settings/DeviceAdminSettings;->addActiveAdminsForProfile(Ljava/util/List;I)V

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/android/settings/DeviceAdminSettings;->addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V

    .line 350
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 112
    const/16 v0, 0x204

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 132
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminSettings;->setHasOptionsMenu(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120862

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 117
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getMetricsCategory()I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    .line 127
    const v0, 0x7f0d0094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 189
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 191
    .local v1, "dpi":Landroid/app/admin/DeviceAdminInfo;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 192
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 193
    .local v3, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    .line 166
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 140
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 142
    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 144
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 149
    .local v0, "deviceOwnerComponent":Landroid/content/ComponentName;
    nop

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 152
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 154
    .local v2, "profilesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 156
    .local v4, "profileId":I
    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v3
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 159
    return-void
.end method

.method updateList()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    .local v1, "profilesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 180
    .local v3, "profileId":I
    invoke-direct {p0, v3}, Lcom/android/settings/DeviceAdminSettings;->updateAvailableAdminsForProfile(I)V

    .line 178
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    return-void
.end method
