.class public Lcom/readboy/store/download/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# static fields
.field private static final ACTION_APP_INFO:Ljava/lang/String; = "com.readboy.lee.download.action.APPINFO"

.field private static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.readboy.lee.download.action.DOWNLOAD"

.field private static final EXTRA_APP_INFO:Ljava/lang/String; = "com.readboy.lee.download.extra.PARAM2"

.field private static final EXTRA_DOWNLOAD:Ljava/lang/String; = "com.readboy.lee.download.extra.PARAM1"

.field public static final EXTRA_TAG:Ljava/lang/String; = "com.readboy.lee.download.extra.PARAM3"

.field private static final TAG:Ljava/lang/String; = "DownloadService"


# instance fields
.field builder:Landroidx/core/app/NotificationCompat$Builder;

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mRepeatRedelivery:Z

.field private runningIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    const-string v0, "DownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/download/DownloadService;->mRepeatRedelivery:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/readboy/store/download/DownloadService;Lcom/readboy/store/AppUpdate/ApInfo;Lcom/readboy/store/AppUpdate/UpdateInfoBean;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/readboy/store/download/DownloadService;
    .param p1, "x1"    # Lcom/readboy/store/AppUpdate/ApInfo;
    .param p2, "x2"    # Lcom/readboy/store/AppUpdate/UpdateInfoBean;
    .param p3, "x3"    # Z

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/download/DownloadService;->addUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;Lcom/readboy/store/AppUpdate/UpdateInfoBean;Z)V

    return-void
.end method

