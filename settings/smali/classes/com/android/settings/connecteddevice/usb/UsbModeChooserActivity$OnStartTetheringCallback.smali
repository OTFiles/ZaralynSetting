.class final Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 272
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 3

    .line 277
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$100(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->access$200(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 279
    return-void
.end method
