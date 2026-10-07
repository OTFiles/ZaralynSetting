.class public Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApBandPreferenceController.java"


# instance fields
.field private isDualMode:Z

.field private mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private mBandSummaries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isDualMode:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries()V

    .line 44
    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private validateSelection(I)I
    .locals 4
    .param p1, "band"    # I

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result v0

    .line 110
    .local v0, "isDualMode":Z
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, p1, :cond_0

    .line 111
    return v2

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v2, p1, :cond_1

    .line 113
    const/4 v1, 0x0

    return v1

    .line 114
    :cond_1
    if-eqz v0, :cond_2

    if-ne v2, p1, :cond_2

    .line 115
    return v1

    .line 118
    :cond_2
    return p1
.end method


# virtual methods
.method public getBandIndex()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    return v0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "wifi_tether_network_ap_band"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 95
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 96
    const-string v0, "WifiTetherApBandPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band preference changed, updating band index to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 49
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 50
    .local v1, "tempBandIndex":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 51
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 52
    const-string v3, "WifiTetherApBandPref"

    const-string v4, "Updating band index to 0 because no config"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 55
    const-string v3, "WifiTetherApBandPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating band index to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 58
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 59
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 60
    const-string v3, "WifiTetherApBandPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "5Ghz not supported, updating band index to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    .line 64
    .local v3, "preference":Landroid/support/v7/preference/ListPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 67
    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 68
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 73
    const v2, 0x7f12105f

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .line 75
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 76
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void
.end method

.method updatePreferenceEntries()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f030088

    .line 125
    .local v1, "entriesRes":I
    const v2, 0x7f03008b

    .line 127
    .local v2, "summariesRes":I
    iget-boolean v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isDualMode:Z

    if-eqz v3, :cond_0

    .line 128
    const v1, 0x7f030089

    .line 129
    const v2, 0x7f03008a

    .line 131
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    .line 133
    return-void
.end method
