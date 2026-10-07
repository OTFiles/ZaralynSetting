.class final Lcom/android/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningState;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 226
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_0

    .line 239
    monitor-exit v0

    return-void

    .line 241
    :cond_0
    monitor-exit v0

    .line 242
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "cmd":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/RunningState;->access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 244
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 247
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 234
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->access$000(Lcom/android/settings/applications/RunningState;)V

    .line 235
    nop

    .line 250
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
