.class public Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;
.super Landroid/os/Handler;
.source "GifPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gifmanager/GifPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gifmanager/GifPlayerView;


# direct methods
.method public constructor <init>(Lcom/android/settings/gifmanager/GifPlayerView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/gifmanager/GifPlayerView;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 209
    iput-object p1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 216
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271b

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 218
    :cond_0
    const-class v0, Lcom/android/settings/gifmanager/GifOpenHelper;

    monitor-enter v0

    .line 219
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v2}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v2}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v3}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/settings/gifmanager/GifPlayerView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    .line 222
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->frameHelper:Lcom/android/settings/gifmanager/GifOpenHelper;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v2}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->frameCount:I

    if-ge v1, v2, :cond_1

    .line 224
    iget-object v3, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    const/16 v4, 0x271b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->frameHelper:Lcom/android/settings/gifmanager/GifOpenHelper;

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v2}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/gifmanager/GifOpenHelper;->getDelay(I)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/gifmanager/GifPlayerView;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$100(Lcom/android/settings/gifmanager/GifPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    .line 227
    iget-object v3, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    const/16 v4, 0x271b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v1}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->frameHelper:Lcom/android/settings/gifmanager/GifOpenHelper;

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->this$0:Lcom/android/settings/gifmanager/GifPlayerView;

    invoke-static {v2}, Lcom/android/settings/gifmanager/GifPlayerView;->access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/gifmanager/GifOpenHelper;->getDelay(I)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/gifmanager/GifPlayerView;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    .line 231
    :cond_2
    :goto_0
    monitor-exit v0

    .line 232
    nop

    .line 239
    :goto_1
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 236
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GifPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===GifMsgHandler error==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v0
    :goto_2
    return-void
.end method
