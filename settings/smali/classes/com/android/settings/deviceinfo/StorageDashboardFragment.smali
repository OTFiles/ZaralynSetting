.class public Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppsResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

.field private mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mSecondaryUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;
    .param p1, "x1"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 60
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeCacheFreshValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method private initializeCacheProvider()V
    .locals 3

    .line 317
    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeCachedValues()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    .line 321
    return-void
.end method

.method private isQuotaSupported()Z
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 332
    .local v0, "stats":Landroid/app/usage/StorageStatsManager;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v1, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private maybeCacheFreshValues()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V

    .line 328
    :cond_0
    return-void
.end method

.method private onReceivedSizes()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v0, v2

    .line 133
    .local v0, "privateUsedBytes":J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v3, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateBytes(JJ)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v3, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 138
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 139
    .local v4, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v5, v4, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    if-eqz v5, :cond_0

    .line 140
    move-object v5, v4

    check-cast v5, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    .line 141
    .local v5, "userController":Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v6, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setTotalSize(J)V

    .line 137
    .end local v4
    .end local v5
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0
    .end local v2
    .end local v3
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 147
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    .line 157
    :cond_3
    return-void
.end method

.method private updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    .local p2, "stats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 209
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    if-eqz v3, :cond_0

    .line 210
    move-object v3, v2

    check-cast v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    .line 212
    .local v3, "userController":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
    invoke-interface {v3, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;->handleResult(Landroid/util/SparseArray;)V

    .line 207
    .end local v2
    .end local v3
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    .line 178
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 181
    .local v1, "sm":Landroid/os/storage/StorageManager;
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v4, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v4, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 183
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 186
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-static {p1, v2}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    .line 187
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    new-instance v3, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/FragmentManager;)V

    .line 192
    .local v3, "asmController":Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 193
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-object v0
.end method

.method public getAppsStorageResult()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 127
    const v0, 0x7f1206d8

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 166
    const-string v0, "StorageDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 161
    const/16 v0, 0x2e9

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 171
    const v0, 0x7f1500a5

    return v0
.end method

.method public getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object v0
.end method

.method public initializeCachedValues()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 296
    .local v0, "info":Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 297
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->getCachedAppsStorageResult()Landroid/util/SparseArray;

    move-result-object v1

    .line 298
    .local v1, "loaderResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 303
    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 304
    return-void

    .line 299
    :cond_1
    :goto_0
    return-void
.end method

.method initializeOptionsMenu(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 95
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setHasOptionsMenu(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 100
    return-void
.end method

.method public maybeSetLoading(Z)V
    .locals 2
    .param p1, "isQuotaSupported"    # Z

    .line 310
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-nez v0, :cond_2

    .line 312
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    .line 314
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, "activity":Landroid/app/Activity;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 84
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 85
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 250
    .local v6, "context":Landroid/content/Context;
    new-instance v7, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v6}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 253
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 250
    return-object v7
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    .local p2, "data":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 260
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeCacheFreshValues()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    .line 262
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;)V"
        }
    .end annotation

    .line 266
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    .line 121
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 123
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeCacheProvider()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->isQuotaSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeSetLoading(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 114
    return-void
.end method

.method public setAppsStorageResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p1, "info":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 291
    return-void
.end method

.method public setCachedStorageValuesHelper(Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 270
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 271
    return-void
.end method

.method public setPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 280
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 281
    return-void
.end method

.method protected setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/os/storage/VolumeInfo;

    .line 199
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 200
    return-void
.end method
