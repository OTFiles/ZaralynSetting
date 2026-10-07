.class public Lcom/android/settings/datetime/TimeFormatPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeFormatPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mDummyDate:Ljava/util/Calendar;

.field private final mIsFromSUW:Z

.field private final mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/datetime/UpdateTimeAndDateCallback;
    .param p3, "isFromSUW"    # Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean p3, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mIsFromSUW:Z

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    .line 53
    iput-object p2, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 54
    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static set24Hour(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is24Hour"    # Ljava/lang/Boolean;

    .line 119
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "24"

    goto :goto_0

    :cond_1
    const-string v0, "12"

    .line 121
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    return-void
.end method

.method static timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is24Hour"    # Ljava/lang/Boolean;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "timeChanged":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v1, 0x2

    .local v1, "timeFormatPreference":I
    goto :goto_0

    .line 111
    .end local v1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    .line 114
    .restart local v1
    :goto_0
    const-string v2, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method static update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is24Hour"    # Ljava/lang/Boolean;

    .line 100
    invoke-static {p0, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->set24Hour(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 101
    invoke-static {p0, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "24 hour"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 80
    instance-of v0, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const-string v0, "24 hour"

    .line 81
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 85
    .local v0, "is24Hour":Z
    iget-object v1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object v2, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 87
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mIsFromSUW:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    instance-of v0, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {v0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->isAutoTimeFormatSelection(Landroid/content/Context;)Z

    move-result v0

    .line 66
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->is24Hour()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "now":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    iget-object v4, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 75
    .local v1, "dummyDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
