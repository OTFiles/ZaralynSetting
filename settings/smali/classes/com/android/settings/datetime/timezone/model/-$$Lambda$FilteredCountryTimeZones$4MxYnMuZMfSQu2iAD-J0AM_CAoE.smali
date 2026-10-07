.class public final synthetic Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;

    invoke-direct {v0}, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Llibcore/util/CountryTimeZones$TimeZoneMapping;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->lambda$new$0(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Z

    move-result p1

    return p1
.end method
