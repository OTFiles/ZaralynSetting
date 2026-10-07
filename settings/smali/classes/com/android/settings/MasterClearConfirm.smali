.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private IsReadyingClear:Z

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mContentView:Landroid/view/View;

.field mDialogResultStatusChangeListener:Ljava/beans/PropertyChangeListener;

.field private mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mPowerValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerValue:I

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->IsReadyingClear:Z

    .line 85
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 327
    new-instance v0, Lcom/android/settings/MasterClearConfirm$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$3;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mDialogResultStatusChangeListener:Ljava/beans/PropertyChangeListener;

    .line 386
    new-instance v0, Lcom/android/settings/MasterClearConfirm$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$4;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 68
    iget v0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClearConfirm;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/android/settings/MasterClearConfirm;->mPowerValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->clearFinalConfirmationState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClearConfirm;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClearConfirm;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClearConfirm;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 68
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private clearFinalConfirmationState()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    return-void
.end method

.method private doMasterClear()V
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->IsReadyingClear:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->clearFinalConfirmationState()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    :goto_0
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 104
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 107
    nop

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120884

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120883

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    return-object v0
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClearConfirm;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 128
    const v2, 0x7f120886

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 127
    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "currentTitle":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 169
    const v2, 0x7f0a0262

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "accessibleText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    .end local v2
    :cond_0
    return-void
.end method

.method public static setResultAction(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "actType"    # Landroid/os/Bundle;

    .line 414
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    .end local v0
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 210
    const/16 v0, 0x43

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "======divhee====onActivityResult====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, -0x1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    .line 351
    if-ne p2, v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyPromptDoMasterClearOfSomePad()V

    goto :goto_2

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    goto :goto_2

    .line 356
    :cond_1
    const/16 v2, 0x68

    if-ne p1, v2, :cond_8

    .line 357
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 359
    if-eq p2, v4, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_0

    .line 363
    :cond_2
    if-ne p2, v0, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyDoMasterClear()V

    goto :goto_2

    .line 366
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    goto :goto_2

    .line 360
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/MasterClearConfirm;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyDoMasterClear()V

    goto :goto_2

    .line 369
    :cond_5
    if-eq p2, v4, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    .line 374
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    goto :goto_2

    .line 370
    :cond_7
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/MasterClearConfirm;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyPromptDoMasterClearOfSomePad()V

    goto :goto_2

    .line 376
    :cond_8
    const/16 v1, 0x6a

    if-ne p1, v1, :cond_a

    .line 377
    if-ne p2, v0, :cond_9

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyDoMasterClear()V

    goto :goto_2

    .line 380
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 383
    :cond_a
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "erase_sd"

    .line 183
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 184
    if-eqz v0, :cond_1

    const-string v3, "erase_esim"

    .line 185
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    .line 187
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mDialogResultStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 188
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm;->mDialogResultStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 190
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 148
    nop

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 150
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "no_factory_reset"

    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 150
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    const v1, 0x7f0d00ea

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    .line 154
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v2, "no_factory_reset"

    .line 155
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 160
    :cond_1
    const v1, 0x7f0d00e9

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 163
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 205
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mDialogResultStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 194
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerValue:I

    .line 197
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f0a017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f12087f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method public readboyDoMasterClear()V
    .locals 4

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->IsReadyingClear:Z

    .line 278
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->clearFinalConfirmationState()V

    .line 279
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f120bb2

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 284
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    nop

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oem_lock"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    .line 287
    .local v1, "oemLockManager":Landroid/service/oemlock/OemLockManager;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Lcom/android/settings/MasterClearConfirm$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MasterClearConfirm$2;-><init>(Lcom/android/settings/MasterClearConfirm;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 321
    invoke-virtual {v2, v3}, Lcom/android/settings/MasterClearConfirm$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    .line 325
    :goto_0
    return-void
.end method

.method public readboyPromptDoMasterClearOfSomePad()V
    .locals 4

    .line 248
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->isNeedPrompteReInstallReadboyAppsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsRecoveryReinstallDslAppDialogActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialog_id"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v1, "dlg_title_id"

    const v2, 0x7f120453

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v1, "dlg_msg_id"

    const v2, 0x7f120b8b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "dlg_tpout_close"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v1, "dlg_cancel_id"

    const v2, 0x7f120b83

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v1, "dlg_ok_id"

    const v2, 0x7f120b84

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearConfirm;->startActivity(Landroid/content/Intent;)V

    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0
    :goto_0
    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->readboyDoMasterClear()V

    .line 266
    :goto_1
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 214
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/MasterClearConfirm;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    return v1

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/MasterClearConfirm;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    return v1

    .line 225
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 231
    :cond_3
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 238
    .end local v0
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 237
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=p=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0
    nop

    .line 241
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
