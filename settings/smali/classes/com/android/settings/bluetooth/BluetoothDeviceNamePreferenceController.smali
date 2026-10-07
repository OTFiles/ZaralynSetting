.class public Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BluetoothDeviceNamePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothNamePrefCtrl"


# instance fields
.field protected mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mPreference:Landroid/support/v7/preference/Preference;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "preferenceKey"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "BluetoothNamePrefCtrl"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 63
    return-void
.end method


# virtual methods
.method public createBluetoothDeviceNamePreference(Landroid/support/v7/preference/PreferenceScreen;I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "order"    # I

    .line 121
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 76
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-super {p0}, Lcom/android/settings/core/BasePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120285

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 110
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    return-object v1
.end method

.method public onStart()V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method protected updatePreferenceState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroid/support/v7/preference/Preference;)V

    .line 99
    return-void
.end method
