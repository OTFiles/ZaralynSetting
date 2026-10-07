.class Lcom/readboy/store/AppUpdate/CheckHelper$3$1;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/CheckHelper$3;->fileExist(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

.field final synthetic val$bean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/CheckHelper$3;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/readboy/store/AppUpdate/CheckHelper$3;

    .line 221
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iput-object p2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->val$bean:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$000(Lcom/readboy/store/AppUpdate/CheckHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->val$bean:Ljava/lang/Object;

    check-cast v1, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-static {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$402(Lcom/readboy/store/AppUpdate/CheckHelper;Lcom/readboy/store/AppUpdate/UpdateInfoBean;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 228
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setMd5(Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/readboy/store/AppUpdate/ApInfo;->setFileName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v2, v2, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v2}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsForce()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v5, v5, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v5}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsAppForce()I

    move-result v5

    if-ne v5, v4, :cond_4

    move v3, v4

    nop

    :cond_4
    invoke-static {v1, v4, v2, v3}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$600(Lcom/readboy/store/AppUpdate/CheckHelper;ZZZ)V

    .line 239
    return-void
.end method
