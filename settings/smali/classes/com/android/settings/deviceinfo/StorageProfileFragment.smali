.class public Lcom/android/settings/deviceinfo/StorageProfileFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageProfileFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 103
    .local v1, "sm":Landroid/os/storage/StorageManager;
    new-instance v8, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v6, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v6, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 110
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "StorageProfileFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 86
    const/16 v0, 0x34d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 96
    const v0, 0x7f1500a6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 66
    .local v1, "context":Landroid/content/Context;
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 67
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2, v0}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 68
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 74
    const-string v3, "userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    .line 75
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v4, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUserId(Landroid/os/UserHandle;)V

    .line 76
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

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 117
    .local v6, "context":Landroid/content/Context;
    new-instance v7, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class v0, Landroid/os/UserManager;

    .line 118
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v6}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 117
    return-object v7
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 2
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

    .line 127
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    .local p2, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 128
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

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

    .line 132
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 82
    return-void
.end method

.method setPreferenceController(Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 136
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 137
    return-void
.end method
