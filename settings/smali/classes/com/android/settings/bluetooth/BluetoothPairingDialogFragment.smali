.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mPairingView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 287
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 286
    const v2, 0x7f1202e1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202d3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202d5

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private createConsentDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 308
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 307
    const v2, 0x7f1202e1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 310
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 314
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->notifyDialogDisplayed()V

    .line 316
    return-object v0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 13

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a02fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, "messageViewCaptionHint":Landroid/widget/TextView;
    const v2, 0x7f0a0269

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 235
    .local v2, "messageView2":Landroid/widget/TextView;
    const v3, 0x7f0a004c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 236
    .local v3, "alphanumericPin":Landroid/widget/CheckBox;
    const v4, 0x7f0a02f9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 238
    .local v4, "contactSharing":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 239
    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 238
    const v7, 0x7f1202e2

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v6, 0x7f0a0456

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 242
    .local v6, "pairingView":Landroid/widget/EditText;
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_0

    .line 243
    nop

    .line 242
    move v7, v9

    goto :goto_0

    .line 243
    :cond_0
    nop

    .line 242
    move v7, v8

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 244
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 245
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    .line 250
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 251
    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    new-instance v7, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageId()I

    move-result v7

    .line 262
    .local v7, "messageId":I
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageHintId()I

    move-result v10

    .line 263
    .local v10, "messageIdHint":I
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v11}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceMaxPasskeyLength()I

    move-result v11

    .line 264
    .local v11, "maxLength":I
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v12}, Lcom/android/settings/bluetooth/BluetoothPairingController;->pairingCodeIsAlphanumeric()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 265
    nop

    .line 264
    move v12, v8

    goto :goto_1

    .line 265
    :cond_1
    nop

    .line 264
    move v12, v9

    :goto_1
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 266
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    .line 267
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 269
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :goto_2
    if-eq v10, v12, :cond_3

    .line 272
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 274
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :goto_3
    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v5, v8

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 279
    return-object v0
.end method

.method private createUserEntryDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 208
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 207
    const v2, 0x7f1202e1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 213
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 225
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a02eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 326
    .local v1, "pairingViewCaption":Landroid/widget/TextView;
    const v2, 0x7f0a02ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 327
    .local v2, "pairingViewContent":Landroid/widget/TextView;
    const v3, 0x7f0a02ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 328
    .local v3, "messagePairing":Landroid/widget/TextView;
    const v4, 0x7f0a02f8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 330
    .local v4, "contactSharing":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 331
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 330
    const v6, 0x7f1202e2

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 333
    nop

    .line 334
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    .line 333
    move v5, v6

    goto :goto_0

    .line 334
    :cond_0
    nop

    .line 333
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 335
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 336
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 337
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDisplayPairingKeyVariant()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    nop

    .line 339
    move v6, v7

    goto :goto_1

    .line 340
    :cond_1
    nop

    .line 339
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$createPinEntryView$1(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 254
    if-eqz p2, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 259
    :goto_0
    return-void
.end method

.method public static synthetic lambda$createUserEntryDialog$0(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getPairingViewText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    nop

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 220
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 224
    .end local v0
    :cond_1
    return-void
.end method

.method private setupDialog()Landroid/app/AlertDialog;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "dialog":Landroid/app/AlertDialog;
    const-string v1, "BTPairingDialogFragment"

    const-string v2, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0
    :pswitch_0    # 0x2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .restart local v0
    goto :goto_0

    .line 178
    .end local v0
    :pswitch_1    # 0x1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConsentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 179
    .restart local v0
    goto :goto_0

    .line 175
    .end local v0
    :pswitch_2    # 0x0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createUserEntryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .restart local v0
    nop

    .line 187
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 96
    .local v0, "positiveButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyValid(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateUserInput(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 86
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 115
    const/16 v0, 0x265

    return v0
.end method

.method getPairingViewText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isPairingControllerSet()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPairingDialogActivitySet()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 105
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    goto :goto_0

    .line 107
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 111
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setupDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPairingController() before showing dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 90
    return-void
.end method

.method setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 2
    .param p1, "pairingController"    # Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 139
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 2
    .param p1, "pairingDialogActivity"    # Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .line 158
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pairing dialog activity can only be set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
