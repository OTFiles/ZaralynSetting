.class public final Lcom/android/settings/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiNoInternetDialog;

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method private createDialog()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 129
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    const v1, 0x7f120943

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 132
    const v1, 0x7f1211be

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    const v1, 0x7f120937

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 135
    :cond_0
    const v1, 0x7f12085e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    const v1, 0x7f12085d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 137
    const v1, 0x7f12085c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 138
    const v1, 0x7f12085a

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 140
    :goto_0
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 144
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "checkbox":Landroid/view/View;
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 147
    const v3, 0x10201a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 149
    const-string v3, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v4, 0x7f120942

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v4, 0x7f12085b

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->setupAlert()V

    .line 156
    return-void
.end method

.method private isKnownAction(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.PROMPT_LOST_VALIDATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 56
    :goto_1
    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 168
    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 172
    .local v1, "always":Z
    const-string v2, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 173
    const-string v2, "NO_INTERNET"

    .line 174
    .local v2, "what":Ljava/lang/String;
    if-ne p2, v0, :cond_1

    move v3, v4

    nop

    :cond_1
    move v0, v3

    .line 175
    .local v0, "accept":Z
    if-eqz v0, :cond_2

    const-string v3, "Connect"

    goto :goto_0

    :cond_2
    const-string v3, "Ignore"

    .line 176
    .local v3, "action":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5, v0, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 177
    .end local v0
    goto :goto_3

    .line 178
    .end local v2
    .end local v3
    :cond_3
    const-string v2, "LOST_INTERNET"

    .line 179
    .restart local v2
    if-ne p2, v0, :cond_4

    move v3, v4

    nop

    :cond_4
    move v0, v3

    .line 180
    .local v0, "avoid":Z
    if-eqz v0, :cond_5

    const-string v3, "Switch away"

    goto :goto_1

    :cond_5
    const-string v3, "Get stuck"

    .line 181
    .restart local v3
    :goto_1
    if-eqz v1, :cond_7

    .line 182
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network_avoid_bad_wifi"

    .line 183
    if-eqz v0, :cond_6

    const-string v6, "1"

    goto :goto_2

    :cond_6
    const-string v6, "0"

    .line 182
    :goto_2
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 184
    :cond_7
    if-eqz v0, :cond_8

    .line 185
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 188
    .end local v0
    :cond_8
    :goto_3
    const-string v0, "WifiNoInternetDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz v1, :cond_9

    const-string v5, " and remember"

    goto :goto_4

    :cond_9
    const-string v5, ""

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isKnownAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "netId"

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance v1, Landroid/net/Network;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/Network;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 77
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 79
    .end local v1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_1

    .line 80
    const-string v1, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine network from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' , exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 82
    return-void

    .line 87
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 88
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/settings/wifi/WifiNoInternetDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 107
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 108
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 111
    .local v2, "ni":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 112
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 119
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V

    .line 123
    return-void

    .line 113
    :cond_4
    :goto_1
    const-string v4, "WifiNoInternetDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 115
    return-void

    .line 66
    .end local v1
    .end local v2
    .end local v3
    :cond_5
    :goto_2
    const-string v1, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 165
    return-void
.end method
