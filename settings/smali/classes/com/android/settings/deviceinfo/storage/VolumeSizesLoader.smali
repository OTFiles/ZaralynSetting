.class public Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "VolumeSizesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mStats:Landroid/app/usage/StorageStatsManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeProvider"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
    .param p3, "stats"    # Landroid/app/usage/StorageStatsManager;
    .param p4, "volume"    # Landroid/os/storage/VolumeInfo;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 42
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 43
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 44
    return-void
.end method

.method static getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 5
    .param p0, "storageVolumeProvider"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
    .param p1, "stats"    # Landroid/app/usage/StorageStatsManager;
    .param p2, "info"    # Landroid/os/storage/VolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v0

    .line 65
    .local v0, "privateTotalBytes":J
    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v2

    .line 66
    .local v2, "privateFreeBytes":J
    new-instance v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 56
    .local v0, "volumeSizes":Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 55
    nop

    .line 57
    return-object v0

    .line 54
    .end local v0
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->loadInBackground()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0
    .param p1, "result"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 47
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->onDiscardResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method
