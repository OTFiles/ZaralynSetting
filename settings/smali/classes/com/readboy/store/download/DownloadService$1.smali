.class Lcom/readboy/store/download/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/download/DownloadService;->handleActionDownload(Landroid/os/Parcelable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/download/DownloadService;

.field final synthetic val$userData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/readboy/store/download/DownloadService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/download/DownloadService;

    .line 164
    iput-object p1, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iput-object p2, p0, Lcom/readboy/store/download/DownloadService$1;->val$userData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v1, p0, Lcom/readboy/store/download/DownloadService$1;->val$userData:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/readboy/store/download/DownloadService;->downloadFail(Ljava/lang/String;I)V

    .line 174
    const-string v0, "DownloadService"

    const-string v1, "download onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 205
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 207
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v2, v2, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 179
    const-string v0, "DownloadService"

    const-string v1, "download onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v2, v2, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v1, p0, Lcom/readboy/store/download/DownloadService$1;->val$userData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/readboy/store/download/DownloadService;->downloadStart(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 189
    const-string v0, "DownloadService"

    const-string v1, "download onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    invoke-static {p1, v1}, Lcom/readboy/store/AppUpdate/Utils;->install(Ljava/io/File;Landroid/content/Context;)V

    .line 197
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    invoke-virtual {v0, p1}, Lcom/readboy/store/download/DownloadService;->downloadSuccess(Ljava/io/File;)V

    .line 198
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$1;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v0, v0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 201
    :cond_1
    return-void
.end method
