.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method

.method private getChangeSummary(II)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "mode"    # I
    .param p2, "minutes"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 89
    move/from16 v2, p2

    const/4 v3, -0x1

    .line 90
    .local v3, "indefinite":I
    const/4 v4, -0x1

    .line 91
    .local v4, "byMinute":I
    const/4 v5, -0x1

    .line 92
    .local v5, "byHour":I
    const/4 v6, -0x1

    .line 94
    .local v6, "byTime":I
    if-eqz v1, :cond_1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const v3, 0x7f121258

    .line 97
    const v4, 0x7f100048

    .line 98
    const v5, 0x7f100047

    .line 99
    const v6, 0x7f121257

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    const v3, 0x7f121259

    .line 106
    :goto_0
    if-ltz v2, :cond_6

    if-nez v1, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const v9, 0xea60

    mul-int/2addr v9, v2

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 111
    .local v7, "time":J
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Hm"

    goto :goto_1

    :cond_3
    const-string v9, "hma"

    .line 112
    .local v9, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "pattern":Ljava/lang/String;
    invoke-static {v10, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    .line 114
    .local v11, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 116
    .local v12, "res":Landroid/content/res/Resources;
    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v14, 0x3c

    if-ge v2, v14, :cond_4

    .line 117
    new-array v13, v13, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v12, v4, v2, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 118
    :cond_4
    const/4 v14, 0x1

    rem-int/lit8 v16, v2, 0x3c

    if-eqz v16, :cond_5

    .line 119
    new-array v13, v14, [Ljava/lang/Object;

    aput-object v11, v13, v15

    invoke-virtual {v12, v6, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 121
    :cond_5
    div-int/lit8 v14, v2, 0x3c

    .line 122
    .local v14, "hours":I
    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    aput-object v11, v13, v15

    invoke-virtual {v12, v5, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 107
    .end local v7
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v14
    :cond_6
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private setZenModeConfig(ILandroid/service/notification/Condition;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string v2, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 50
    const-string v0, "android.settings.extra.do_not_disturb_mode_minutes"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "minutes":I
    const/4 v2, 0x0

    .line 52
    .local v2, "condition":Landroid/service/notification/Condition;
    const/4 v3, 0x0

    .line 54
    .local v3, "mode":I
    const-string v4, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    if-lez v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p0, v0, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    .line 58
    :cond_0
    const/4 v3, 0x3

    .line 60
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/android/settings/notification/ZenModeVoiceActivity;->setZenModeConfig(ILandroid/service/notification/Condition;)V

    .line 62
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 63
    .local v4, "audioManager":Landroid/media/AudioManager;
    if-eqz v4, :cond_2

    .line 65
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 69
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getChangeSummary(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    goto :goto_0

    .line 71
    :cond_3
    const-string v0, "ZenModeVoiceActivity"

    const-string v2, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->finish()V

    .line 74
    :goto_0
    return v1
.end method
