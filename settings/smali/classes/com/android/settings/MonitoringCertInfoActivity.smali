.class public Lcom/android/settings/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string v1, "ARG_SHOW_NEW_FOR_USER"

    iget v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedStates"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    .line 48
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 49
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.settings.extra.number_of_certificates"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "numberOfCertificates":I
    iget v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    const v4, 0x7f10003c

    if-eqz v2, :cond_0

    .line 52
    nop

    .line 53
    move v2, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f100039

    .line 54
    .local v2, "titleId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 55
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0, v5}, Lcom/android/settings/MonitoringCertInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v4, 0x7f120358

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v6, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget v4, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f10003a

    new-array v3, v3, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    .line 67
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7

    .line 66
    invoke-virtual {v4, v8, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f10003b

    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerNameOnAnyUser()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7

    .line 69
    invoke-virtual {v4, v8, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 74
    :cond_2
    const v3, 0x1080078

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const v3, 0x7f120d77

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 78
    :goto_1
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 93
    return-void
.end method
