.class public Lcom/android/settings/datetime/timezone/RegionZonePicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "RegionZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;
    }
.end annotation


# instance fields
.field private mRegionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    const/4 v0, 0x0

    const v1, 0x7f1204d8

    const v2, 0x7f120c6d

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IIZZ)V

    .line 55
    return-void
.end method


# virtual methods
.method public getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .locals 6
    .param p1, "timeZoneData"    # Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    const-string v1, "RegionZoneSearchPicker"

    const-string v2, "getArguments() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 97
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "regionId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object v2

    .line 103
    .local v2, "filteredCountryTimeZones":Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    if-nez v2, :cond_3

    .line 104
    const-string v3, "RegionZoneSearchPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "region id is not valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    instance-of v3, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_2

    .line 106
    move-object v3, v0

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 110
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 116
    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getRegionTimeZoneInfo(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method protected getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->mRegionName:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x54c

    return v0
.end method

.method public getRegionTimeZoneInfo(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 127
    .local p1, "timeZoneIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 129
    .local v0, "formatter":Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;-><init>(Landroid/icu/text/Collator;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 133
    .local v1, "timeZoneInfos":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/settings/datetime/timezone/TimeZoneInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "timeZoneId":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 136
    .local v4, "timeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Etc/Unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3
    .end local v4
    goto :goto_0

    .line 141
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 68
    .local v0, "localeDisplayNames":Landroid/icu/text/LocaleDisplayNames;
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "regionId":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->mRegionName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "selectedTimeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method
