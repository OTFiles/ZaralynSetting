.class public Lcom/android/settings/AirplaneModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "AirplaneModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 35
    const-string v0, "airplane_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/AirplaneModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    const-string v1, "airplane_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 40
    .end local v0
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "AirplaneModeVoiceActivity"

    const-string v1, "Missing airplane mode extra"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
