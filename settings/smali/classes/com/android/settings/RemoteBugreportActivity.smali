.class public Lcom/android/settings/RemoteBugreportActivity;
.super Landroid/app/Activity;
.source "RemoteBugreportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/RemoteBugreportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.bugreport_notification_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "notificationType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120ce1

    .line 52
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/RemoteBugreportActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/RemoteBugreportActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 66
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 67
    .end local v1
    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "RemoteBugreportActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect dialog type, no dialog shown. Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 70
    :cond_2
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120cdf

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 73
    if-ne v0, v1, :cond_3

    .line 74
    const v1, 0x7f120cdd

    goto :goto_1

    .line 75
    :cond_3
    const v1, 0x7f120cde

    .line 72
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/RemoteBugreportActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/RemoteBugreportActivity$5;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1204e8

    new-instance v3, Lcom/android/settings/RemoteBugreportActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/RemoteBugreportActivity$4;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120cdc

    new-instance v3, Lcom/android/settings/RemoteBugreportActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/RemoteBugreportActivity$3;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 105
    .restart local v1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 106
    .end local v1
    nop

    .line 109
    :goto_2
    return-void
.end method
