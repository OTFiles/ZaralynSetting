.class public Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "TimeZoneInfoPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "footer_preference"


# instance fields
.field mDate:Ljava/util/Date;

.field private final mDateFormat:Landroid/icu/text/DateFormat;

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/icu/text/DateFormat;->getDateInstance(I)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 46
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    .line 48
    return-void
.end method

.method private findNextDstTransition(Landroid/icu/util/TimeZone;)Landroid/icu/util/TimeZoneTransition;
    .locals 6
    .param p1, "timeZone"    # Landroid/icu/util/TimeZone;

    .line 117
    instance-of v0, p1, Landroid/icu/impl/OlsonTimeZone;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    .line 121
    .local v0, "olsonTimeZone":Landroid/icu/impl/OlsonTimeZone;
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    .line 122
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 124
    .local v1, "transition":Landroid/icu/util/TimeZoneTransition;
    :cond_1
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    nop

    .line 128
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    .line 127
    invoke-virtual {v0, v4, v5, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    :goto_0
    return-object v1
.end method

.method private formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "item"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "offsetAndName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 91
    .local v1, "timeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f121286

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 95
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->findNextDstTransition(Landroid/icu/util/TimeZone;)Landroid/icu/util/TimeZoneTransition;

    move-result-object v2

    .line 96
    .local v2, "nextDstTransition":Landroid/icu/util/TimeZoneTransition;
    if-nez v2, :cond_1

    .line 97
    const/4 v3, 0x0

    return-object v3

    .line 99
    :cond_1
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    .line 100
    .local v5, "toDst":Z
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "timeType":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    iget-object v7, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12128c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 106
    :cond_4
    iget-object v7, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12128d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v6, v7

    .line 109
    :cond_5
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v7

    .line 110
    .local v7, "transitionTime":Landroid/icu/util/Calendar;
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 111
    iget-object v8, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v8, v7}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "date":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f121285

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v3

    aput-object v6, v11, v4

    const/4 v3, 0x2

    aput-object v8, v11, v3

    invoke-static {v9, v10, v11}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v3

    return-object v3
.end method

.method private formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "item"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121287

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 82
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object v0
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V
    .locals 0
    .param p1, "timeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 63
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 64
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    .local v0, "formattedTimeZone":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    return-void
.end method
