.class Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$1;
.super Landroid/os/Handler;
.source "BluetoothEnablerSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnablerSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_bluetooth_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 70
    :goto_0
    return-void
.end method
