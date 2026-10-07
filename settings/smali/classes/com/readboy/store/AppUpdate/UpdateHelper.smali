.class public Lcom/readboy/store/AppUpdate/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateHelper"


# instance fields
.field private context:Landroid/app/Activity;

.field private downloadInfo:Lcom/readboy/store/download/DownloadBean;

.field private enforceUpdate:Z

.field private runnable:Lcom/readboy/store/download/DownloadRunnable;

.field private updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/readboy/store/AppUpdate/ApInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "info"    # Lcom/readboy/store/AppUpdate/ApInfo;
    .param p3, "updateTitle"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "enforceUpdate"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    .line 34
    iput-boolean p5, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->enforceUpdate:Z

    .line 35
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog;

    sget v1, Lcom/readboy/store/AppUpdate/R$style;->rb_app_update_MyDialog:I

    invoke-direct {v0, p1, v1}, Lcom/readboy/store/dialogs/UpdatingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    .line 36
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_upgrade:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->setAppName(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-virtual {v0, p4}, Lcom/readboy/store/dialogs/UpdatingDialog;->setVersionName(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->setCancelable(Z)V

    .line 39
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    new-instance v1, Lcom/readboy/store/AppUpdate/UpdateHelper$1;

    invoke-direct {v1, p0}, Lcom/readboy/store/AppUpdate/UpdateHelper$1;-><init>(Lcom/readboy/store/AppUpdate/UpdateHelper;)V

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->setOnDismissListener(Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;)V

    .line 45
    new-instance v0, Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/ApInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/ApInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/ApInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/readboy/store/AppUpdate/ApInfo;->isDeleteLast()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/readboy/store/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->downloadInfo:Lcom/readboy/store/download/DownloadBean;

    .line 46
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->handleActionDownload()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/UpdateHelper;

    .line 19
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/AppUpdate/UpdateHelper;

    .line 19
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    return-object v0
.end method

.method private handleActionDownload()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->downloadInfo:Lcom/readboy/store/download/DownloadBean;

    invoke-direct {p0, v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->handleActionDownload(Landroid/os/Parcelable;)V

    .line 51
    return-void
.end method

.method private handleActionDownload(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "bean"    # Landroid/os/Parcelable;

    .line 54
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/readboy/store/download/DownloadBean;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/readboy/store/download/DownloadRunnable;

    move-object v1, p1

    check-cast v1, Lcom/readboy/store/download/DownloadBean;

    invoke-direct {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;-><init>(Lcom/readboy/store/download/DownloadBean;)V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    .line 57
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    new-instance v1, Lcom/readboy/store/AppUpdate/UpdateHelper$2;

    invoke-direct {v1, p0}, Lcom/readboy/store/AppUpdate/UpdateHelper$2;-><init>(Lcom/readboy/store/AppUpdate/UpdateHelper;)V

    invoke-virtual {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;->setOnDownloadStateChanged(Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->run()V

    .line 101
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public release(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 109
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->cancel()V

    .line 111
    iput-object v1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->runnable:Lcom/readboy/store/download/DownloadRunnable;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdatingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->updatingDialog:Lcom/readboy/store/dialogs/UpdatingDialog;

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdatingDialog;->dismiss()V

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->enforceUpdate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_2
    iput-object v1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    .line 121
    return-void
.end method

.method public restartDownload(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .line 104
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper;->context:Landroid/app/Activity;

    .line 105
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->handleActionDownload()V

    .line 106
    return-void
.end method
