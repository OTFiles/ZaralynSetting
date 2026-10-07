.class public Lcom/android/settings/display/NightDisplayTimeFormatter;
.super Ljava/lang/Object;
.source "NightDisplayTimeFormatter.java"


# instance fields
.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    .line 35
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 36
    return-void
.end method

.method private getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/app/ColorDisplayController;

    .line 55
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    .line 56
    .local v0, "isActivated":Z
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    .line 57
    .local v1, "autoMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 59
    const v4, 0x7f120931

    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 59
    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 62
    :cond_0
    const v4, 0x7f12092d

    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 62
    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 66
    if-eqz v0, :cond_2

    .line 67
    const v2, 0x7f120933

    goto :goto_0

    .line 68
    :cond_2
    const v2, 0x7f12092f

    .line 66
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    const v2, 0x7f120932

    goto :goto_1

    .line 72
    :cond_4
    const v2, 0x7f12092e

    .line 70
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAutoModeTimeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/app/ColorDisplayController;

    .line 49
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120930

    goto :goto_0

    .line 50
    :cond_0
    const v0, 0x7f12092c

    .line 51
    .local v0, "summaryFormatResId":I
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 42
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
