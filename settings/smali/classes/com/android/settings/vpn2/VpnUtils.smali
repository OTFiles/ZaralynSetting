.class public Lcom/android/settings/vpn2/VpnUtils;
.super Ljava/lang/Object;
.source "VpnUtils.java"


# direct methods
.method public static clearLockdownVpn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 48
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 49
    return-void
.end method

.method public static disconnectLegacyVpn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 98
    .local v0, "userId":I
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 99
    .local v1, "connectivityService":Landroid/net/IConnectivityManager;
    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 100
    .local v2, "currentLegacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 102
    const/4 v3, 0x0

    const-string v4, "[Legacy VPN]"

    invoke-interface {v1, v3, v4, v0}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 103
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    return v3

    .line 107
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VpnUtils"

    const-string v2, "Legacy VPN could not be disconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getConnectedPackage(Landroid/net/IConnectivityManager;I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # Landroid/net/IConnectivityManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 79
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getIConnectivityManager()Landroid/net/IConnectivityManager;
    .locals 1

    .line 87
    const-string v0, "connectivity"

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getLockdownVpn()Ljava/lang/String;
    .locals 2

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "value":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1
.end method

.method public static isAlwaysOnVpnSet(Landroid/net/ConnectivityManager;I)Z
    .locals 1
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "userId"    # I

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnyLockdownActive(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 64
    .local v0, "userId":I
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 65
    return v2

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "always_on_vpn_lockdown"

    invoke-static {v1, v4, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static isVpnActive(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVpnLockdown(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockdownKey"    # Ljava/lang/String;

    .line 52
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 55
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 56
    return-void
.end method
