.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 104
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, "connected":Z
    const-string v3, "host_connected"

    .line 111
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 112
    .local v2, "hostConnected":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$000(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method
