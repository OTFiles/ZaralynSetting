.class public Lcom/android/settings/datetime/timezone/FixedOffsetPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "FixedOffsetPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    const/4 v0, 0x0

    const v1, 0x7f1204cf

    const v2, 0x7f120c6d

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IIZZ)V

    .line 44
    return-void
.end method

.method private loadFixedOffsets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;->getLocale()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 63
    .local v0, "formatter":Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "timeZoneInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/datetime/timezone/TimeZoneInfo;>;"
    const-string v2, "Etc/UTC"

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/16 v2, 0xc

    .local v2, "hoursOffset":I
    :goto_0
    const/16 v3, -0xe

    if-lt v2, v3, :cond_1

    .line 66
    if-nez v2, :cond_0

    .line 68
    goto :goto_1

    .line 70
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Etc/GMT%+d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 73
    .end local v2
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .locals 1
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

    .line 53
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;->loadFixedOffsets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x54d

    return v0
.end method
