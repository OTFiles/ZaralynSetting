.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .line 44
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .line 44
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .line 44
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void
.end method

.method private cancelAndFinish()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 282
    return-void
.end method

.method private createDialog()V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 155
    return-void

    .line 158
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 162
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    packed-switch v1, :pswitch_data_0

    .line 169
    const v1, 0x7f120332

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 165
    :pswitch_0    # 0x2 0x1
    const v1, 0x7f120333

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    nop

    .line 172
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 176
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 178
    const v1, 0x7f12025d

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 179
    :cond_2
    const v1, 0x7f12025e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "message":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    .end local v1
    goto :goto_3

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 183
    const v1, 0x7f120255

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 184
    :cond_4
    const v1, 0x7f120256

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    .end local v1
    :goto_3
    const v1, 0x7f1200da

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v1, 0x7f120503

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    :goto_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private parseIntent()Z
    .locals 9

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 291
    return v1

    .line 293
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 294
    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    .line 299
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v4, 0x78

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 302
    const-string v2, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lt v2, v1, :cond_3

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v2, v5, :cond_4

    .line 305
    :cond_3
    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 315
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 316
    .local v2, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_5

    .line 317
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 319
    return v1

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 330
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 335
    .end local v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 331
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "RequestPermissionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find app with package name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 334
    return v1

    .line 338
    .end local v5
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 340
    return v3

    .line 308
    .end local v2
    .end local v4
    :cond_8
    const-string v2, "RequestPermissionActivity"

    const-string v4, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 312
    return v1
.end method

.method private proceedAndFinish()V
    .locals 8

    .line 250
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 257
    .local v2, "endTime":J
    invoke-static {p0, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 259
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v0, :cond_1

    .line 260
    invoke-static {p0, v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 262
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 264
    .local v0, "returnCode":I
    if-ge v0, v1, :cond_2

    .line 265
    const/4 v0, 0x1

    .line 267
    .end local v2
    :cond_2
    goto :goto_1

    .line 268
    .end local v0
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 252
    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 268
    .restart local v0
    :goto_1
    nop

    .line 271
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    .line 272
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 277
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 197
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    .line 199
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    packed-switch v0, :pswitch_data_0

    .line 229
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    .line 217
    :pswitch_0    # 0x3
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 226
    goto :goto_0

    .line 205
    :pswitch_1    # 0x2 0x1
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 214
    nop

    .line 232
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 356
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 235
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0    # -0x1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    .line 238
    goto :goto_0

    .line 241
    :pswitch_1    # -0x2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 245
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1    # -0x2
        :pswitch_0    # -0x1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 80
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    .line 85
    .local v1, "btState":I
    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 86
    packed-switch v1, :pswitch_data_0

    .line 103
    const-string v0, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adapter state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    .line 105
    goto :goto_0

    .line 94
    :pswitch_0    # 0xc 0xb
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.bluetooth.extra.APP_LABEL"

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 96
    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    .end local v2
    goto :goto_0

    .line 89
    :pswitch_1    # 0xd 0xa
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    .line 90
    goto :goto_0

    .line 108
    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 145
    const-string v0, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adapter state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    .line 135
    :pswitch_2    # 0xc
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 142
    goto :goto_0

    .line 125
    :pswitch_3    # 0xb 0xd 0xa
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v2
    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "com.android.settings.bluetooth.extra.APP_LABEL"

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 128
    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 129
    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    .end local v2
    nop

    .line 150
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1    # 0xa
        :pswitch_0    # 0xb
        :pswitch_0    # 0xc
        :pswitch_1    # 0xd
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3    # 0xa
        :pswitch_3    # 0xb
        :pswitch_2    # 0xc
        :pswitch_3    # 0xd
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    :cond_0
    return-void
.end method
