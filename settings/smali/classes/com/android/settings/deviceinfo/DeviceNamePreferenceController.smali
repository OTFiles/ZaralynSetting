.class public Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceNamePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;
    }
.end annotation


# static fields
.field public static final DEVICE_NAME_SET_WARNING_ID:I = 0x1

.field private static final KEY_PENDING_DEVICE_NAME:Ljava/lang/String; = "key_pending_device_name"

.field private static final PREF_KEY:Ljava/lang/String; = "device_name"


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDeviceName:Ljava/lang/String;

.field private mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

.field private mPendingDeviceName:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "device_name"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 65
    new-instance v0, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->initializeDeviceName()V

    .line 68
    return-void
.end method

.method private static final getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "deviceName"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    .local v0, "filteredSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeDeviceName()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method

.method private setBluetoothDeviceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 157
    .local v0, "localBluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v0, :cond_1

    .line 158
    invoke-static {p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setSettingsGlobalDeviceName(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setBluetoothDeviceName(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setTetherSsidName(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method private setSettingsGlobalDeviceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    return-void
.end method

.method private setTetherSsidName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 179
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 182
    return-void
.end method


# virtual methods
.method public confirmDeviceName()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 73
    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    .local v0, "deviceName":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 78
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "device_name"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, "key_pending_device_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 105
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;->showDeviceNameWarningDialog(Ljava/lang/String;)V

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 193
    const-string v0, "key_pending_device_name"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    .line 131
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    .line 132
    return-void
.end method

.method public setLocalBluetoothManager(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .param p1, "localBluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 121
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 122
    return-void
.end method
