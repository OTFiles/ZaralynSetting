.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 432
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .line 52
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .line 52
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "provisionApp":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 380
    return v2

    .line 382
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 383
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v3, "intent":Landroid/content/Intent;
    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 387
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 386
    move v2, v5

    goto :goto_0

    .line 387
    :cond_1
    nop

    .line 386
    :goto_0
    return v2
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 372
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0
.end method

.method private startTethering(I)V
    .locals 4
    .param p1, "choice"    # I

    .line 391
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 393
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 394
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 395
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 396
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 397
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 398
    return-void

    .line 402
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 403
    return-void
.end method

.method private updateBluetoothState()V
    .locals 7

    .line 349
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 350
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 354
    .local v1, "btState":I
    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 356
    :cond_1
    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 360
    .local v2, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v4, 0xc

    const/4 v5, 0x1

    if-ne v1, v4, :cond_3

    if-eqz v2, :cond_3

    .line 361
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 362
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 366
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 369
    .end local v2
    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "available":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "tethered":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    .line 308
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 312
    move-object/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 313
    .local v4, "usbAvailable":Z
    :goto_0
    const/4 v7, 0x0

    .line 314
    .local v7, "usbError":I
    array-length v8, v1

    move v9, v7

    const/4 v7, 0x0

    .end local v7
    .local v9, "usbError":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v10, v1, v7

    .line 315
    .local v10, "s":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v12, v11

    move v13, v9

    const/4 v9, 0x0

    .end local v9
    .local v13, "usbError":I
    :goto_2
    if-ge v9, v12, :cond_2

    aget-object v14, v11, v9

    .line 316
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 317
    if-nez v13, :cond_1

    .line 318
    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v13

    .line 315
    .end local v14
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 314
    .end local v10
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v9, v13

    goto :goto_1

    .line 323
    .end local v13
    .restart local v9
    :cond_3
    const/4 v7, 0x0

    .line 324
    .local v7, "usbTethered":Z
    array-length v8, v2

    move v10, v7

    const/4 v7, 0x0

    .end local v7
    .local v10, "usbTethered":Z
    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v11, v2, v7

    .line 325
    .local v11, "s":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    move v14, v10

    const/4 v10, 0x0

    .end local v10
    .local v14, "usbTethered":Z
    :goto_4
    if-ge v10, v13, :cond_5

    aget-object v15, v12, v10

    .line 326
    .local v15, "regex":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v14, 0x1

    .line 325
    .end local v15
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 324
    .end local v11
    :cond_5
    add-int/lit8 v7, v7, 0x1

    move v10, v14

    goto :goto_3

    .line 329
    .end local v14
    .restart local v10
    :cond_6
    const/4 v7, 0x0

    .line 330
    .local v7, "usbErrored":Z
    array-length v8, v3

    move v11, v7

    const/4 v7, 0x0

    .end local v7
    .local v11, "usbErrored":Z
    :goto_5
    if-ge v7, v8, :cond_9

    aget-object v12, v3, v7

    .line 331
    .local v12, "s":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v14, v13

    move v15, v11

    const/4 v11, 0x0

    .end local v11
    .local v15, "usbErrored":Z
    :goto_6
    if-ge v11, v14, :cond_8

    aget-object v5, v13, v11

    .line 332
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v15, 0x1

    .line 331
    .end local v5
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 330
    .end local v12
    :cond_8
    add-int/lit8 v7, v7, 0x1

    move v11, v15

    goto :goto_5

    .line 336
    .end local v15
    .restart local v11
    :cond_9
    if-eqz v10, :cond_a

    .line 337
    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v7, v0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 338
    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 339
    :cond_a
    if-eqz v4, :cond_b

    .line 340
    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v7, v0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 341
    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 343
    :cond_b
    const/4 v6, 0x0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 344
    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    :goto_7
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 429
    const v0, 0x7f1206da

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 89
    const/16 v0, 0x5a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onAttach(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 101
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f1500ad

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 109
    const v1, 0x7f120e7f

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 111
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 112
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 113
    const-string v0, "disabled_on_data_saver"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 119
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 123
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 124
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 129
    :cond_1
    const-string v3, "usb_tether_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    .line 130
    const-string v3, "enable_bluetooth_tethering"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 132
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v3, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 134
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 136
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v4

    .line 140
    .local v3, "usbAvailable":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v4

    .line 142
    .local v5, "bluetoothAvailable":Z
    :goto_1
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 146
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 148
    if-nez v5, :cond_6

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 151
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    .line 152
    .local v6, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 153
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    .end local v6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    .line 160
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 167
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    .line 168
    .local v1, "profile":Landroid/bluetooth/BluetoothProfile;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 169
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 173
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 407
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 415
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 420
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 424
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 247
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120e85

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 254
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 259
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 261
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 262
    new-instance v1, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    .line 267
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    .line 271
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    .line 277
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 283
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 287
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 295
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 185
    return-void
.end method
