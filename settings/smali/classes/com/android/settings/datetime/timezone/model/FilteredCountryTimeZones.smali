.class public Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field private final mCountryTimeZones:Llibcore/util/CountryTimeZones;

.field private final mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llibcore/util/CountryTimeZones;)V
    .locals 2
    .param p1, "countryTimeZones"    # Llibcore/util/CountryTimeZones;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/util/CountryTimeZones;

    .line 39
    invoke-virtual {p1}, Llibcore/util/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;

    .line 43
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 44
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 45
    .local v0, "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic lambda$new$0(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Z
    .locals 4
    .param p0, "timeZoneMapping"    # Llibcore/util/CountryTimeZones$TimeZoneMapping;

    .line 41
    iget-boolean v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->showInPicker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x160af049000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method

.method static synthetic lambda$new$1(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .locals 1
    .param p0, "timeZoneMapping"    # Llibcore/util/CountryTimeZones$TimeZoneMapping;

    .line 43
    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/util/CountryTimeZones;

    invoke-virtual {v0}, Llibcore/util/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-object v0
.end method
