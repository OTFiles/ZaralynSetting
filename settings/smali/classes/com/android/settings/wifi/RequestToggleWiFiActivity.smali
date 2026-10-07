.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    .line 54
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$RequestToggleWiFiActivity$PwZgoHTFFBr3iYEQbWj0vZPfHpw;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 64
    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .line 40
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method

.method private scheduleToggleTimeout()V
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method

.method private unscheduleToggleTimeout()V
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method private updateUi()V
    .locals 8

    .line 221
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    .line 226
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120503

    const v4, 0x7f1200da

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 258
    :pswitch_0    # 0x4
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f121179

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 248
    :pswitch_1    # 0x3
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f121065

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 253
    goto :goto_0

    .line 238
    :pswitch_2    # 0x2
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v7, v7, v7}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f12116d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 245
    goto :goto_0

    .line 228
    :pswitch_3    # 0x1
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f121066

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 233
    nop

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setupAlert()V

    .line 269
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 275
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 108
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 110
    :pswitch_0    # -0x1
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    .line 116
    nop

    .line 126
    :goto_0
    goto :goto_1

    .line 128
    :pswitch_1    # -0x2
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 132
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1    # -0x2
        :pswitch_0    # -0x1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 77
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 83
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 88
    .end local v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "action":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x794f8bbe

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v0, 0x12ecabe9

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_2
    const-string v4, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_2

    .line 97
    :pswitch_0    # 0x1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 98
    goto :goto_2

    .line 93
    :pswitch_1    # 0x0
    iput v6, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 94
    nop

    .line 104
    :goto_2
    return-void

    .line 84
    .end local v2
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RequestToggleWiFiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find app with package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 87
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 142
    .local v0, "wifiState":I
    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 192
    :pswitch_0    # 0x4
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 204
    :pswitch_1    # 0x3 0x2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_3

    .line 194
    :pswitch_2    # 0x1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 196
    return-void

    .line 199
    :pswitch_3    # 0x0
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 200
    goto :goto_3

    .line 158
    :pswitch_4    # 0x3
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 166
    :pswitch_5    # 0x2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 167
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 160
    :pswitch_6    # 0x1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 163
    return-void

    .line 171
    :goto_0
    goto :goto_3

    .line 174
    :pswitch_7    # 0x2
    packed-switch v0, :pswitch_data_3

    goto :goto_1

    .line 176
    :pswitch_8    # 0x3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 178
    return-void

    .line 181
    :pswitch_9    # 0x2
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 182
    goto :goto_1

    .line 186
    :pswitch_a    # 0x1 0x0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 189
    :goto_1
    goto :goto_3

    .line 144
    :pswitch_b    # 0x1
    packed-switch v0, :pswitch_data_4

    goto :goto_2

    .line 146
    :pswitch_c    # 0x3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 148
    return-void

    .line 151
    :pswitch_d    # 0x2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 152
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 155
    :goto_2
    nop

    .line 210
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    .line 211
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b    # 0x1
        :pswitch_7    # 0x2
        :pswitch_4    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_1    # 0x3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a    # 0x0
        :pswitch_a    # 0x1
        :pswitch_9    # 0x2
        :pswitch_8    # 0x3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d    # 0x2
        :pswitch_c    # 0x3
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    .line 217
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 218
    return-void
.end method
