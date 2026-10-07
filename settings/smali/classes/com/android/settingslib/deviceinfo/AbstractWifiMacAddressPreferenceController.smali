.class public abstract Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWifiMacAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"


# instance fields
.field private mWifiMacAddress:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    const-string v0, "wifi_mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->updateConnectivity()V

    .line 71
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "wifi_mac_address"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected updateConnectivity()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 82
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connected_mac_randomization_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, "macRandomizationMode":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    sget v4, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 88
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v3, "02:00:00:00:00:00"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    sget v4, Lcom/android/settingslib/R$string;->wifi_status_mac_randomized:I

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    return-void
.end method
