.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final AUDIO_KEY:Ljava/lang/String; = "pref_music_audio"

.field static final FILES_KEY:Ljava/lang/String; = "pref_files"

.field static final GAME_KEY:Ljava/lang/String; = "pref_games"

.field static final MOVIES_KEY:Ljava/lang/String; = "pref_movies"

.field static final OTHER_APPS_KEY:Ljava/lang/String; = "pref_other_apps"

.field static final PHOTO_KEY:Ljava/lang/String; = "pref_photos_videos"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"


# instance fields
.field private mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final mFragment:Landroid/app/Fragment;

.field private mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field private mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field private mUsedBytes:J

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFragment"    # Landroid/app/Fragment;
    .param p3, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p4, "svp"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 106
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 107
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 108
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFragment"    # Landroid/app/Fragment;
    .param p3, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p4, "svp"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
    .param p5, "isWorkProfile"    # Z

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    .line 119
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    .line 120
    return-void
.end method

.method private actAddOrRemovePreference(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "isNeedAddOrRemove"    # Ljava/lang/String;
    .param p2, "preferenceName"    # Ljava/lang/String;
    .param p3, "prefadd"    # Landroid/support/v7/preference/Preference;

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 310
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0.00 B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0.00 GB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, p3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 321
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 322
    :goto_1
    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010429

    aput v2, v0, v1

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 232
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 233
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-object p1
.end method

.method private getAppsIntent()Landroid/content/Intent;
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 388
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    .line 389
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "volumeUuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "volumeName"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12015d

    .line 394
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 395
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 396
    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 397
    .local v1, "childLauncher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 398
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getAudioIntent()Landroid/content/Intent;
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 369
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    .line 370
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "volumeUuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "volumeName"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "storageType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 374
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 375
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120dc9

    .line 376
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 378
    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 379
    .local v1, "childLauncher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 380
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getFilesIntent()Landroid/content/Intent;
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getGamesIntent()Landroid/content/Intent;
    .locals 4

    .line 402
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 403
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 404
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 406
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 407
    const v2, 0x7f120679

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 409
    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 410
    .local v1, "childLauncher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 411
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getMoviesIntent()Landroid/content/Intent;
    .locals 4

    .line 415
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 416
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$MoviesStorageActivity;

    .line 417
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 419
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 420
    const v2, 0x7f120dc8

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 421
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 422
    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 423
    .local v1, "childLauncher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 424
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getPhotosIntent()Landroid/content/Intent;
    .locals 4

    .line 348
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$PhotosStorageActivity;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "storageType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 356
    const v2, 0x7f120dcd

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 358
    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 359
    .local v1, "childLauncher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 360
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 428
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 429
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "workProfileOnly"

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    const-string v1, "workId"

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    return-object v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 440
    :try_start_0
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 441
    .local v0, "userId":I
    if-ne v0, v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 448
    .end local v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "StorageItemPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v0
    :goto_1
    return-void
.end method

.method private setFilesPreferenceVisibility()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 197
    .local v0, "sharedVolume":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 199
    .local v1, "hideFilePreference":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 200
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 205
    .end local v0
    .end local v1
    :cond_3
    :goto_2
    return-void
.end method

.method private tintPreference(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 239
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 240
    const-string v0, "pref_photos_videos"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 241
    const-string v0, "pref_music_audio"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 242
    const-string v0, "pref_games"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 243
    const-string v0, "pref_movies"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 244
    const-string v0, "pref_other_apps"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 245
    const-string v0, "pref_system"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 246
    const-string v0, "pref_files"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 248
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    .line 249
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    return v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 135
    return v0

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x4534fddd
    const-string v4, "pref_other_apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1    # 0x3c06afcb
    const-string v4, "pref_system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2    # 0x313de4df
    const-string v4, "pref_movies"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3    # 0x10e4e120
    const-string v4, "pref_music_audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :sswitch_4    # -0x58bcf846
    const-string v4, "pref_photos_videos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_5    # -0x61dd2e5b
    const-string v4, "pref_games"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6    # -0x61e7a6a5
    const-string v4, "pref_files"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 164
    :pswitch_0    # 0x6
    new-instance v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 165
    .local v2, "dialog":Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v3, "SystemInfo"

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return v5

    .line 159
    .end local v2
    :pswitch_1    # 0x5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getFilesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    const/16 v4, 0x349

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 162
    goto :goto_2

    .line 153
    :pswitch_2    # 0x4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_3

    .line 154
    goto :goto_2

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAppsIntent()Landroid/content/Intent;

    .line 157
    return v5

    .line 148
    :pswitch_3    # 0x3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getMoviesIntent()Landroid/content/Intent;

    .line 149
    return v5

    .line 145
    :pswitch_4    # 0x2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getGamesIntent()Landroid/content/Intent;

    .line 146
    return v5

    .line 142
    :pswitch_5    # 0x1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAudioIntent()Landroid/content/Intent;

    .line 143
    return v5

    .line 139
    :pswitch_6    # 0x0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getPhotosIntent()Landroid/content/Intent;

    .line 140
    return v5

    .line 170
    :goto_2
    if-eqz v1, :cond_4

    .line 171
    const-string v0, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchIntent(Landroid/content/Intent;)V

    .line 173
    return v5

    .line 176
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x61e7a6a5 -> :sswitch_6
        -0x61dd2e5b -> :sswitch_5
        -0x58bcf846 -> :sswitch_4
        0x10e4e120 -> :sswitch_3
        0x313de4df -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x4534fddd -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6    # 0x0
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 11
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;I)V"
        }
    .end annotation

    .line 253
    .local p1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 257
    .local v0, "data":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iget-object v4, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iget-object v4, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 263
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v1, v3

    .line 269
    .local v1, "otherExternalBytes":J
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 271
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_1

    .line 274
    const-wide/16 v3, 0x0

    .line 275
    .local v3, "attributedSize":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 276
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 277
    .local v6, "otherData":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    iget-wide v7, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v9, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v7, v9

    iget-wide v9, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v7, v9

    iget-wide v9, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v7, v9

    iget-wide v9, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v7, v9

    add-long/2addr v3, v7

    .line 283
    iget-object v7, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v7, v7, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-object v9, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v9, v9, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    .line 275
    .end local v6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 287
    .end local v5
    :cond_0
    const-wide/32 v5, 0x40000000

    iget-wide v7, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 288
    .local v5, "systemSize":J
    iget-object v7, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v8, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v7, v5, v6, v8, v9}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 291
    .end local v3
    .end local v5
    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_2

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_photos_videos"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->actAddOrRemovePreference(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_3

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_music_audio"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->actAddOrRemovePreference(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_4

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_games"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->actAddOrRemovePreference(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 300
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_5

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_movies"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->actAddOrRemovePreference(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 304
    :cond_5
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0
    .param p1, "totalSizeBytes"    # J

    .line 329
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    .line 330
    return-void
.end method

.method public setUsedSize(J)V
    .locals 0
    .param p1, "usedSizeBytes"    # J

    .line 325
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    .line 326
    return-void
.end method

.method public setUserId(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 211
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 220
    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "volume"    # Landroid/os/storage/VolumeInfo;

    .line 188
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    .line 190
    return-void
.end method
