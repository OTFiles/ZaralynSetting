.class public Lcom/android/settings/dashboard/conditional/HotspotCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "HotspotCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;
    }
.end annotation


# static fields
.field private static final WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 47
    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    .line 48
    return-void
.end method

.method private getSsid()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 73
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10406ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    const-string v1, "no_config_tethering"

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    new-array v1, v2, [Ljava/lang/CharSequence;

    return-object v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v3, 0x7f1203d7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 132
    const/16 v0, 0x17e

    return v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->getSsid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1203d2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .line 113
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    const-string v1, "no_config_tethering"

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 115
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 117
    .local v1, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_0

    .line 118
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 120
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 122
    .local v2, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->setActive(Z)V

    .line 125
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    nop

    .line 128
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrimaryClick()V
    .locals 2

    .line 103
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/TetherSettings;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 105
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 106
    const v1, 0x7f120e7a

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 107
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 109
    return-void
.end method

.method public refreshState()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    .line 53
    .local v0, "wifiTetherEnabled":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->setActive(Z)V

    .line 54
    return-void
.end method
