.class public Lcom/android/settings/wifi/CellularFallbackPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CellularFallbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    .line 84
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "wifi_cellular_data_fallback"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 54
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_cellular_data_fallback"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 58
    return v1

    .line 61
    :cond_1
    const-string v0, "network_avoid_bad_wifi"

    .line 62
    .local v0, "settingName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    move-object v2, p1

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiConfig()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiCurrentSettings()Z

    move-result v0

    .line 72
    .local v0, "currentSetting":Z
    if-eqz p1, :cond_0

    .line 73
    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 74
    .local v1, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    .end local v1
    :cond_0
    return-void
.end method
