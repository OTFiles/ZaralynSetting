.class Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;
.super Ljava/lang/Object;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZenModeConfigWrapper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method

.method private isToday(J)Z
    .locals 1
    .param p1, "time"    # J

    .line 187
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getFormattedTime(JI)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "time"    # J
    .param p3, "userHandle"    # I

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isToday(J)Z

    move-result v1

    invoke-static {v0, p1, p2, v1, p3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isTimeRule(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    .line 178
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 178
    :goto_1
    return v0
.end method

.method protected parseAutomaticRuleEndTime(Landroid/net/Uri;)J
    .locals 7
    .param p1, "id"    # Landroid/net/Uri;

    .line 195
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    .line 202
    .local v0, "schedule":Landroid/service/notification/ScheduleCalendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    .line 205
    .local v1, "endTimeMs":J
    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->access$000(Landroid/content/Context;)J

    move-result-wide v3

    .line 207
    .local v3, "nextAlarm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    return-wide v3

    .line 213
    .end local v3
    :cond_1
    return-wide v1

    .line 216
    .end local v0
    .end local v1
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected parseManualRuleTime(Landroid/net/Uri;)J
    .locals 2
    .param p1, "id"    # Landroid/net/Uri;

    .line 191
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
