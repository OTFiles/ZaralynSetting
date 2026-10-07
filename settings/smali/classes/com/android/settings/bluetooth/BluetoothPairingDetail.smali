.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothPairingDetail.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mInitialScanStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method enableScanning()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->removeAllDevices()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    .line 128
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    .line 129
    return-void
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    .line 205
    const-string v0, "available_devices"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 190
    const v0, 0x7f1206bb

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "BluetoothPairingDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 115
    const/16 v0, 0x3fa

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 200
    const v0, 0x7f150027

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 2

    .line 108
    const-string v0, "available_devices"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 109
    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    .line 111
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    .line 64
    new-instance v0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    .line 65
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 81
    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroid/app/Fragment;)V

    .line 82
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    .line 169
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 173
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 180
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    .line 186
    .end local v0
    :cond_1
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->disableScanning()V

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 135
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 142
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateBluetooth()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->disableScanning()V

    .line 104
    return-void
.end method

.method updateBluetooth()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 92
    :goto_0
    return-void
.end method

.method updateContent(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .line 146
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v1, 0x7f1202ef

    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateFooterPreference(Landroid/support/v7/preference/Preference;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    .line 163
    :goto_0
    return-void
.end method
