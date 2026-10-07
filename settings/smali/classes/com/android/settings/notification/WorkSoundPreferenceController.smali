.class public Lcom/android/settings/notification/WorkSoundPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mParent:Lcom/android/settings/notification/SoundSettings;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVoiceCapable:Z

.field private mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mWorkUsePersonalSounds:Landroid/support/v7/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/notification/SoundSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 81
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/notification/SoundSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "helper"    # Lcom/android/settings/notification/AudioHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 297
    new-instance v0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mVoiceCapable:Z

    .line 90
    iput-object p2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mParent:Lcom/android/settings/notification/SoundSettings;

    .line 91
    iput-object p4, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 92
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 95
    :cond_0
    return-void
.end method

.method private disableWorkSync()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->disableSyncFromParent(Landroid/content/Context;)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->disableWorkSyncSettings()V

    .line 258
    return-void
.end method

.method private disableWorkSyncSettings()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateWorkRingtoneSummaries()V

    .line 268
    return-void
.end method

.method private enableWorkSyncSettings()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1211af

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 253
    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 176
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private initWorkPreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 2
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .line 183
    nop

    .line 184
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 185
    .local v0, "pref":Lcom/android/settings/DefaultRingtonePreference;
    invoke-virtual {v0, p0}, Lcom/android/settings/DefaultRingtonePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setUserId(I)V

    .line 189
    return-object v0
.end method

.method public static synthetic lambda$updateWorkPreferences$0(Lcom/android/settings/notification/WorkSoundPreferenceController;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .line 205
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mParent:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->show(Lcom/android/settings/notification/SoundSettings;)V

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->disableWorkSync()V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowRingtoneSettings()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 167
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/AudioHelper;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 171
    .local v0, "ringtoneUri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 168
    .end local v0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120871

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateWorkPreferences()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    .line 197
    .local v0, "isAvailable":Z
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 198
    if-nez v0, :cond_1

    .line 199
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string v2, "work_use_personal_sounds"

    .line 203
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/support/v7/preference/TwoStatePreference;

    .line 204
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$XBbO1oM_StZ54wAnUJEnnExa5OU;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$XBbO1oM_StZ54wAnUJEnnExa5OU;-><init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string v2, "work_ringtone"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->initWorkPreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string v2, "work_notification_ringtone"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->initWorkPreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_5

    .line 223
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string v2, "work_alarm_ringtone"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->initWorkPreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 226
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mVoiceCapable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 227
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 231
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    .local v1, "managedProfileContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sync_parent_sounds"

    iget v5, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 234
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSyncSettings()V

    goto :goto_0

    .line 236
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->disableWorkSyncSettings()V

    .line 238
    :goto_0
    return-void
.end method

.method private updateWorkRingtoneSummaries()V
    .locals 3

    .line 271
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    .local v0, "managedProfileContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    .line 275
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x2

    .line 278
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x4

    .line 280
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 99
    const-string v0, "sound_work_settings_section"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method enableWorkSync()V
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->enableSyncFromParent(Landroid/content/Context;)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSyncSettings()V

    .line 243
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, "sound_work_settings_section"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->shouldShowRingtoneSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0
.end method

.method public onManagedProfileAdded(I)V
    .locals 2
    .param p1, "profileId"    # I

    .line 284
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 285
    iput p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 286
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateWorkPreferences()V

    .line 288
    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .locals 2
    .param p1, "profileId"    # I

    .line 291
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    if-ne v0, p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 293
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateWorkPreferences()V

    .line 295
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 146
    const-string v0, "work_ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .local v0, "ringtoneType":I
    :goto_0
    goto :goto_1

    .line 148
    .end local v0
    :cond_0
    const-string v0, "work_notification_ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x2

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "work_alarm_ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x4

    goto :goto_0

    .line 153
    .restart local v0
    :goto_1
    nop

    .line 156
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    return v1

    .line 153
    .end local v0
    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "managedProfileFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 113
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateWorkPreferences()V

    .line 114
    return-void
.end method
