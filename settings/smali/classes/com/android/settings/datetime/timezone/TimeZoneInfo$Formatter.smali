.class public Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/TimeZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mNow:Ljava/util/Date;

.field private final mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/util/Date;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "now"    # Ljava/util/Date;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    .line 147
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    .line 148
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    .line 149
    return-void
.end method


# virtual methods
.method public format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 8
    .param p1, "timeZone"    # Landroid/icu/util/TimeZone;

    .line 165
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 167
    .local v1, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 168
    .local v2, "javaTimeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    invoke-static {v3, v4, v2, v5}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    .local v3, "gmtOffset":Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    invoke-direct {v4, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;-><init>(Landroid/icu/util/TimeZone;)V

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v6, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    .line 172
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 171
    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->setGenericName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v6, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    .line 174
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 173
    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->setStandardName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    move-result-object v4

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v6, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    .line 176
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 175
    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->setDaylightName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    move-result-object v4

    .line 177
    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->setExemplarLocation(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v3}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->setGmtOffset(Ljava/lang/CharSequence;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->build()Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v4

    .line 170
    return-object v4
.end method

.method public format(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 2
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 157
    .local v0, "timeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v1

    return-object v1
.end method
