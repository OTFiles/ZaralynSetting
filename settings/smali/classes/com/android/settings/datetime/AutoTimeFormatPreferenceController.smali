.class public Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimeFormatPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->isAutoTimeFormatSelection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 43
    :cond_0
    return-void
.end method

.method static isAutoTimeFormatSelection(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "auto_24hour"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 65
    instance-of v0, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    const-string v0, "auto_24hour"

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 71
    .local v0, "auto24HourEnabled":Z
    if-eqz v0, :cond_1

    .line 72
    const/4 v1, 0x0

    .local v1, "is24Hour":Ljava/lang/Boolean;
    goto :goto_0

    .line 74
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 76
    .restart local v1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 77
    const/4 v2, 0x1

    return v2

    .line 67
    .end local v0
    .end local v1
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method is24HourLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 81
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->isAutoTimeFormatSelection(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 57
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->isAutoTimeFormatSelection(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 61
    return-void
.end method
