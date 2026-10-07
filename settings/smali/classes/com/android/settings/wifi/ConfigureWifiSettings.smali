.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 77
    new-instance v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 79
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 80
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Lcom/android/settings/wifi/CellularFallbackPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v1
.end method

.method public getInitialExpandedChildCount()I
    .locals 2

    .line 61
    const/4 v0, 0x2

    .line 62
    .local v0, "tileLimit":I
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_0
    const v1, 0x7fffffff

    return v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x152

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 71
    const v0, 0x7f1500c6

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 92
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->onActivityResult(II)V

    .line 94
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->onActivityResult(II)Z

    .line 99
    return-void

    .line 101
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    return-void
.end method
