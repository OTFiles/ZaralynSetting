.class Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applications/AppStateBaseBridge;
    .param p2, "x1"    # Lcom/android/settings/applications/AppStateBaseBridge$1;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {v0}, Lcom/android/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    .line 121
    :goto_0
    return-void
.end method
