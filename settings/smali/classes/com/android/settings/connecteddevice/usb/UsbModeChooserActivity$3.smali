.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 133
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 136
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->finish()V

    .line 137
    return-void
.end method
