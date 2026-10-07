.class public Lcom/android/settings/wifi/WifiConfigInfo;
.super Landroid/app/Activity;
.source "WifiConfigInfo.java"


# instance fields
.field private mConfigList:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    const v0, 0x7f0d0235

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->setContentView(I)V

    .line 44
    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v1, "configList":Ljava/lang/StringBuffer;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 56
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .end local v0
    .end local v1
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    const v1, 0x7f12116e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    :goto_1
    return-void
.end method
