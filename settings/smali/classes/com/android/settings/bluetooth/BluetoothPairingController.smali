.class public Lcom/android/settings/bluetooth/BluetoothPairingController;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mPasskey:I

.field private mPasskeyFormatted:Ljava/lang/String;

.field private mPbapAllowed:Z

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field mType:I

.field private mUserInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 77
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 79
    const-string v0, ""

    .line 80
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    .line 87
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 90
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->formatKey(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    .line 91
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find BluetoothDevice"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not obtain LocalBluetoothManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private formatKey(I)Ljava/lang/String;
    .locals 5
    .param p1, "passkey"    # I

    .line 371
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 377
    :pswitch_0    # 0x5
    const-string v0, "%04d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    :pswitch_1    # 0x4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%06d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 2
    .param p1, "passkey"    # Ljava/lang/String;

    .line 391
    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 422
    const-string v0, "BTPairingController"

    const-string v1, "Incorrect pairing type received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    :pswitch_0    # 0x6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    .line 419
    goto :goto_0

    .line 415
    :pswitch_1    # 0x5 0x4
    goto :goto_0

    .line 409
    :pswitch_2    # 0x3 0x2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 410
    goto :goto_0

    .line 403
    :pswitch_3    # 0x1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "pass":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    .line 405
    goto :goto_0

    .line 395
    .end local v0
    :pswitch_4    # 0x7 0x0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 396
    .local v0, "pinBytes":[B
    if-nez v0, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 400
    nop

    .line 424
    .end local v0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4    # 0x0
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_2    # 0x3
        :pswitch_1    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
        :pswitch_4    # 0x7
    .end packed-switch
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 442
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContactSharingState()Z
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x408

    if-ne v0, v3, :cond_0

    .line 181
    return v2

    .line 177
    :pswitch_0    # 0x2
    return v1

    .line 175
    :pswitch_1    # 0x1
    return v2

    .line 183
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public getDeviceMaxPasskeyLength()I
    .locals 2

    .line 260
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 266
    :pswitch_0    # 0x1
    const/4 v0, 0x6

    return v0

    .line 263
    :cond_0
    :pswitch_1    # 0x0
    const/16 v0, 0x10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVariantMessageHintId()I
    .locals 2

    .line 241
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 250
    const/4 v0, -0x1

    return v0

    .line 247
    :pswitch_0    # 0x1 0x0
    const v0, 0x7f1202ea

    return v0

    .line 243
    :cond_0
    const v0, 0x7f1202eb

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public getDeviceVariantMessageId()I
    .locals 2

    .line 221
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 230
    const/4 v0, -0x1

    return v0

    .line 227
    :pswitch_0    # 0x1
    const v0, 0x7f1202a7

    return v0

    .line 224
    :cond_0
    :pswitch_1    # 0x0
    const v0, 0x7f1202a8

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public getDialogType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 145
    const/4 v0, -0x1

    return v0

    .line 142
    :pswitch_0    # 0x5 0x4
    const/4 v0, 0x2

    return v0

    .line 138
    :pswitch_1    # 0x3 0x6 0x2
    const/4 v0, 0x1

    return v0

    .line 133
    :pswitch_2    # 0x1 0x7 0x0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_1    # 0x6
        :pswitch_2    # 0x7
    .end packed-switch
.end method

.method public getPairingContent()Ljava/lang/String;
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPairingContent()Z
    .locals 2

    .line 327
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 334
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_0
    :pswitch_0    # 0x5 0x4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method public isDisplayPairingKeyVariant()Z
    .locals 1

    .line 310
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 314
    :pswitch_0    # 0x5 0x6 0x4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public isPasskeyValid(Landroid/text/Editable;)Z
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .line 210
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 211
    .local v0, "requires16Digits":Z
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyDialogDisplayed()V
    .locals 2

    .line 295
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 297
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 299
    .local v0, "pinBytes":[B
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 301
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 431
    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 433
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 95
    if-eqz p2, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    .line 100
    :goto_0
    return-void
.end method

.method public onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 121
    return-void
.end method

.method public onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void
.end method

.method public pairingCodeIsAlphanumeric()Z
    .locals 2

    .line 280
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 285
    return v1

    .line 282
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContactSharingState()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 193
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x408

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 196
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateUserInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 360
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    .line 361
    return-void
.end method
