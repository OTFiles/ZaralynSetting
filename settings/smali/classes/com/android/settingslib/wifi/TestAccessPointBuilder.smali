.class public Lcom/android/settingslib/wifi/TestAccessPointBuilder;
.super Ljava/lang/Object;
.source "TestAccessPointBuilder.java"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field private mIsCarrierAp:Z

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private mScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScoredNetworkCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurity:I

.field private mSpeed:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    .line 49
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 51
    const-string v2, "TestSsid"

    iput-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 53
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 58
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    .line 59
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 75
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 76
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 78
    const-string v2, "key_ssid"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "key_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v2, "key_networkinfo"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string v2, "key_wifiinfo"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "key_fqdn"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "key_provider_friendly_name"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 89
    const-string v2, "key_scanresults"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 93
    const-string v2, "key_scorednetworkcache"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    :cond_3
    const-string v2, "key_security"

    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v2, "key_speed"

    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "key_is_carrier_ap"

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 99
    const-string v2, "key_carrier_name"

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    new-instance v2, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 103
    .local v2, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    .line 104
    return-object v2
.end method

.method public setActive(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .param p1, "active"    # Z

    .line 109
    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "TestNetwork"

    const-string v2, "TestNetwork"

    const/16 v3, 0x8

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 118
    :goto_0
    return-object p0
.end method

.method public setFqdn(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setLevel(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .param p1, "level"    # I

    .line 130
    if-nez p1, :cond_0

    .line 131
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 133
    const/16 v0, -0x37

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    .line 135
    :cond_1
    const/high16 v0, 0x42340000

    .line 136
    .local v0, "inputRange":F
    const/high16 v1, 0x40400000

    .line 137
    .local v1, "outputRange":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    const/high16 v3, -0x3d380000    # -100.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 139
    .end local v0
    .end local v1
    :goto_0
    return-object p0
.end method

.method public setNetworkId(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "networkId"    # I

    .line 225
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 226
    return-object p0
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 144
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 145
    return-object p0
.end method

.method public setProviderFriendlyName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "friendlyName"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setReachable(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 2
    .param p1, "reachable"    # Z

    .line 166
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 168
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    if-ne v1, v0, :cond_1

    .line 169
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    .line 172
    :cond_0
    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 174
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setRssi(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "rssi"    # I

    .line 150
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 151
    return-object p0
.end method

.method public setSaved(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 1
    .param p1, "saved"    # Z

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    goto :goto_0

    .line 182
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 184
    :goto_0
    return-object p0
.end method

.method public setSecurity(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "security"    # I

    .line 189
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 190
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "newSsid"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .line 213
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 214
    return-object p0
.end method
