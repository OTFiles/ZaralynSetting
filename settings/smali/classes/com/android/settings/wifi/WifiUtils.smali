.class public Lcom/android/settings/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 109
    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 110
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0
.end method

.method public static isHotspotPasswordValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "password"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 59
    .local v0, "length":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return v0

    .line 73
    :cond_0
    const-string v1, "device_policy"

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 75
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 79
    .local v2, "pm":Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    const-string v3, "android.software.device_admin"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 80
    return v4

    .line 83
    :cond_1
    const/4 v3, 0x0

    .line 84
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    .line 86
    .local v5, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    .line 87
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v6

    .line 89
    .local v6, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 91
    .local v7, "deviceOwnerUid":I
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    move v3, v8

    .line 94
    .end local v7
    goto :goto_1

    .line 92
    :catch_0
    move-exception v7

    .line 97
    .end local v5
    .end local v6
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 98
    return v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 102
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v6, "wifi_device_owner_configs_lockdown"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    nop

    .line 104
    .local v0, "isLockdownFeatureEnabled":Z
    :cond_5
    return v0
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ssid"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isSSIDTooShort(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
