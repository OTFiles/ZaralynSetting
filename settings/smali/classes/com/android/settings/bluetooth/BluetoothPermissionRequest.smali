.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 59
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 11

    .line 219
    const/4 v0, 0x0

    .line 222
    .local v0, "processed":Z
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v1, v2, :cond_0

    .line 226
    return v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 230
    .local v1, "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    nop

    .line 231
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    .line 232
    .local v5, "cachedDeviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    .line 233
    .local v6, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v6, :cond_1

    .line 234
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    .line 235
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 234
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    .line 238
    :cond_1
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 240
    .local v7, "intentName":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v4, :cond_5

    .line 241
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v2

    .line 243
    .local v2, "phonebookPermission":I
    if-nez v2, :cond_2

    .end local v2
    goto :goto_0

    .line 245
    .restart local v2
    :cond_2
    if-ne v2, v10, :cond_3

    .line 246
    invoke-direct {p0, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    if-ne v2, v4, :cond_4

    .line 249
    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_4
    const-string v3, "BluetoothPermissionRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad phonebookPermission: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v2
    :goto_0
    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v8, v3, :cond_9

    .line 255
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    .line 257
    .local v2, "messagePermission":I
    if-nez v2, :cond_6

    .end local v2
    goto :goto_1

    .line 259
    .restart local v2
    :cond_6
    if-ne v2, v10, :cond_7

    .line 260
    invoke-direct {p0, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 261
    const/4 v0, 0x1

    goto :goto_1

    .line 262
    :cond_7
    if-ne v2, v4, :cond_8

    .line 263
    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 264
    const/4 v0, 0x1

    goto :goto_1

    .line 266
    :cond_8
    const-string v3, "BluetoothPermissionRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad messagePermission: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v2
    :goto_1
    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v3, v2, :cond_d

    .line 269
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v2

    .line 271
    .local v2, "simPermission":I
    if-nez v2, :cond_a

    .end local v2
    goto :goto_2

    .line 273
    .restart local v2
    :cond_a
    if-ne v2, v10, :cond_b

    .line 274
    invoke-direct {p0, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 275
    const/4 v0, 0x1

    goto :goto_2

    .line 276
    :cond_b
    if-ne v2, v4, :cond_c

    .line 277
    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 278
    const/4 v0, 0x1

    goto :goto_2

    .line 280
    :cond_c
    const-string v3, "BluetoothPermissionRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad simPermission: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v2
    :cond_d
    :goto_2
    return v0
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .line 203
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 204
    const-string v0, "Phonebook Access"

    return-object v0

    .line 205
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 206
    const-string v0, "Message Access"

    return-object v0

    .line 207
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 208
    const-string v0, "SIM Access"

    return-object v0

    .line 210
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_0
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 295
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    const/4 v2, 0x2

    .line 294
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_6

    .line 70
    const-string v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 72
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    const-string v7, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 80
    const-string v7, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 81
    const-string v7, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v7, "connectionAccessIntent":Landroid/content/Intent;
    const-class v9, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/high16 v9, 0x18000000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget v9, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v10, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string v9, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v10, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v9, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v10, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v9, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v10

    .line 117
    .local v9, "deviceAddress":Ljava/lang/String;
    :goto_0
    iget-object v11, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v11, :cond_3

    iget-object v10, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    .line 118
    .local v10, "deviceName":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    .line 119
    .local v11, "title":Ljava/lang/String;
    const/4 v12, 0x0

    .line 120
    .local v12, "message":Ljava/lang/String;
    const-string v13, "power"

    .line 121
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 123
    .local v13, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v13}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 124
    invoke-static {v1, v9, v10}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 126
    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 133
    :cond_4
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v14, "deleteIntent":Landroid/content/Intent;
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string v5, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v15, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v14, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v5, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v5}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "deviceAlias":Ljava/lang/String;
    iget v15, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v8, 0x0

    packed-switch v15, :pswitch_data_0

    .line 156
    move/from16 v17, v8

    const/16 v16, 0x1

    const v8, 0x7f120274

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 157
    const v8, 0x7f120272

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v5, v15, v17

    aput-object v5, v15, v16

    invoke-virtual {v1, v8, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .end local v12
    .local v8, "message":Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v8
    .restart local v12
    :pswitch_0    # 0x4
    const v15, 0x7f12030f

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    new-array v15, v6, [Ljava/lang/Object;

    aput-object v5, v15, v8

    const/16 v16, 0x1

    aput-object v5, v15, v16

    const v8, 0x7f12030c

    invoke-virtual {v1, v8, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .end local v12
    .restart local v8
    goto :goto_1

    .line 146
    .end local v8
    .restart local v12
    :pswitch_1    # 0x3
    const/16 v16, 0x1

    const v8, 0x7f1202bf

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 147
    const v8, 0x7f1202bc

    new-array v15, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v5, v15, v17

    aput-object v5, v15, v16

    invoke-virtual {v1, v8, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .end local v12
    .restart local v8
    goto :goto_1

    .line 141
    .end local v8
    .restart local v12
    :pswitch_2    # 0x2
    move/from16 v17, v8

    const/16 v16, 0x1

    const v8, 0x7f1202e9

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    const v8, 0x7f1202e7

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v5, v15, v17

    aput-object v5, v15, v16

    invoke-virtual {v1, v8, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .end local v12
    .restart local v8
    nop

    .line 161
    :goto_1
    const-string v12, "notification"

    .line 162
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 163
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    iget-object v15, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v15, :cond_5

    .line 164
    new-instance v15, Landroid/app/NotificationChannel;

    const-string v6, "bluetooth_notification_channel"

    move-object/from16 v18, v4

    const v4, 0x7f12024d

    .line 165
    .end local v4
    .local v18, "um":Landroid/os/UserManager;
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    const/4 v5, 0x4

    .end local v5
    .local v19, "deviceAlias":Ljava/lang/String;
    invoke-direct {v15, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v15, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 167
    iget-object v4, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v12, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_2

    .line 169
    .end local v18
    .end local v19
    .restart local v4
    .restart local v5
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4
    .end local v5
    .restart local v18
    .restart local v19
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "bluetooth_notification_channel"

    invoke-direct {v4, v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 173
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 174
    const v5, 0x1080080

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 175
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 176
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 177
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v6, -0x1

    .line 178
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 179
    invoke-static {v1, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 181
    invoke-static {v1, v5, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106015b

    .line 182
    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 184
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 187
    .local v4, "notification":Landroid/app/Notification;
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 189
    iget v5, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {v0, v5}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x1080080

    invoke-virtual {v12, v5, v6, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 192
    .end local v4
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v18
    .end local v19
    :goto_3
    goto :goto_4

    :cond_6
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 194
    const-string v4, "notification"

    .line 195
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 196
    .local v4, "manager":Landroid/app/NotificationManager;
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 198
    iget v5, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {v0, v5}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x1080080

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 200
    .end local v4
    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method
