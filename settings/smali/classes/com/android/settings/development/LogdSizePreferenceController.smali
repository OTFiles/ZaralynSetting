.class public Lcom/android/settings/development/LogdSizePreferenceController;
.super Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.source "LogdSizePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/development/LogdSizePreferenceController;->updateLogdSizeValues()V

    .line 35
    return-void
.end method
