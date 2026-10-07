.class public Lcom/android/settings/datetime/timezone/model/TimeZoneData;
.super Ljava/lang/Object;
.source "TimeZoneData.java"


# static fields
.field private static sCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

.field private final mRegionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Llibcore/util/CountryZonesFinder;)V
    .locals 1
    .param p1, "countryZonesFinder"    # Llibcore/util/CountryZonesFinder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    .line 58
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    invoke-virtual {v0}, Llibcore/util/CountryZonesFinder;->lookupAllCountryIsoCodes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getNormalizedRegionIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    .locals 4

    const-class v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 47
    .local v1, "data":Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/util/TimeZoneFinder;->getCountryZonesFinder()Llibcore/util/CountryZonesFinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;-><init>(Llibcore/util/CountryZonesFinder;)V

    move-object v1, v2

    .line 51
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    .line 52
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    .end local v1
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getNormalizedRegionIds(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "regionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "regionId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "regionId"    # Ljava/lang/String;

    .line 97
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getRegionIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    return-object v0
.end method

.method public lookupCountryCodesForZoneId(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "tzId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    .line 70
    invoke-virtual {v0, p1}, Llibcore/util/CountryZonesFinder;->lookupCountryTimeZonesForZoneId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "countryTimeZones":Ljava/util/List;, "Ljava/util/List<Llibcore/util/CountryTimeZones;>;"
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 72
    .local v1, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llibcore/util/CountryTimeZones;

    .line 73
    .local v3, "countryTimeZone":Llibcore/util/CountryTimeZones;
    new-instance v4, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    invoke-direct {v4, v3}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;-><init>(Llibcore/util/CountryTimeZones;)V

    .line 74
    .local v4, "filteredZones":Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    invoke-virtual {v4}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v4}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getRegionId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v3
    .end local v4
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    return-object v1
.end method

.method public lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    .locals 2
    .param p1, "regionId"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    invoke-virtual {v1, p1}, Llibcore/util/CountryZonesFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object v1

    .line 84
    .local v1, "finder":Llibcore/util/CountryTimeZones;
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;-><init>(Llibcore/util/CountryTimeZones;)V

    :goto_1
    return-object v0
.end method
