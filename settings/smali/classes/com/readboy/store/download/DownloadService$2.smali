.class Lcom/readboy/store/download/DownloadService$2;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/download/DownloadService;->handleActionReCheck(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/download/DownloadService;

.field final synthetic val$info:Lcom/readboy/store/AppUpdate/ApInfo;


# direct methods
.method constructor <init>(Lcom/readboy/store/download/DownloadService;Lcom/readboy/store/AppUpdate/ApInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/download/DownloadService;

    .line 246
    iput-object p1, p0, Lcom/readboy/store/download/DownloadService$2;->this$0:Lcom/readboy/store/download/DownloadService;

    iput-object p2, p0, Lcom/readboy/store/download/DownloadService$2;->val$info:Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileExist(Ljava/lang/Object;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$2;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v1, p0, Lcom/readboy/store/download/DownloadService$2;->val$info:Lcom/readboy/store/AppUpdate/ApInfo;

    move-object v2, p1

    check-cast v2, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/readboy/store/download/DownloadService;->access$000(Lcom/readboy/store/download/DownloadService;Lcom/readboy/store/AppUpdate/ApInfo;Lcom/readboy/store/AppUpdate/UpdateInfoBean;Z)V

    .line 252
    return-void
.end method

.method public needUpdate(Ljava/lang/Object;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/readboy/store/download/DownloadService$2;->this$0:Lcom/readboy/store/download/DownloadService;

    iget-object v1, p0, Lcom/readboy/store/download/DownloadService$2;->val$info:Lcom/readboy/store/AppUpdate/ApInfo;

    move-object v2, p1

    check-cast v2, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/readboy/store/download/DownloadService;->access$000(Lcom/readboy/store/download/DownloadService;Lcom/readboy/store/AppUpdate/ApInfo;Lcom/readboy/store/AppUpdate/UpdateInfoBean;Z)V

    .line 259
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 266
    const-string v0, "DownloadService"

    const-string v1, "recheck onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method
