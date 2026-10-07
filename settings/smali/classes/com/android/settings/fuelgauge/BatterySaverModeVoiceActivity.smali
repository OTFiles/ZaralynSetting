.class public Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    const-string v0, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "android.settings.extra.battery_saver_mode_enabled"

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "BatterySaverModeVoiceActivity"

    const-string v3, "Unable to set power mode"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifyFailure(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "BatterySaverModeVoiceActivity"

    const-string v2, "Missing battery saver mode extra"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return v1
.end method
