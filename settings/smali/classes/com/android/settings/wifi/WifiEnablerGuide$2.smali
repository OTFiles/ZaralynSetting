.class Lcom/android/settings/wifi/WifiEnablerGuide$2;
.super Landroid/os/Handler;
.source "WifiEnablerGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnablerGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnablerGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnablerGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiEnablerGuide;

    .line 102
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnablerGuide$2;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    .line 112
    return-void
.end method
