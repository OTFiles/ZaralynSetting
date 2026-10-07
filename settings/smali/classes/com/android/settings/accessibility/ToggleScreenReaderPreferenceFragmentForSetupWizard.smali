.class public Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "ToggleScreenReaderPreferenceFragmentForSetupWizard.java"


# instance fields
.field private mToggleSwitchWasInitiallyChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 36
    const/16 v0, 0x173

    return v0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    .line 32
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x173

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 44
    invoke-virtual {v3}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v3

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onStop()V

    .line 48
    return-void
.end method
