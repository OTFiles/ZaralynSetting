.class public Lcom/android/settings/SettingsAdbUsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsAdbUsbReceiver.java"


# instance fields
.field private final DB_KEY_LAST_MSP_USB_CONNECTED_STATUS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-string v0, "last_msp_usb_connected_status"

    iput-object v0, p0, Lcom/android/settings/SettingsAdbUsbReceiver;->DB_KEY_LAST_MSP_USB_CONNECTED_STATUS:Ljava/lang/String;

    return-void
.end method

.method public static isSpecialReadboyHotspot(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countTimes"    # I

    .line 82
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 83
    return v2

    .line 85
    :cond_0
    new-instance v1, Lcom/android/settings/LunarCalendar;

    invoke-direct {v1}, Lcom/android/settings/LunarCalendar;-><init>()V

    .line 88
    .local v1, "lunarCalendar":Lcom/android/settings/LunarCalendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, -0x1

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "bluetoothName":Ljava/lang/String;
    const-string v5, "_adb_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 90
    .local v5, "iFindout":I
    if-eq v5, v3, :cond_2

    .line 91
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 92
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/SettingsApp;->isCheckComplexPwdCorrect(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    return v2

    .line 96
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/LunarCalendar;->getShortLunarNumbers()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    .line 98
    return v2

    .line 103
    .end local v4
    .end local v5
    :cond_2
    goto :goto_0

    .line 101
    :catch_0
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v4
    :goto_0
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 107
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 108
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 109
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v0

    .local v5, "inum":I
    :goto_1
    if-ge v5, p1, :cond_7

    .line 111
    const-wide/16 v6, 0x12c

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 113
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 112
    :catch_1
    move-exception v6

    .line 114
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 116
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 117
    .local v8, "wifi":Landroid/net/wifi/ScanResult;
    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_3
    const-string v9, ""

    .line 119
    .local v9, "ssidName":Ljava/lang/String;
    :goto_4
    const-string v10, "_adb_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 120
    .local v10, "iFindout":I
    if-eq v10, v3, :cond_5

    .line 121
    add-int/lit8 v11, v10, 0x5

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 122
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/settings/SettingsApp;->isCheckComplexPwdCorrect(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 124
    return v2

    .line 126
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/LunarCalendar;->getShortLunarNumbers()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v11, :cond_5

    .line 128
    return v2

    .line 131
    .end local v8
    .end local v9
    .end local v10
    :cond_5
    goto :goto_3

    .line 109
    .end local v6
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v1
    .end local v4
    .end local v5
    :cond_7
    goto :goto_5

    .line 136
    :catch_2
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===divhee=====================isSpecialReadboyHotspot=error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1
    :goto_5
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, "connected":Z
    const-string v3, "configured"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    .local v2, "configured":Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadIsFactoryFromFwqAboutPadSettings()V

    .line 56
    .end local v1
    .end local v2
    :cond_1
    :goto_0
    return-void
.end method
