.class public Lcom/android/settings/sound/FlipCameraSoundPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraSoundPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyName:Ljava/lang/String;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "flip_camera_sound_pref"

    iput-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mKeyName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->isNeedDisplayPref()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mKeyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->getFlipCameraSoundPrefStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method public getFlipCameraSoundPrefStatus()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_camera_sound_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 85
    .local v0, "result":Z
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public isNeedDisplayPref()Z
    .locals 2

    .line 73
    :try_start_0
    const-string v0, "ro.readboy.front.camera.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.readboy.rise_camera_sound"

    const-string v1, ""

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 96
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->setFlipCameraSoundPrefStatus(Z)Z

    move-result v0

    return v0
.end method

.method public setFlipCameraSoundPrefStatus(Z)Z
    .locals 4
    .param p1, "newValue"    # Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_camera_sound_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 90
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_camera_sound_switch"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 91
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 54
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->getFlipCameraSoundPrefStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 59
    return-void
.end method
