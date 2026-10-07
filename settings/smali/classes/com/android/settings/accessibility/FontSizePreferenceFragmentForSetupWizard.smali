.class public Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.source "FontSizePreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 26
    const/16 v0, 0x171

    return v0
.end method

.method public onStop()V
    .locals 4

    .line 32
    iget v0, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    iget v1, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mInitialIndex:I

    if-eq v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x171

    iget v3, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->onStop()V

    .line 38
    return-void
.end method
