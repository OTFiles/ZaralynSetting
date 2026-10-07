.class public Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "FetchPackageStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/android/settingslib/applications/StorageStatsSource;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object v0, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 46
    iput-object p3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    iput-object p4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    .line 48
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 5

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "result":Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v2, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FetchPackageStorage"

    const-string v3, "Package may have been removed during query, failing gracefully"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->loadInBackground()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 0
    .param p1, "result"    # Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    .line 63
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->onDiscardResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method
