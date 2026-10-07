.class public Lcom/android/settings/display/ColorPaperLikeModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorPaperLikeModePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

.field public mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

.field private mModeListen:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController$1;-><init>(Lcom/android/settings/display/ColorPaperLikeModePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mModeListen:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/settings/display/ColorPaperLikeModeFunc;

    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mModeListen:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;-><init>(Landroid/content/Context;Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mModeListen:Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->resetWarmModeListen(Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isSupportPaperLikeMode()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 61
    return-void
.end method

.method public static isPaperLikeModeStatus(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    .line 89
    .local v0, "cmgr":Lcom/qti/snapdragon/sdk/display/ColorManager;
    if-eqz v0, :cond_6

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "isSupport":Z
    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2

    move v1, v2

    .line 92
    if-nez v1, :cond_1

    .line 93
    const/4 v2, -0x1

    .line 102
    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 93
    :cond_0
    return v2

    .line 95
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 96
    const/4 v2, 0x1

    .line 102
    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x0

    .line 96
    :cond_2
    return v2

    .line 98
    :cond_3
    nop

    .line 102
    if-eqz v0, :cond_4

    .line 108
    const/4 v0, 0x0

    .line 98
    :cond_4
    return v2

    .line 102
    .end local v1
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 108
    const/4 v0, 0x0

    :cond_5
    throw v1

    .line 100
    :catch_0
    move-exception v1

    .line 102
    if-eqz v0, :cond_7

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 108
    :goto_0
    const/4 v0, 0x0

    .line 111
    :cond_7
    const/4 v1, -0x2

    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "color_paper_like_mode"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 128
    return-void

    .line 130
    :cond_0
    const-string v0, "color_paper_like_mode"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    .line 131
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->updateNowColorPaperLikeMode(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, "color_paper_like_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    .line 207
    .local v0, "iResult":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 209
    .local v1, "bOpend":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->resetNowColorPaperLikeMode(Landroid/content/Context;Z)Z

    move-result v2

    move v0, v2

    .line 210
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->updateNowColorPaperLikeMode(Landroid/content/Context;)V

    .line 213
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 214
    :goto_0
    return v0
.end method

.method public releaseMyself()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-virtual {v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->releaseMyself()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 71
    :cond_0
    return-void
.end method

.method public resetAndupdateNowColorPaperLikeMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->updateNowColorPaperLikeMode(Landroid/content/Context;)V

    .line 162
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    :goto_0
    return-void
.end method

.method public resetNowColorPaperLikeMode(Landroid/content/Context;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOpened"    # Z

    .line 172
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->isPaperLikeModeStatus(Landroid/content/Context;)I

    move-result v1

    .line 173
    .local v1, "isNowPaperLikeModeEnable":I
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "========divhee==================resetNowColorPaperLikeMode======isOpened="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-lez v1, :cond_4

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rb_qti_display_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, "colorTempStatus":I
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->setmode(I)V

    .line 182
    if-eqz p2, :cond_4

    .line 184
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 185
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v8

    .line 186
    .local v8, "mMinBrightness":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    .line 187
    .local v9, "mMaxBrightness":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v6

    .line 188
    .local v6, "mMinVrBrightness":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v7

    .line 189
    .local v7, "mMaxVrBrightness":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 191
    .local v5, "mContentResolver":Landroid/content/ContentResolver;
    const/16 v4, 0x2d

    invoke-static/range {v4 .. v9}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->nowSetCurrentBrightness(ILandroid/content/ContentResolver;IIII)Z

    .end local v2
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    goto :goto_3

    .line 177
    .restart local v2
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rb_qti_display_mode"

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rb_qti_display_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 196
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 197
    .end local v1
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    .end local v1
    return v0
.end method

.method public updateNowColorPaperLikeMode(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 139
    invoke-static {p1}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->isPaperLikeModeStatus(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, "isNowPaperLikeModeEnable":I
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeModeFunc:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-virtual {v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->isPaperLikeMode()Z

    move-result v1

    .line 142
    .local v1, "isPaperLikeMode":Z
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    .line 147
    .local v2, "nowDisplayChecked":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->mColorPaperLikeMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    :cond_2
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "========divhee==========updateNowColorPaperLikeMode=============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    :goto_1
    return-void
.end method
