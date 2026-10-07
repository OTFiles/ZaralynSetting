.class public Lcom/android/settings/development/LogPersistPreferenceController;
.super Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.source "LogPersistPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 36
    iput-object p2, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 37
    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/LogPersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 63
    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogPersistPreferenceController;->setLogpersistOff(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    .line 68
    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    .line 72
    return-void
.end method

.method public showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 41
    iget-object v0, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->show(Lcom/android/settings/development/LogPersistDialogHost;)V

    .line 42
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    .line 57
    return-void
.end method
