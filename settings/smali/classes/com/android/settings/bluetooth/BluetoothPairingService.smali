.class public final Lcom/android/settings/bluetooth/BluetoothPairingService;
.super Landroid/app/Service;
.source "BluetoothPairingService.java"


# instance fields
.field private final mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 75
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothPairingService;

    .line 40
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 55
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 56
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "type":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v3, "pairingIntent":Landroid/content/Intent;
    const-class v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 65
    :cond_0
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, "pairingKey":I
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .end local v2
    :cond_1
    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 102
    const-string v0, "notification"

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 104
    .local v0, "mgr":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "bluetooth_notification_channel"

    .line 106
    const v3, 0x7f12024d

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 108
    .local v1, "notificationChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 181
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopForeground(Z)V

    .line 182
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    move-object v1, p0

    move-object/from16 v2, p1

    .line 114
    const/4 v0, 0x2

    if-nez v2, :cond_0

    .line 115
    :try_start_0
    const-string v3, "BluetoothPairingService"

    const-string v4, "Can\'t start: null intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    .line 117
    return v0

    .line 170
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "bluetooth_notification_channel"

    invoke-direct {v4, v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const v5, 0x1080080

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x7f1202c7

    .line 124
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 125
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 127
    .local v4, "builder":Landroid/app/Notification$Builder;
    nop

    .line 128
    invoke-static/range {p0 .. p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    .line 127
    const/high16 v8, 0x40000000

    const/4 v9, 0x0

    invoke-static {v1, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 130
    .local v7, "pairIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v9, v10, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 133
    .local v8, "dismissIntent":Landroid/app/PendingIntent;
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    iput-object v10, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 135
    iget-object v10, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xb

    if-eq v10, v11, :cond_1

    .line 136
    const-string v5, "BluetoothPairingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not bonding: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    .line 138
    return v0

    .line 141
    :cond_1
    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 143
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 144
    .local v10, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_2
    const v11, 0x104000e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object v0, v11

    .line 147
    .end local v10
    :cond_3
    const-string v10, "BluetoothPairingService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show pairing notification for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v10, Landroid/app/Notification$Action$Builder;

    const v11, 0x7f120280

    .line 150
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v10

    .line 151
    .local v10, "pairAction":Landroid/app/Notification$Action;
    new-instance v11, Landroid/app/Notification$Action$Builder;

    const/high16 v12, 0x1040000

    .line 152
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v9, v12, v8}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v11

    .line 154
    .local v11, "dismissAction":Landroid/app/Notification$Action;
    const v12, 0x7f1202c8

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const v13, 0x7f1202c6

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v0, v14, v9

    .line 155
    invoke-virtual {v3, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 156
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 157
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const v12, 0x106015b

    .line 158
    invoke-virtual {v1, v12}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 159
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 160
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 162
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v12, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v12, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v12, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v12, v9}, Lcom/android/settings/bluetooth/BluetoothPairingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iput-boolean v6, v1, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 169
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingService;->startForeground(ILandroid/app/Notification;)V

    .line 171
    .end local v0
    .end local v3
    .end local v4
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 170
    :goto_1
    nop

    .line 172
    :goto_2
    const/4 v0, 0x3

    return v0
.end method
