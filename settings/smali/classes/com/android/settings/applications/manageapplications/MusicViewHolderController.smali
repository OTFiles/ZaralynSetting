.class public Lcom/android/settings/applications/manageapplications/MusicViewHolderController;
.super Ljava/lang/Object;
.source "MusicViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/FileViewHolderController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMusicSize:J

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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 52
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    .line 54
    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    .line 83
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "vnd.android.document/root"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "android.intent.extra.USER_ID"

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public queryStats()V
    .locals 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    iput-wide v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J

    .line 64
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J

    .line 63
    const-string v1, "MusicViewHolderCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0
    :goto_0
    return-void
.end method

.method public setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 74
    const v0, 0x7f080175

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    const v1, 0x7f120174

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method
