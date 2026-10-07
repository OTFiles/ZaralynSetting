.class public Lcom/android/settings/datetime/timezone/TimeZoneSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TimeZoneSettings.java"


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSelectByRegion:Z

.field private mSelectedTimeZoneId:Ljava/lang/String;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tzId"    # Ljava/lang/String;

    .line 361
    nop

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "time_zone_region"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocaleRegionId()Ljava/lang/String;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isFixedOffset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tzId"    # Ljava/lang/String;

    .line 321
    const-string v0, "Etc/GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Etc/UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$Ah3tL-2LTanl7tTAw64r8xCK07o(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    return-void
.end method

.method public static synthetic lambda$CFHMJtb3KFCwNTuhyOFedUZcT20(Lcom/android/settings/datetime/timezone/TimeZoneSettings;Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method

.method public static synthetic lambda$fBefFKEAVxzXT5oriz7X9NJj6a0(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onRegionZonePreferenceClicked()V

    return-void
.end method

.method public static synthetic lambda$vqMeoCUXFQsF8oLE4z3Gn5iFYMM(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    return-void
.end method

.method private onFixedOffsetZoneChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tzId"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 267
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    .line 272
    return-void
.end method

.method private onRegionZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "regionId"    # Ljava/lang/String;
    .param p2, "tzId"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object v0

    .line 251
    .local v0, "countryTimeZones":Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    .line 263
    return-void

    .line 252
    :cond_1
    :goto_0
    const-string v1, "TimeZoneSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time zone id is selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private onRegionZonePreferenceClicked()V
    .locals 3

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v1, ":android:extra_user_argument"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v1, ":settings:show_fragment_title_resid"

    const v2, 0x7f1204d6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "com.android.settings.datetime.timezone.region_id"

    const-class v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    .line 193
    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 195
    return-void
.end method

.method private onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1
    .param p1, "timeZoneData"    # Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 169
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setupForCurrentTimeZone()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 175
    :cond_0
    return-void
.end method

.method private saveTimeZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "regionId"    # Ljava/lang/String;
    .param p2, "tzId"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 277
    const-string v1, "time_zone_region"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 279
    :cond_0
    const-string v1, "time_zone_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, p2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "tzId"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-class v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 241
    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    goto :goto_0

    .line 243
    :cond_0
    const-class v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->updatePreferenceStates()V

    .line 246
    return-void
.end method

.method private setDisplayedRegion(Ljava/lang/String;)V
    .locals 1
    .param p1, "regionId"    # Ljava/lang/String;

    .line 219
    const-class v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setRegionId(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->updatePreferenceStates()V

    .line 221
    return-void
.end method

.method private setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "regionId"    # Ljava/lang/String;
    .param p2, "tzId"    # Ljava/lang/String;

    .line 224
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {v0, p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v0

    .line 225
    .local v0, "tzInfo":Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 226
    invoke-virtual {v1, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object v1

    .line 228
    .local v1, "countryTimeZones":Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    const-class v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 231
    const-class v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    nop

    .line 231
    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setClickable(Z)V

    .line 233
    const-class v2, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->updatePreferenceStates()V

    .line 236
    return-void
.end method

.method private setPreferenceCategoryVisible(Landroid/support/v7/preference/PreferenceCategory;Z)V
    .locals 2
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceCategory;
    .param p2, "isVisible"    # Z

    .line 386
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v0
    :cond_0
    return-void
.end method

.method private setSelectByRegion(Z)V
    .locals 5
    .param p1, "selectByRegion"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    .line 331
    const-string v0, "time_zone_region_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroid/support/v7/preference/PreferenceCategory;Z)V

    .line 333
    const-string v0, "time_zone_fixed_offset_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroid/support/v7/preference/PreferenceCategory;Z)V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLocaleRegionId()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "localeRegionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getRegionIds()Ljava/util/Set;

    move-result-object v1

    .line 338
    .local v1, "allCountryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 339
    .local v2, "displayRegion":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-boolean v3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedFixedOffsetTimeZoneInfo(Ljava/lang/String;)V

    .line 344
    return-void

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findRegionIdForTzId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "regionId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 349
    invoke-direct {p0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedRegion(Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setDisplayedTimeZoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_2
    return-void
.end method

.method private setupForCurrentTimeZone()V
    .locals 1

    .line 316
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    .line 318
    return-void
.end method

.method private startFixedOffsetPicker()V
    .locals 3

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    const-string v1, ":android:extra_user_argument"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string v1, ":settings:show_fragment_title_resid"

    const v2, 0x7f1204cf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-class v1, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 206
    return-void
.end method

.method private startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultRequestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 210
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;>;"
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 216
    return-void
.end method

.method private startRegionPicker()V
    .locals 4

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    const-string v1, ":android:extra_user_argument"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    const-string v1, ":settings:show_fragment_title_resid"

    const v3, 0x7f1204d6

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-class v1, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 184
    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    .line 99
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mLocale:Ljava/util/Locale;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneInfoFormatter:Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, "regionPreferenceController":Lcom/android/settings/datetime/timezone/RegionPreferenceController;
    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$vqMeoCUXFQsF8oLE4z3Gn5iFYMM;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$vqMeoCUXFQsF8oLE4z3Gn5iFYMM;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 104
    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "regionZonePreferenceController":Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;
    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$fBefFKEAVxzXT5oriz7X9NJj6a0;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$fBefFKEAVxzXT5oriz7X9NJj6a0;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 107
    new-instance v3, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, "fixedOffsetPreferenceController":Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;
    new-instance v4, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$Ah3tL-2LTanl7tTAw64r8xCK07o;

    invoke-direct {v4, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$Ah3tL-2LTanl7tTAw64r8xCK07o;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object v0
.end method

.method findRegionIdForTzId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tzId"    # Ljava/lang/String;
    .param p2, "sharePrefRegionId"    # Ljava/lang/String;
    .param p3, "localeRegionId"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryCodesForZoneId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 369
    .local v0, "matchedRegions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const/4 v1, 0x0

    return-object v1

    .line 372
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    return-object p2

    .line 375
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    return-object p3

    .line 379
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "TimeZoneSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 79
    const/16 v0, 0x203

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 84
    const v0, 0x7f1500ae

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 133
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "======divhee========onActivityResult====TimeZoneSettings==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0    # 0x3
    const-string v0, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "tzId":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onFixedOffsetZoneChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v0
    :pswitch_1    # 0x2 0x1
    const-string v0, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "regionId":Ljava/lang/String;
    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "tzId":Ljava/lang/String;
    const-class v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    .line 145
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onRegionZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v0
    .end local v1
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "time_zone_region_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroid/support/v7/preference/PreferenceCategory;Z)V

    .line 123
    const-string v0, "time_zone_fixed_offset_preference_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setPreferenceCategoryVisible(Landroid/support/v7/preference/PreferenceCategory;Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$CFHMJtb3KFCwNTuhyOFedUZcT20;

    invoke-direct {v4, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$TimeZoneSettings$CFHMJtb3KFCwNTuhyOFedUZcT20;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;)V

    invoke-direct {v2, v3, v4}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f12128b

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 288
    const/4 v1, 0x2

    const v2, 0x7f12128a

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 289
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 290
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_0    # 0x2
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startFixedOffsetPicker()V

    .line 308
    return v1

    .line 303
    :pswitch_1    # 0x1
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startRegionPicker()V

    .line 304
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 295
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 296
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectByRegion:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 297
    return-void
.end method

.method setTimeZoneData(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 0
    .param p1, "timeZoneData"    # Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 165
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 166
    return-void
.end method
