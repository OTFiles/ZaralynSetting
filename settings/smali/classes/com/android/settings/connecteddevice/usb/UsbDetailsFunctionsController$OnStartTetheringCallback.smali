.class final Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbDetailsFunctionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    .line 148
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 3

    .line 153
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-wide v1, v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 155
    return-void
.end method
