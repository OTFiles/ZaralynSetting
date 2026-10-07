.class public Lcom/android/settings/wifi/WifiInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

.field private mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 64
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 82
    const-string v0, "current_ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 84
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->updateWifiInfo()V

    .line 90
    return-void
.end method

.method public updateWifiInfo()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120d95

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 100
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connected_mac_randomization_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 102
    .local v2, "macRandomizationMode":I
    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 106
    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const-string v4, "02:00:00:00:00:00"

    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const v5, 0x7f121175

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    .end local v0
    .end local v2
    .end local v3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "ipAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_4

    .line 116
    iget-object v3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 117
    :cond_4
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_2
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0
    :cond_5
    return-void
.end method
