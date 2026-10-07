.class public Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSecurityPreferenceController.java"


# instance fields
.field private final mSecurityEntries:[Ljava/lang/String;

.field private mSecurityValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method private getSummaryForSecurityType(I)Ljava/lang/String;
    .locals 2
    .param p1, "securityType"    # I

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "wifi_tether_security"

    return-object v0
.end method

.method public getSecurityType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 46
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 47
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 32
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 40
    .local v1, "preference":Landroid/support/v7/preference/ListPreference;
    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 42
    return-void
.end method
