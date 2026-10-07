.class public Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionBroadcastReceiver.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDataRole:I

.field private mFunctions:J

.field private mListeningToUsbEvents:Z

.field private mPowerRole:I

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field private mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbConnectionListener"    # Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    .line 49
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 53
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    .line 54
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    .line 129
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "host_connected"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    if-eqz v0, :cond_7

    .line 62
    const-wide/16 v2, 0x0

    .line 63
    .local v2, "functions":J
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "mtp"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "unlocked"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "ptp"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "unlocked"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    const-wide/16 v0, 0x10

    or-long/2addr v2, v0

    .line 71
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "midi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    const-wide/16 v0, 0x8

    or-long/2addr v2, v0

    .line 74
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rndis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    const-wide/16 v0, 0x20

    or-long/2addr v2, v0

    .line 77
    :cond_5
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    .line 80
    .end local v2
    goto :goto_2

    .line 81
    :cond_6
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "portStatus"

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPortStatus;

    .line 84
    .local v0, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    if-eqz v0, :cond_7

    .line 85
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v1

    iput v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 86
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    iput v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    .line 89
    .end local v0
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    if-eqz v0, :cond_8

    .line 90
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-boolean v2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    iget-wide v3, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    iget v5, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    iget v6, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;->onUsbConnectionChanged(ZJII)V

    .line 93
    :cond_8
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    .line 124
    return-void
.end method

.method public register()V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-nez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 106
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    .line 108
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    .line 115
    :cond_0
    return-void
.end method
