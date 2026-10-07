.class public Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "wifiTetherSoftApCallback"    # Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    .line 9
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    return-object v0
.end method


# virtual methods
.method public registerSoftApCallback()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    .line 46
    return-void
.end method

.method public unRegisterSoftApCallback()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 50
    return-void
.end method
