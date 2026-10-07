.class public Lcom/android/settings/wifi/WifiDialogActivity;
.super Landroid/app/Activity;
.source "WifiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field static final KEY_CONNECT_FOR_CALLER:Ljava/lang/String; = "connect_for_caller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiDialogActivity;->overridePendingTransition(II)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTransparentTheme(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialogActivity;->setTheme(I)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v1, "access_point_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, "accessPointState":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 65
    .local v2, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    if-eqz v1, :cond_1

    .line 66
    new-instance v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {v3, p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    move-object v2, v3

    .line 69
    :cond_1
    const/4 v3, 0x1

    invoke-static {p0, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v3

    .line 71
    .local v3, "dialog":Lcom/android/settings/wifi/WifiDialog;
    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 72
    invoke-virtual {v3, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    .line 150
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 5
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 83
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 84
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    .line 85
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 90
    nop

    .line 91
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    const-string v2, "WifiDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to forget invalid network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 101
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v2, "resultData":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 103
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v3, "accessPointState":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 105
    const-string v4, "access_point_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    .end local v3
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDialogActivity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    .line 109
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 7
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 114
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    .line 115
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 117
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "connect_for_caller"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 119
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 124
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 127
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 128
    :cond_1
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 134
    .end local v4
    :cond_2
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v3, "resultData":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 136
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v4, "accessPointState":Landroid/os/Bundle;
    invoke-virtual {v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 138
    const-string v6, "access_point_state"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    .end local v4
    :cond_3
    if-eqz v0, :cond_4

    .line 141
    const-string v4, "wifi_configuration"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    :cond_4
    invoke-virtual {p0, v5, v3}, Lcom/android/settings/wifi/WifiDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    .line 145
    return-void
.end method
