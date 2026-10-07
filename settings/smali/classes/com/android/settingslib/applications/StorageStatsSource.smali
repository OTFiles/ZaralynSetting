.class public Lcom/android/settingslib/applications/StorageStatsSource;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;,
        Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;,
        Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    }
.end annotation


# instance fields
.field private mStorageStatsManager:Landroid/app/usage/StorageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 36
    return-void
.end method


# virtual methods
.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-object v1, p0, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 41
    invoke-virtual {v1, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(Landroid/app/usage/ExternalStorageStats;)V

    .line 40
    return-object v0
.end method

.method public getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v1, p0, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 54
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;-><init>(Landroid/app/usage/StorageStats;)V

    .line 53
    return-object v0
.end method
