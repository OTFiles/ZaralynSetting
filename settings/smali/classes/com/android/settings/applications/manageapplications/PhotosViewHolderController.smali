.class public Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;
.super Ljava/lang/Object;
.source "PhotosViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/FileViewHolderController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilesSize:J

.field private mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUser:Landroid/os/UserHandle;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/android/settingslib/applications/StorageStatsSource;
    .param p3, "volumeUuid"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 49
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mVolumeUuid:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mUser:Landroid/os/UserHandle;

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "android.intent.extra.FROM_STORAGE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public queryStats()V
    .locals 5

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mUser:Landroid/os/UserHandle;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    .line 59
    .local v0, "stats":Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    iget-wide v1, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    iget-wide v3, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J

    .line 63
    .end local v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J

    .line 62
    const-string v1, "PhotosViewHolderCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0
    :goto_0
    return-void
.end method

.method public setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 73
    const v0, 0x7f0801be

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    const v1, 0x7f120da1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method
