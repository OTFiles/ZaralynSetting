.class public final synthetic Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;

    invoke-direct {v0}, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llibcore/util/CountryTimeZones$TimeZoneMapping;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->lambda$new$1(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
