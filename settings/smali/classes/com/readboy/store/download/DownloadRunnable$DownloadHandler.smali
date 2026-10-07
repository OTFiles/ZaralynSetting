.class Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;
.super Lcom/readboy/store/AppUpdate/RefreshHandler;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/download/DownloadRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/download/DownloadRunnable;


# direct methods
.method public constructor <init>(Lcom/readboy/store/download/DownloadRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/download/DownloadRunnable;

    .line 282
    iput-object p1, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    .line 283
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/RefreshHandler;-><init>()V

    .line 284
    return-void
.end method

.method public constructor <init>(Lcom/readboy/store/download/DownloadRunnable;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/download/DownloadRunnable;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 286
    iput-object p1, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    .line 287
    invoke-direct {p0, p2}, Lcom/readboy/store/AppUpdate/RefreshHandler;-><init>(Landroid/os/Looper;)V

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    invoke-super {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->handleMessage(Landroid/os/Message;)V

    .line 293
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xfff4

    if-eq v0, v1, :cond_2

    const v1, 0xfff8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 325
    :pswitch_0    # 0x257
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->cancel()V

    .line 326
    goto/16 :goto_0

    .line 309
    :pswitch_1    # 0x256
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;->access$002(Lcom/readboy/store/download/DownloadRunnable;I)I

    .line 310
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v1}, Lcom/readboy/store/download/DownloadRunnable;->access$000(Lcom/readboy/store/download/DownloadRunnable;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;->onProgress(I)V

    goto :goto_0

    .line 303
    :pswitch_2    # 0x255
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;->onSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 297
    :pswitch_3    # 0x254
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/readboy/store/download/DownloadRunnable;->access$002(Lcom/readboy/store/download/DownloadRunnable;I)I

    .line 298
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    invoke-interface {v0}, Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;->onStart()V

    goto :goto_0

    .line 332
    :cond_0
    :pswitch_4    # 0x258
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u4e0b\u8f09\u66f4\u65b0\u5931\u6557\uff0c\u673a\u5668\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3"

    invoke-interface {v0, v1, v2}, Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;->onError(ILjava/lang/String;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->cancel()V

    goto :goto_0

    .line 318
    :cond_2
    :pswitch_5    # 0xfff1 0xfff2 0xfff0
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-static {v0}, Lcom/readboy/store/download/DownloadRunnable;->access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u5931\u8d25\uff0c\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;->onError(ILjava/lang/String;)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->this$0:Lcom/readboy/store/download/DownloadRunnable;

    invoke-virtual {v0}, Lcom/readboy/store/download/DownloadRunnable;->cancel()V

    .line 322
    nop

    .line 339
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x254
        :pswitch_3    # 0x254
        :pswitch_2    # 0x255
        :pswitch_1    # 0x256
        :pswitch_0    # 0x257
        :pswitch_4    # 0x258
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfff0
        :pswitch_5    # 0xfff0
        :pswitch_5    # 0xfff1
        :pswitch_5    # 0xfff2
    .end packed-switch
.end method
