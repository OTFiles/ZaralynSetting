.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningState;

    .line 255
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 267
    :pswitch_0    # 0x4
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_0

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_0
    monitor-exit v0

    .line 272
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningState$2;->removeMessages(I)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningState$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "m":Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/applications/RunningState$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v2, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {v1, v2}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    .end local v0
    goto :goto_1

    .line 271
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 262
    :pswitch_1    # 0x3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x2

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    .line 265
    nop

    .line 284
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method
