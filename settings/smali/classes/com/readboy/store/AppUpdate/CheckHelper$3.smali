.class Lcom/readboy/store/AppUpdate/CheckHelper$3;
.super Ljava/lang/Object;
.source "CheckHelper.java"

# interfaces
.implements Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/AppUpdate/CheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/AppUpdate/CheckHelper;


# direct methods
.method constructor <init>(Lcom/readboy/store/AppUpdate/CheckHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/AppUpdate/CheckHelper;

    .line 215
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileExist(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;

    invoke-direct {v1, p0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper$3$1;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper$3;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public needUpdate(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;

    invoke-direct {v1, p0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper$3$2;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper$3;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 271
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/CheckHelper$3;->this$0:Lcom/readboy/store/AppUpdate/CheckHelper;

    iget-object v0, v0, Lcom/readboy/store/AppUpdate/CheckHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;

    invoke-direct {v1, p0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper$3$3;-><init>(Lcom/readboy/store/AppUpdate/CheckHelper$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method