.method private addUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;Lcom/readboy/store/AppUpdate/UpdateInfoBean;Z)V
    .locals 2
    .param p1, "info"    # Lcom/readboy/store/AppUpdate/ApInfo;
    .param p2, "bean"    # Lcom/readboy/store/AppUpdate/UpdateInfoBean;
    .param p3, "fileExist"    # Z

    .line 279
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setMd5(Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setFileName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 288
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/readboy/store/download/DownloadService;->startUpdate(Lcom/readboy/store/AppUpdate/ApInfo;Z)V

    .line 289
    return-void
.end method

.method private handleActionReCheck(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "apInfo"    # Landroid/os/Parcelable;

    .line 243
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/readboy/store/AppUpdate/ApInfo;

    if-eqz v0, :cond_0

    .line 244
    move-object v0, p1

    check-cast v0, Lcom/readboy/store/AppUpdate/ApInfo;

    .line 245
    .local v0, "info":Lcom/readboy/store/AppUpdate/ApInfo;
    new-instance v1, Lcom/readboy/store/AppUpdate/ReCheckUpdate;

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v1, "runnable":Lcom/readboy/store/AppUpdate/BaseCheck;
    new-instance v2, Lcom/readboy/store/download/DownloadService$2;

    invoke-direct {v2, p0, v0}, Lcom/readboy/store/download/DownloadService$2;-><init>(Lcom/readboy/store/download/DownloadService;Lcom/readboy/store/AppUpdate/ApInfo;)V

    invoke-virtual {v1, v2}, Lcom/readboy/store/AppUpdate/BaseCheck;->setOnCheckListener(Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;)V

    .line 269
    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/BaseCheck;->run()V

    .line 271
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public static startActionDownload(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parcelable"    # Landroid/os/Parcelable;
    .param p2, "tag"    # Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/readboy/store/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.readboy.lee.download.action.DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "com.readboy.lee.download.extra.PARAM1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    const-string v1, "com.readboy.lee.download.extra.PARAM3"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method public static startActionReCheck(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apInfo"    # Landroid/os/Parcelable;
    .param p2, "tag"    # Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/readboy/store/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.readboy.lee.download.action.APPINFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "com.readboy.lee.download.extra.PARAM2"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string v1, "com.readboy.lee.download.extra.PARAM3"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method private startUpdate(Lcom/readboy/store/AppUpdate/ApInfo;Z)V
    .locals 8
    .param p1, "info"    # Lcom/readboy/store/AppUpdate/ApInfo;
    .param p2, "fileExist"    # Z

    .line 292
    if-eqz p2, :cond_0

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {v0, p0}, Lcom/readboy/store/AppUpdate/Utils;->install(Ljava/io/File;Landroid/content/Context;)V

    .line 296
    return-void

    .line 300
    .end local v0
    :cond_0
    new-instance v0, Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->isDeleteLast()Z

    move-result v6

    invoke-virtual {p1}, Lcom/readboy/store/AppUpdate/ApInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/readboy/store/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/readboy/store/download/DownloadService;->handleActionDownload(Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method


# virtual methods
.method public downloadFail(Ljava/lang/String;I)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 236
    return-void
.end method

.method public downloadStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .line 224
    return-void
.end method

.method public downloadSuccess(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 228
    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 232
    return-void
.end method

.method protected handleActionDownload(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "bean"    # Landroid/os/Parcelable;

    .line 158
    const-string v0, "default"

    invoke-virtual {p0, p1, v0}, Lcom/readboy/store/download/DownloadService;->handleActionDownload(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected handleActionDownload(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 3
    .param p1, "bean"    # Landroid/os/Parcelable;
    .param p2, "userData"    # Ljava/lang/String;

    .line 162
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/readboy/store/download/DownloadBean;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/readboy/store/download/DownloadRunnable;

    move-object v1, p1

    check-cast v1, Lcom/readboy/store/download/DownloadBean;

    invoke-direct {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;-><init>(Lcom/readboy/store/download/DownloadBean;)V

    .line 164
    .local v0, "runnable":Lcom/readboy/store/download/DownloadRunnable;
    new-instance v1, Lcom/readboy/store/download/DownloadService$1;

    invoke-direct {v1, p0, p2}, Lcom/readboy/store/download/DownloadService$1;-><init>(Lcom/readboy/store/download/DownloadService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;->setOnDownloadStateChanged(Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;)V

    .line 212
    invoke-virtual {p0}, Lcom/readboy/store/download/DownloadService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->run()V

    .line 220
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleActionDownloadWithNotify(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "bean"    # Landroid/os/Parcelable;

    .line 144
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080081

    .line 146
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/readboy/store/download/DownloadBean;

    .line 147
    invoke-virtual {v1}, Lcom/readboy/store/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {v2}, Lcom/readboy/store/download/DownloadBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x64

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/readboy/store/download/DownloadService;->handleActionDownload(Landroid/os/Parcelable;)V

    .line 152
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 87
    const-string v0, "notification"

    .line 88
    invoke-virtual {p0, v0}, Lcom/readboy/store/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/readboy/store/download/DownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    .line 122
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 131
    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.readboy.lee.download.action.DOWNLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "com.readboy.lee.download.extra.PARAM1"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 135
    .local v1, "param1":Landroid/os/Parcelable;
    const-string v2, "com.readboy.lee.download.extra.PARAM3"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/readboy/store/download/DownloadService;->handleActionDownload(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 136
    .end local v1
    goto :goto_0

    :cond_0
    const-string v1, "com.readboy.lee.download.action.APPINFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string v1, "com.readboy.lee.download.extra.PARAM2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 138
    .restart local v1
    invoke-direct {p0, v1}, Lcom/readboy/store/download/DownloadService;->handleActionReCheck(Landroid/os/Parcelable;)V

    .line 141
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 94
    iget-boolean v0, p0, Lcom/readboy/store/download/DownloadService;->mRepeatRedelivery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    .line 95
    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    .line 97
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    const-string v1, "com.readboy.lee.download.extra.PARAM3"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.readboy.lee.download.extra.PARAM3"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    const-string v1, "com.readboy.lee.download.extra.PARAM3"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.readboy.lee.download.extra.PARAM3"

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/readboy/store/download/DownloadService;->runningIntent:Landroid/content/Intent;

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public setRepeatIntentRedelivery(Z)Lcom/readboy/store/download/DownloadService;
    .locals 0
    .param p1, "enabled"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/readboy/store/download/DownloadService;->mRepeatRedelivery:Z

    .line 126
    return-object p0
.end method
