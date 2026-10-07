.class public abstract Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "VolumeSeekBarPreferenceController.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# instance fields
.field protected mHelper:Lcom/android/settings/notification/AudioHelper;

.field protected mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 61
    :cond_0
    return-void
.end method

.method protected abstract getAudioStream()I
.end method

.method public getMaxSteps()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMax()I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getMaxVolume(I)I

    move-result v0

    return v0
.end method

.method protected abstract getMuteIcon()I
.end method

.method public getSliderPosition()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getProgress()I

    move-result v0

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    .line 75
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    .line 68
    :cond_0
    return-void
.end method

.method setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/settings/notification/AudioHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 46
    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    .line 49
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    .line 50
    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setProgress(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/AudioHelper;->setStreamVolume(II)Z

    move-result v0

    return v0
.end method
