.class public Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDescription:Ljava/lang/String;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;

    .line 362
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    .line 364
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 365
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V

    .line 373
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .line 381
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const v4, 0x7f120dc7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    :cond_0
    const-string v2, "StorageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const v4, 0x7f120dc6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
