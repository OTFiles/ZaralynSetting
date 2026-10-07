.class public Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotifyOpenNetworksPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 50
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    new-instance v0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    const-string v1, "notify_open_networks"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    .line 56
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "notify_open_networks"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 79
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify_open_networks"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 83
    return v1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    .line 87
    move-object v2, p1

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 85
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 98
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 102
    .local v0, "notifyOpenNetworks":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 104
    return-void
.end method
