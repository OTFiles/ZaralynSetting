.class Lcom/readboy/store/AppUpdate/CheckHelper$3$2;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/store/AppUpdate/CheckHelper$3;->needUpdate(Ljava/lang/Object;)V
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

    .line 249
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iput-object p2, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->val$bean:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$000(Lcom/readboy/store/AppUpdate/CheckHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->val$bean:Ljava/lang/Object;

    check-cast v1, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-static {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$402(Lcom/readboy/store/AppUpdate/CheckHelper;Lcom/readboy/store/AppUpdate/UpdateInfoBean;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    .line 257
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$500(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/ApInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/ApInfo;->setMd5(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v1, v1, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsForce()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v4, v4, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-static {v4}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$400(Lcom/readboy/store/AppUpdate/CheckHelper;)Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getIsAppForce()I

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v0, v2, v1, v3}, Lcom/readboy/store/AppUpdate/CheckHelper;->access$600(Lcom/readboy/store/AppUpdate/CheckHelper;ZZZ)V

    goto :goto_2

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;->this$1:Lcom/readboy/store/AppUpdate/CheckHelper$3;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->checkError(I)V

    .line 265
    :goto_2
    return-void
.end method
