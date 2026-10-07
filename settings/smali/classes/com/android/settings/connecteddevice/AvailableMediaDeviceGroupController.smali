.class public Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AvailableMediaDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY:Ljava/lang/String; = "available_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "available_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 57
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203f0

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203f1

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "available_device_list"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 76
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 81
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x2

    .line 85
    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "available_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 112
    new-instance v0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 114
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 154
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    .line 159
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .line 124
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 149
    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 97
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 101
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 134
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 144
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 139
    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 105
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .line 129
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 63
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 69
    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0
    .param p1, "bluetoothDeviceUpdater"    # Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 118
    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 119
    return-void
.end method
