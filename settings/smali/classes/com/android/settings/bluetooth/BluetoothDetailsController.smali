.class public abstract Lcom/android/settings/bluetooth/BluetoothDetailsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field protected final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 49
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 50
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->init(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    return-void
.end method

.method protected abstract init(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public isAvailable()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsController;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->refresh()V

    .line 62
    return-void
.end method

.method protected abstract refresh()V
.end method
