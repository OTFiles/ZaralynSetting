.class public Lcom/android/settings/connecteddevice/SavedDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SavedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY:Ljava/lang/String; = "saved_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "saved_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v0

    .line 57
    .local v0, "dockUpdaterFeatureProvider":Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    nop

    .line 58
    invoke-interface {v0, p1, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getSavedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 59
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "saved_device_list"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 77
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->forceUpdate()V

    .line 82
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x2

    .line 86
    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "saved_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 113
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 115
    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 102
    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    .line 65
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    .line 71
    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0
    .param p1, "bluetoothDeviceUpdater"    # Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 119
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 120
    return-void
.end method

.method public setSavedDockUpdater(Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0
    .param p1, "savedDockUpdater"    # Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 124
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    .line 125
    return-void
.end method
