.class public abstract Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DeveloperOptionsPreferenceController.java"


# instance fields
.field protected mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 53
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onDeveloperOptionsDisabled()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 71
    :cond_0
    return-void
.end method

.method public onDeveloperOptionsEnabled()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 85
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 78
    return-void
.end method
