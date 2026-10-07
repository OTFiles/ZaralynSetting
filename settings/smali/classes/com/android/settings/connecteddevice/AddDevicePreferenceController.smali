.class public Lcom/android/settings/connecteddevice/AddDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AddDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 54
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 72
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x2

    .line 76
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, ""

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method

.method updateState()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 90
    return-void
.end method
