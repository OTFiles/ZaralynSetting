.class public Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;
.super Ljava/lang/Object;
.source "ConnectedUsbDeviceUpdater.java"


# instance fields
.field private mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbPreference:Landroid/support/v7/preference/Preference;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 55
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
    .param p4, "usbBackend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    .line 61
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 62
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 63
    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 64
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    .line 66
    return-void
.end method

.method private forceUpdate()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    .line 98
    return-void
.end method

.method public static getSummary(JI)I
    .locals 9
    .param p0, "functions"    # J
    .param p2, "power"    # I

    .line 101
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x10

    const-wide/16 v4, 0x20

    const-wide/16 v6, 0x4

    const v8, 0x7f120f5b

    packed-switch p2, :pswitch_data_0

    .line 127
    return v8

    .line 103
    :pswitch_0    # 0x2
    cmp-long v6, p0, v6

    if-nez v6, :cond_0

    .line 104
    const v0, 0x7f120f5c

    return v0

    .line 105
    :cond_0
    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    .line 106
    const v0, 0x7f120f61

    return v0

    .line 107
    :cond_1
    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 108
    const v0, 0x7f120f5e

    return v0

    .line 109
    :cond_2
    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 110
    const v0, 0x7f120f59

    return v0

    .line 112
    :cond_3
    return v8

    .line 115
    :pswitch_1    # 0x1
    cmp-long v6, p0, v6

    if-nez v6, :cond_4

    .line 116
    const v0, 0x7f120f5d

    return v0

    .line 117
    :cond_4
    cmp-long v4, p0, v4

    if-nez v4, :cond_5

    .line 118
    const v0, 0x7f120f62

    return v0

    .line 119
    :cond_5
    cmp-long v2, p0, v2

    if-nez v2, :cond_6

    .line 120
    const v0, 0x7f120f5f

    return v0

    .line 121
    :cond_6
    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 122
    const v0, 0x7f120f5a

    return v0

    .line 124
    :cond_7
    const v0, 0x7f120f60

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public static synthetic lambda$initUsbPreference$1(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .line 83
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 85
    const v1, 0x7f120518

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 86
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;ZJII)V
    .locals 4
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 46
    invoke-virtual {v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v3

    .line 45
    invoke-static {v1, v2, v3}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->getSummary(JI)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroid/support/v7/preference/Preference;)V

    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public initUsbPreference(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120f54

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroid/support/v7/preference/Preference;

    new-instance v1, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$qas_74KUD2s0js4DMK034hpC0Q4;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$qas_74KUD2s0js4DMK034hpC0Q4;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->forceUpdate()V

    .line 92
    return-void
.end method

.method public registerCallback()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    .line 71
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    .line 75
    return-void
.end method
