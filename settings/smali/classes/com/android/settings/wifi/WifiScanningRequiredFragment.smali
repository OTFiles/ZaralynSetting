.class public Lcom/android/settings/wifi/WifiScanningRequiredFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiScanningRequiredFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/WifiScanningRequiredFragment;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/settings/wifi/WifiScanningRequiredFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/android/settings/wifi/WifiScanningRequiredFragment;
    return-object v0
.end method

.method private openHelpPage()V
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WifiScanReqFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity was not found for intent, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method addButtonIfNeeded(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1206b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f120798

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :cond_0
    return-void
.end method

.method getHelpIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    nop

    .line 113
    const v0, 0x7f1206b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x55d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, -0x3

    if-eq p2, v2, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    const v3, 0x7f121140

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 73
    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getTargetRequestCode()I

    move-result v4

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->openHelpPage()V

    .line 84
    nop

    .line 89
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    const v1, 0x7f121143

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    const v1, 0x7f121144

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const v1, 0x7f120358

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->addButtonIfNeeded(Landroid/app/AlertDialog$Builder;)V

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
