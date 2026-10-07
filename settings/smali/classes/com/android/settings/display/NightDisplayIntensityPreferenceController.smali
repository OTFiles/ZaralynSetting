.class public Lcom/android/settings/display/NightDisplayIntensityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "NightDisplayIntensityPreferenceController.java"


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 35
    return-void
.end method

.method private convertTemperature(I)I
    .locals 1
    .param p1, "temperature"    # I

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    .line 57
    .local v0, "preference":Lcom/android/settings/widget/SeekBarPreference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getMaxSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 59
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x2

    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x4

    return v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSteps()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_temperature"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setSliderPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 74
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setColorTemperature(I)Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 65
    return-void
.end method
