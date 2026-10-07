.class public Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutomaticStorageManagementSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 55
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 56
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    const-string v0, "toggle_asm"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 62
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "toggle_asm"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    .line 86
    :cond_1
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6
    .param p1, "isChecked"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x1e9

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    .line 94
    nop

    .line 92
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const-string v0, "ro.storage_manager.enabled"

    .line 97
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    .local v0, "storageManagerEnabledByDefault":Z
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_storage_manager_turned_off_by_policy"

    .line 99
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    nop

    .line 106
    .local v1, "storageManagerDisabledByPolicy":Z
    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 107
    :cond_1
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v2

    .line 108
    .local v2, "fragment":Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v5, "ActivationWarningFragment"

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    .end local v2
    :cond_2
    return v3
.end method
