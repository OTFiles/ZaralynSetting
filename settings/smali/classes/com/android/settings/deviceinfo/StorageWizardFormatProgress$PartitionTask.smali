.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 88
    .local v0, "activity":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    .line 90
    .local v1, "storage":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 94
    const/16 v4, 0x19

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 95
    .local v2, "privateVol":Landroid/os/storage/VolumeInfo;
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 96
    .local v4, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v5, v6}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 108
    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    const-string v6, "run"

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 113
    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "primary_physical"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    const-string v5, "StorageSettings"

    const-string v6, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    invoke-direct {v6, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V

    invoke-virtual {v1, v5, v6}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 121
    .end local v2
    .end local v4
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 124
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 143
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 144
    .local v0, "activity":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const-string v1, "StorageSettings"

    const-string v2, "Failed to partition"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 152
    return-void

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New volume took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms to run benchmark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    const-string v1, "sys.debug.storage_slow"

    const/4 v2, 0x0

    .line 189
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    goto :goto_1

    .line 190
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinishedSlow()V

    goto :goto_1

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    .line 197
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 132
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 133
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 134
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 137
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 139
    return-void
.end method
