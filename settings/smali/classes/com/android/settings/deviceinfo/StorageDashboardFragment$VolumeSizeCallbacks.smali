.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolumeSizeCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 365
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 371
    .local v1, "sm":Landroid/os/storage/StorageManager;
    new-instance v2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v2, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 372
    .local v2, "smvp":Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/StorageStatsManager;

    .line 373
    .local v3, "stats":Landroid/app/usage/StorageStatsManager;
    new-instance v4, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$100(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;

    move-result-object v5

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V

    return-object v4
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 1
    .param p2, "privateStorageInfo"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ")V"
        }
    .end annotation

    .line 383
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;>;"
    if-nez p2, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 385
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v0, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$202(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 389
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$300(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    .line 391
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 365
    check-cast p2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;>;"
    return-void
.end method
