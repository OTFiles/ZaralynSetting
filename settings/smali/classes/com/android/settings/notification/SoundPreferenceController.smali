.class public Lcom/android/settings/notification/SoundPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "SoundPreferenceController.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

.field private mPreference:Lcom/android/settings/notification/NotificationSoundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "importanceListener"    # Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
    .param p4, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 44
    invoke-direct {p0, p1, p4}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/notification/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 46
    iput-object p3, p0, Lcom/android/settings/notification/SoundPreferenceController;->mListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 47
    return-void
.end method

.method protected static hasValidSound(Landroid/app/NotificationChannel;)Z
    .locals 2
    .param p0, "channel"    # Landroid/app/NotificationChannel;

    .line 115
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/NotificationSoundPreference;

    .line 70
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "ringtone"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 91
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    .line 93
    .local v0, "pref":Lcom/android/settings/notification/NotificationSoundPreference;
    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 60
    return v1

    .line 62
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 102
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/NotificationSoundPreference;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/NotificationSoundPreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->saveChannel()V

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 74
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    .line 75
    .local v0, "pref":Lcom/android/settings/notification/NotificationSoundPreference;
    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->isChannelConfigurable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    .line 78
    .end local v0
    :cond_1
    return-void
.end method
