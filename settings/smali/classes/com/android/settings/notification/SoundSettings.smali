.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field static final STOP_SAMPLE:I = 0x1


# instance fields
.field private mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

.field final mHandler:Landroid/os/Handler;

.field private mHfpOutputControllerKey:Ljava/lang/String;

.field private mMediaOutputControllerKey:Ljava/lang/String;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 323
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 68
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 55
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/ZenModePreferenceController;

    const-string v2, "zen_mode"

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings/notification/ZenModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/android/settings/notification/PhoneRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PhoneRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/android/settings/notification/AlarmRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AlarmRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Lcom/android/settings/notification/NotificationRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/FlipCameraSoundPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/android/settings/notification/DialPadTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 279
    .local v1, "dialPadTonePreferenceController":Lcom/android/settings/notification/DialPadTonePreferenceController;
    new-instance v3, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 281
    .local v3, "screenLockSoundPreferenceController":Lcom/android/settings/notification/ScreenLockSoundPreferenceController;
    invoke-virtual {v3, v2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 282
    new-instance v4, Lcom/android/settings/notification/ChargingSoundPreferenceController;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/settings/notification/ChargingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 284
    .local v4, "chargingSoundPreferenceController":Lcom/android/settings/notification/ChargingSoundPreferenceController;
    new-instance v5, Lcom/android/settings/notification/DockingSoundPreferenceController;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/settings/notification/DockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 286
    .local v5, "dockingSoundPreferenceController":Lcom/android/settings/notification/DockingSoundPreferenceController;
    new-instance v6, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 288
    .local v6, "touchSoundPreferenceController":Lcom/android/settings/notification/TouchSoundPreferenceController;
    new-instance v7, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 290
    .local v7, "vibrateOnTouchPreferenceController":Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
    new-instance v8, Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 292
    .local v8, "dockAudioMediaPreferenceController":Lcom/android/settings/notification/DockAudioMediaPreferenceController;
    new-instance v9, Lcom/android/settings/notification/BootSoundPreferenceController;

    invoke-direct {v9, p0}, Lcom/android/settings/notification/BootSoundPreferenceController;-><init>(Landroid/content/Context;)V

    .line 294
    .local v9, "bootSoundPreferenceController":Lcom/android/settings/notification/BootSoundPreferenceController;
    new-instance v10, Lcom/android/settings/notification/EmergencyTonePreferenceController;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 297
    .local v10, "emergencyTonePreferenceController":Lcom/android/settings/notification/EmergencyTonePreferenceController;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v11, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v12, "other_sounds_and_vibrations_category"

    invoke-direct {v11, p0, v12}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v1, v12, v2

    const/4 v2, 0x1

    aput-object v3, v12, v2

    const/4 v2, 0x2

    aput-object v4, v12, v2

    const/4 v2, 0x3

    aput-object v5, v12, v2

    const/4 v2, 0x4

    aput-object v6, v12, v2

    const/4 v2, 0x5

    aput-object v7, v12, v2

    const/4 v2, 0x6

    aput-object v8, v12, v2

    const/4 v2, 0x7

    aput-object v9, v12, v2

    const/16 v2, 0x8

    aput-object v10, v12, v2

    .line 308
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 307
    invoke-virtual {v11, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 306
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    return-object v0
.end method

.method public static synthetic lambda$onAttach$0(Lcom/android/settings/notification/SoundSettings;Landroid/support/v7/preference/ListPreference;)V
    .locals 0
    .param p1, "listPreference"    # Landroid/support/v7/preference/ListPreference;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method public static synthetic lambda$onAttach$1(Lcom/android/settings/notification/SoundSettings;Landroid/support/v7/preference/ListPreference;)V
    .locals 0
    .param p1, "listPreference"    # Landroid/support/v7/preference/ListPreference;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method private onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .line 361
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->onListPreferenceUpdated(Landroid/support/v7/preference/ListPreference;)V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method enableWorkSync()V
    .locals 1

    .line 353
    const-class v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 355
    .local v0, "workSoundController":Lcom/android/settings/notification/WorkSoundPreferenceController;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSync()V

    .line 358
    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .line 130
    const v0, 0x7f1206d7

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 174
    const-string v0, "SoundSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 87
    const/16 v0, 0x150

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 179
    const v0, 0x7f1500a2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "defaultRingtonePref":Lcom/android/settings/DefaultRingtonePreference;
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 116
    :cond_0
    const-string v1, "notification_ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 117
    if-eqz v0, :cond_1

    .line 118
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 121
    :cond_1
    const-string v1, "alarm_ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 126
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 193
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "volumeControllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/notification/VolumeSeekBarPreferenceController;>;"
    const-class v1, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-class v1, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-class v1, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-class v1, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-class v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-class v1, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/MediaOutputPreferenceController;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/MediaOutputPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 215
    const-class v1, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mMediaOutputControllerKey:Ljava/lang/String;

    .line 216
    const-class v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$SoundSettings$P7n4dsft5tPdi8YUFcItX8K9whw;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$P7n4dsft5tPdi8YUFcItX8K9whw;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 218
    const-class v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 222
    .local v2, "controller":Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 224
    .end local v2
    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    if-eqz p1, :cond_1

    .line 94
    const-string v0, "selected_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "selectedPreference":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/RingtonePreference;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 99
    :cond_0
    nop

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SoundSettings"

    .line 101
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 102
    .local v1, "dialogFragment":Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 104
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    const/16 v0, 0x588

    .local v0, "metricsCategory":I
    :goto_0
    goto :goto_1

    .line 160
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mMediaOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const/16 v0, 0x587

    goto :goto_0

    .line 163
    :cond_1
    move v0, v1

    .line 166
    .restart local v0
    :goto_1
    nop

    .line 167
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 168
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {v2, p0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SoundSettings"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 137
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 141
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Lcom/android/settings/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 146
    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 149
    invoke-virtual {v3}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/notification/SoundSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method
