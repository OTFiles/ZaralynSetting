.class final Lcom/android/settings/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# direct methods
.method static getDiscoverableEndTimestamp(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "discoverable_end_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "bluetooth_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static persistDiscoverableEndTimestamp(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endTimestamp"    # J

    .line 144
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method static persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v1, "last_selected_device_time"

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    move-object/from16 v0, p1

    .line 63
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 64
    .local v1, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 65
    const-string v3, "LocalBluetoothPreferences"

    const-string v4, "manager == null - do not show dialog."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v2

    .line 70
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 71
    return v4

    .line 75
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x5

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_2

    .line 77
    const-string v3, "LocalBluetoothPreferences"

    const-string v4, "in appliance mode - do not show dialog."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v2

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 82
    .local v5, "currentTimeMillis":J
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 85
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "discoverable_end_timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 87
    .local v10, "lastDiscoverableEndTime":J
    const-wide/32 v12, 0xea60

    add-long v14, v10, v12

    cmp-long v7, v14, v5

    if-lez v7, :cond_3

    .line 89
    return v4

    .line 93
    :cond_3
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    .line 94
    .local v7, "adapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v7, :cond_5

    .line 95
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 96
    return v4

    .line 98
    :cond_4
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getDiscoveryEndMillis()J

    move-result-wide v14

    add-long/2addr v14, v12

    cmp-long v14, v14, v5

    if-lez v14, :cond_5

    .line 100
    return v4

    .line 105
    :cond_5
    if-eqz v0, :cond_6

    .line 106
    const-string v14, "last_selected_device"

    const/4 v15, 0x0

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "lastSelectedDevice":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 110
    const-string v15, "last_selected_device_time"

    invoke-interface {v3, v15, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 112
    .local v8, "lastDeviceSelectedTime":J
    add-long/2addr v12, v8

    cmp-long v12, v12, v5

    if-lez v12, :cond_6

    .line 114
    return v4

    .line 120
    .end local v8
    .end local v14
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 122
    const v8, 0x104015e

    move-object/from16 v9, p0

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "packagedKeyboardName":Ljava/lang/String;
    move-object/from16 v12, p2

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 125
    const-string v2, "LocalBluetoothPreferences"

    const-string v13, "showing dialog for packaged keyboard"

    invoke-static {v2, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v4

    .line 130
    .end local v8
    :cond_7
    move-object/from16 v9, p0

    move-object/from16 v12, p2

    :cond_8
    const-string v4, "LocalBluetoothPreferences"

    const-string v8, "Found no reason to show the dialog - do not show dialog."

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v2
.end method
