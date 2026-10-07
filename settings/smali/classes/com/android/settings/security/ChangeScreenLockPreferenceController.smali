.class public Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ChangeScreenLockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field protected final mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected final mHost:Lcom/android/settings/security/SecuritySettings;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreference:Lcom/android/settingslib/RestrictedPreference;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/settings/security/SecuritySettings;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    .line 63
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    .line 64
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 65
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 67
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 69
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 70
    return-void
.end method


# virtual methods
.method disableIfPasswordQualityManaged(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 211
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 213
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 215
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 219
    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 86
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "unlock_set_or_change"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 151
    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x84

    if-ne p1, v3, :cond_3

    .line 152
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq p2, v1, :cond_1

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_2

    .line 154
    :cond_1
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120859

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 157
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 160
    :cond_2
    return v2

    .line 161
    :cond_3
    const/16 v3, 0x83

    if-ne p1, v3, :cond_7

    .line 162
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eq p2, v1, :cond_5

    .line 163
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-nez v1, :cond_6

    if-eq p2, v2, :cond_5

    if-ne p2, v0, :cond_6

    .line 164
    :cond_5
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1207ee

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 167
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 170
    :cond_6
    return v2

    .line 172
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 123
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsApp;->isFastDoubleClick([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 133
    :cond_1
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 134
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    return v1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/android/settings/security/SecuritySettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1207ee

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 144
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 147
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 2
    .param p1, "p"    # Lcom/android/settings/widget/GearPreference;

    .line 110
    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/android/settings/security/SecuritySettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120859

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 115
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 119
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 99
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;I)V

    .line 100
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 106
    :cond_3
    return-void
.end method

.method protected updateSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "userId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    const v0, 0x7f120f0b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    const v0, 0x7f120f0c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 197
    :cond_3
    const v0, 0x7f120f0d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 191
    :cond_4
    const v0, 0x7f120f0f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 192
    goto :goto_1

    .line 187
    :cond_5
    const v0, 0x7f120f0e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 188
    nop

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 202
    return-void
.end method
