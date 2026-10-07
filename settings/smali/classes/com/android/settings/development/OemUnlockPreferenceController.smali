.class public Lcom/android/settings/development/OemUnlockPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private final mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mOemLockManager:Landroid/service/oemlock/OemLockManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v0, "oem_lock"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    .line 56
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 57
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 59
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {v0, p2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 64
    :goto_1
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleDeveloperOptionsToggled()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 170
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 172
    const/4 v1, 0x1

    return v1

    .line 170
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2
    :cond_1
    return v1
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .line 152
    const v0, 0x7f1209b9

    .line 153
    .local v0, "oemUnlockSummary":I
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const v0, 0x7f1209b5

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const v0, 0x7f1209b8

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    const v0, 0x7f1209b7

    .line 164
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method


# virtual methods
.method confirmEnableOemUnlock()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->show(Landroid/app/Fragment;)V

    .line 200
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 81
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "oem_unlock_enable"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBootloaderUnlocked()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result v0

    return v0
.end method

.method isOemUnlockAllowedByUserAndCarrier()Z
    .locals 3

    .line 209
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 210
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowedByCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_factory_reset"

    .line 211
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 210
    :goto_0
    return v1
.end method

.method isOemUnlockedAllowed()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 114
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 115
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1, v0}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 122
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_2
    return v0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->handleDeveloperOptionsToggled()V

    .line 130
    return-void
.end method

.method public onOemUnlockConfirmed()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 134
    return-void
.end method

.method public onOemUnlockDismissed()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 141
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 85
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 86
    .local v0, "isUnlocked":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v2, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroid/app/Fragment;)V

    .line 95
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .line 193
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 194
    const v1, 0x7f1209b4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 100
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockedAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateOemUnlockSettingDescription()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
