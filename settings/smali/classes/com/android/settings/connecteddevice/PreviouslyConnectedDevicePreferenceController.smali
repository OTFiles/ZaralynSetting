.class public Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreviouslyConnectedDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mPreferenceSize:I

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

.field private manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getSavedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 55
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 56
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 59
    :cond_0
    return-void
.end method

.method private updatePreferenceOnSizeChanged()V
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 173
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget v2, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 179
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 75
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 94
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 96
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 143
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 148
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 113
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 138
    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 100
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 101
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 102
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 123
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 133
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 128
    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 106
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 107
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 108
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .line 118
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 91
    return-void
.end method

.method setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0
    .param p1, "bluetoothDeviceUpdater"    # Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 152
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 153
    return-void
.end method

.method setPreference(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 167
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 168
    return-void
.end method

.method setPreferenceSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 162
    iput p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 163
    return-void
.end method

.method setSavedDockUpdater(Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0
    .param p1, "savedDockUpdater"    # Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 157
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 158
    return-void
.end method
