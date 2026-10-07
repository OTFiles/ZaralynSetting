.class public abstract Lcom/android/settings/core/SliderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SliderPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getMaxSteps()I
.end method

.method public getSliceType()I
    .locals 1

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public abstract getSliderPosition()I
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 31
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result v0

    return v0
.end method

.method public abstract setSliderPosition(I)Z
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 36
    instance-of v0, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Landroid/support/v7/preference/SeekBarPreference;

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SeekBarPreference;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
