.class public Lcom/android/settings/location/LocationForWorkPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationForWorkPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    const-string v0, "managed_profile_location_switch"

    .line 60
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 61
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "managed_profile_location_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 45
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    .line 47
    .local v0, "switchState":Z
    iget-object v1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_share_location"

    xor-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 48
    invoke-static {v4}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v4

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 50
    const v2, 0x7f120e47

    goto :goto_0

    :cond_0
    const v2, 0x7f120e45

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 51
    const/4 v1, 0x1

    return v1

    .line 53
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationForWorkPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    iget-object v1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 82
    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 83
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v1}, Lcom/android/settings/location/LocationEnabler;->isManagedProfileRestrictedByBase()Z

    move-result v1

    .line 84
    .local v1, "isRestrictedByBase":Z
    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v3, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result v3

    .line 89
    .local v3, "enabled":Z
    iget-object v4, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 91
    const v4, 0x7f120e45

    .line 92
    .local v4, "summaryResId":I
    if-nez v3, :cond_2

    .line 93
    iget-object v5, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 96
    if-eqz v1, :cond_3

    .line 97
    const v2, 0x7f120e45

    goto :goto_0

    :cond_3
    const v2, 0x7f120e47

    :goto_0
    move v4, v2

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 101
    .end local v3
    .end local v4
    :goto_2
    return-void

    .line 78
    .end local v0
    .end local v1
    :cond_4
    :goto_3
    return-void
.end method
