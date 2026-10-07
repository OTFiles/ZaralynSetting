.class public Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "VerifyAppsOverUsbPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/AdbOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;
    }
.end annotation


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    invoke-direct {v0, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;-><init>(Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    .line 73
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 74
    return-void
.end method

.method private shouldBeEnabled()Z
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    return v2

    .line 147
    :cond_0
    const-string v1, "package_verifier_enable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 149
    return v2

    .line 151
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "verification":Landroid/content/Intent;
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v4, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4, v1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 156
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 157
    return v2

    .line 160
    .end local v1
    .end local v4
    :cond_2
    return v3
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "verify_apps_over_usb"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mIsAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "verifier_setting_visible"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAdbSettingChanged()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 89
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 90
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    .line 92
    nop

    .line 90
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 100
    .local v0, "restrictedPreference":Lcom/android/settingslib/RestrictedSwitchPreference;
    invoke-direct {p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->shouldBeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    iget-object v3, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "ensure_verify_apps"

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 107
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 109
    .local v1, "enforcingAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    return-void

    .line 115
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "verifier_verify_adb_installs"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    nop

    .line 119
    .local v2, "checked":Z
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 120
    return-void
.end method
