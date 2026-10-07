.class public abstract Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.super Ljava/lang/Object;
.source "BluetoothDeviceUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field protected final mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field final mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

.field protected mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field protected final mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPrefContext:Landroid/content/Context;

.field protected final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowDeviceWithoutNames:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 71
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p2, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
    .param p3, "localManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDeviceUpdater$9cHgqnTeqRHSfH6f9TvykmwcB28;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDeviceUpdater$9cHgqnTeqRHSfH6f9TvykmwcB28;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 78
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 79
    const-string v0, "persist.bluetooth.showdeviceswithoutnames"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mShowDeviceWithoutNames:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 82
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 83
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/widget/GearPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/settings/widget/GearPreference;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->launchDeviceDetails(Landroid/support/v7/preference/Preference;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 208
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 209
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mShowDeviceWithoutNames:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    .line 213
    .local v1, "btPreference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 214
    instance-of v2, p0, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v2, :cond_0

    .line 215
    move-object v2, p0

    check-cast v2, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    invoke-interface {v2, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroid/support/v7/preference/Preference;)V

    .line 221
    .end local v1
    :cond_1
    return-void
.end method

.method public forceUpdate()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 109
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 110
    .local v0, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 111
    .local v2, "cachedBluetoothDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 112
    .end local v2
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 261
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 262
    return v0

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 265
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public abstract isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
.end method

.method protected launchDeviceDetails(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 241
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "device_address"

    .line 246
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 249
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 250
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f120518

    .line 251
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 252
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 254
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 157
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 161
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .line 117
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    goto :goto_2

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 120
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 121
    .local v0, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 122
    .local v2, "cachedBluetoothDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 125
    .end local v2
    :cond_2
    goto :goto_1

    .line 126
    .end local v0
    :cond_3
    nop

    .line 129
    :goto_2
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 153
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 137
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 150
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 145
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    .line 166
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .line 132
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 172
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 177
    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 93
    return-void
.end method

.method protected removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 227
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 228
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-interface {v1, v2}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroid/support/v7/preference/Preference;)V

    .line 230
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    return-void
.end method

.method public setPrefContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 102
    return-void
.end method

.method protected update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "cachedBluetoothDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 202
    :goto_0
    return-void
.end method
