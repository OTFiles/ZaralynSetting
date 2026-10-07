.class public abstract Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.super Landroid/os/AsyncTask;
.source "MigrateEstimateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 52
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    const-string v0, "size_bytes"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 57
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 65
    iget-wide v2, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 66
    iget-wide v2, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    .line 70
    .local v2, "user":Landroid/os/UserManager;
    iget-object v0, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 71
    .local v3, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 73
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    iget-object v0, v1, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 74
    .local v7, "privateVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, v7}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v8

    .line 76
    .local v8, "emulatedVol":Landroid/os/storage/VolumeInfo;
    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 77
    const-string v0, "StorageSettings"

    const-string v10, "Failed to find current primary storage"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v10, v9}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    .line 83
    .local v0, "emulatedUuid":Ljava/util/UUID;
    const-string v10, "StorageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Measuring size of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-wide/16 v10, 0x0

    .line 86
    .local v10, "size":J
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 87
    .local v13, "u":Landroid/content/pm/UserInfo;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 88
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 87
    invoke-virtual {v6, v0, v14}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v14

    .line 89
    .local v14, "s":Landroid/app/usage/ExternalStorageStats;
    invoke-virtual {v14}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v15

    add-long/2addr v10, v15

    .line 90
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    if-nez v15, :cond_2

    .line 91
    invoke-virtual {v14}, Landroid/app/usage/ExternalStorageStats;->getObbBytes()J

    move-result-wide v15

    add-long/2addr v10, v15

    .line 93
    .end local v13
    .end local v14
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    .line 95
    .end local v0
    .end local v10
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "StorageSettings"

    const-string v11, "Failed to measure"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v9

    invoke-static {v10, v11, v12}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Long;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 104
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xa00000

    div-long/2addr v0, v4

    .line 105
    .local v0, "timeMillis":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 107
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "size":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "time":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
.end method
