.class Lcom/readboy/store/AppUpdate/UpdateHelper$2;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/UpdateHelper;->handleActionDownload(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/UpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/AppUpdate/UpdateHelper;

    .line 57
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 61
    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdatingDialog;->dismiss()V

    .line 68
    :cond_1
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 89
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/readboy/store/dialogs/UpdatingDialog;->setProgress(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdatingDialog;->show()V

    .line 75
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 79
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$100(Lcom/readboy/store/AppUpdate/UpdateHelper;)Lcom/readboy/store/dialogs/UpdatingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/dialogs/UpdatingDialog;->dismiss()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateHelper$2;->this$0:Lcom/readboy/store/AppUpdate/UpdateHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/UpdateHelper;->access$000(Lcom/readboy/store/AppUpdate/UpdateHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/readboy/store/AppUpdate/Utils;->install(Ljava/io/File;Landroid/content/Context;)V

    .line 85
    :cond_1
    return-void
.end method
