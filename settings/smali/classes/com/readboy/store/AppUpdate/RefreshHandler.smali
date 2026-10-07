.class public Lcom/readboy/store/AppUpdate/RefreshHandler;
.super Landroid/os/Handler;
.source "RefreshHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 17
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    return-void
.end method


# virtual methods
.method public sendMsgAndObj(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 22
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/RefreshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    return-void
.end method

.method public sendSyncMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .line 34
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->removeMessages(I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 36
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/RefreshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    return-void
.end method

.method public sendSyncMessageAndArg(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 27
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->removeMessages(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 29
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 30
    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/RefreshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void
.end method

.method public sendSyncMessageAndObj(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->removeMessages(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 42
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/RefreshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    return-void
.end method
