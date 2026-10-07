.class Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;
.super Ljava/lang/Object;
.source "BaseTimeZoneInfoPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneInfoItem"
.end annotation


# instance fields
.field private final mItemId:J

.field private final mResources:Landroid/content/res/Resources;

.field private final mSearchKeys:[Ljava/lang/String;

.field private final mTimeFormat:Landroid/icu/text/DateFormat;

.field private final mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V
    .locals 3
    .param p1, "itemId"    # J
    .param p3, "timeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "timeFormat"    # Landroid/icu/text/DateFormat;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    .line 115
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 116
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    .line 117
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    .line 118
    invoke-static {p3}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .param p4, "x2"    # Landroid/content/res/Resources;
    .param p5, "x3"    # Landroid/icu/text/DateFormat;
    .param p6, "x4"    # Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$1;

    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;-><init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;

    .line 104
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object v0
.end method

.method private static createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "timeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_2
    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    return-wide v0
.end method

.method public getSearchKeys()[Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f121287

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 161
    invoke-virtual {v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 160
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1

    .line 157
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    .local v1, "gmtOffset":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, ""

    :goto_3
    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
