.class final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbDefaultFragment.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    .line 134
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 3

    .line 146
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-wide v1, v1, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->updateCandidates()V

    .line 149
    return-void
.end method

.method public onTetheringStarted()V
    .locals 3

    .line 139
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 142
    return-void
.end method
