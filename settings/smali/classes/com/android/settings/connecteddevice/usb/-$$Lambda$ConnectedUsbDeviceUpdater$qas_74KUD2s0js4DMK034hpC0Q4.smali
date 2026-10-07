.class public final synthetic Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$qas_74KUD2s0js4DMK034hpC0Q4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$qas_74KUD2s0js4DMK034hpC0Q4;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$qas_74KUD2s0js4DMK034hpC0Q4;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-static {v0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->lambda$initUsbPreference$1(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
