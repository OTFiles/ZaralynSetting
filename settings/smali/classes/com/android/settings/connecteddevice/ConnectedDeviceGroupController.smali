.class public Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ConnectedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY:Ljava/lang/String; = "connected_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

.field private mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

.field mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "connected_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "connected_device_list"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 77
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->initUsbPreference(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->forceUpdate()V

    .line 84
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x2

    .line 88
    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "connected_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0
    .param p1, "bluetoothDeviceUpdater"    # Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
    .param p2, "connectedUsbDeviceUpdater"    # Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;
    .param p3, "connectedDockUpdater"    # Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 119
    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 120
    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    .line 121
    iput-object p3, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 122
    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 125
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    nop

    .line 127
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v1

    .line 128
    .local v1, "dockUpdaterFeatureProvider":Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    nop

    .line 129
    invoke-interface {v1, v0, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getConnectedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object v2

    .line 130
    .local v2, "connectedDockUpdater":Lcom/android/settings/connecteddevice/dock/DockUpdater;
    new-instance v3, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    new-instance v4, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-direct {v4, v0, p1, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V

    .line 133
    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 100
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 104
    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 108
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->registerCallback()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    .line 63
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->unregisterCallback()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    .line 70
    return-void
.end method
