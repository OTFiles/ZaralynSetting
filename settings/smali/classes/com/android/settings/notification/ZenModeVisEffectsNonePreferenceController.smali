.class public Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsNonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# instance fields
.field private final KEY:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "key"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 47
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->KEY:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    .line 55
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x574

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x1ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    .line 75
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "nothingBlocked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    .line 68
    return-void
.end method
