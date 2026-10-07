.class public Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 37
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdbDialogConfirmed()V
    .locals 1

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    .line 47
    return-void
.end method

.method public onAdbDialogDismissed()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 51
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    return-void
.end method

.method public showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroid/app/Fragment;)V

    .line 56
    return-void
.end method
