.class public Lcom/android/settings/SettingsPreinstallDialogActivity;
.super Landroid/app/Activity;
.source "SettingsPreinstallDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btn_dialog_cancel:Landroid/widget/TextView;

.field private btn_dialog_ok:Landroid/widget/TextView;

.field private dialogShowRootContainer:Landroid/widget/RelativeLayout;

.field private gradientColorOrder:I

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mBgWinkingRunnable:Ljava/lang/Runnable;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDialogId:I

.field private mFactoryPowerTmUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tv_dialog_msg:Landroid/widget/TextView;

.field private tv_dialog_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "PreinstallDialog"

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientColorOrder:I

    .line 71
    const-string v0, "first_time_start_factory_power_tm"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mFactoryPowerTmUri:Landroid/net/Uri;

    .line 76
    new-instance v0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;

    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsPreinstallDialogActivity$1;-><init>(Lcom/android/settings/SettingsPreinstallDialogActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance v0, Lcom/android/settings/SettingsPreinstallDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreinstallDialogActivity$2;-><init>(Lcom/android/settings/SettingsPreinstallDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mFactoryPowerTmUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsPreinstallDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientColorOrder:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsPreinstallDialogActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientColorOrder:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/settings/SettingsPreinstallDialogActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientColorOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientColorOrder:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->dialogShowRootContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;

    .line 47
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 371
    return-void
.end method

.method public initDialogDisplay()V
    .locals 7

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f120453

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    const v4, 0x7f120b8a

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_ok_id"

    const v4, 0x7f120b81

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_cancel_id"

    const v4, 0x7f120b82

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_tpout_close"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dialog_id"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mDialogId:I

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_tpout_close"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_title_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_title_txt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_title_txt"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_msg_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "strMsgId":I
    const v3, 0x7f120b85

    if-ne v3, v0, :cond_5

    .line 267
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 268
    .local v3, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 269
    .local v1, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 272
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .end local v1
    .end local v3
    goto :goto_2

    .line 270
    .restart local v1
    .restart local v3
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120b8c

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v1
    .end local v3
    :goto_2
    goto :goto_3

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 277
    .end local v0
    :goto_3
    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dlg_msg_txt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "dlg_msg_txt"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dlg_ok_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    .line 282
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_ok_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 283
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_ok_txt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dlg_ok_txt"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 286
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dlg_cancel_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 289
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "dlg_cancel_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 290
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dlg_cancel_txt"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 291
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dlg_cancel_txt"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 375
    if-nez p1, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 380
    :pswitch_0    # 0x7f0a0098
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->userDismissDialog()V

    .line 381
    goto :goto_0

    .line 383
    :pswitch_1    # 0x7f0a0097
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->userDismissDialog()V

    .line 386
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0097
        :pswitch_1    # 0x7f0a0097
        :pswitch_0    # 0x7f0a0098
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->requestWindowFeature(I)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 120
    const v0, 0x7f0d016d

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 122
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 130
    .local v1, "display":Landroid/view/Display;
    const v2, 0x7f0a013d

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 131
    .local v2, "dialogShowMainContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .local v3, "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fd7ae147ae147aeL    # 0.37

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 133
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v4, 0x7f0a013e

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->dialogShowRootContainer:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->dialogShowRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    const v4, 0x7f0a0098

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    .line 139
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_ok:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v4, 0x7f0a0097

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    .line 141
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->btn_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v4, 0x7f0a048a

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_title:Landroid/widget/TextView;

    .line 143
    const v4, 0x7f0a0489

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->tv_dialog_msg:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->initDialogDisplay()V

    .line 167
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mFactoryPowerTmUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    :try_start_0
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 175
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_0

    .line 176
    const v5, 0x1000000a

    const-string v6, "PreinstallDialog"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 179
    const-string v5, ""

    const-string v6, "=====divhee=============mWakeLock.acquire();===ok==="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 182
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=====divhee=============mWakeLock.acquire();==error===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->releaseSource()V

    .line 236
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreinstallDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 242
    const-string v0, ""

    const-string v1, "====divhee==========onNewIntent======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->initDialogDisplay()V

    .line 244
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->releaseSource()V

    .line 197
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v0
    :goto_0
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mBgWinkingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 212
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    .line 230
    :goto_1
    return-void
.end method

.method public userDismissDialog()V
    .locals 0

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->finish()V

    .line 365
    return-void
.end method
