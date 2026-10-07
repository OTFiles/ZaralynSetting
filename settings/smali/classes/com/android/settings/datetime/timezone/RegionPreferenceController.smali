.class public Lcom/android/settings/datetime/timezone/RegionPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region"


# instance fields
.field private final mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

.field private mRegionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "region"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 33
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    .line 35
    return-void
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    .line 44
    return-void
.end method
