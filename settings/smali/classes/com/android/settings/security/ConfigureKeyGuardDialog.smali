.class public Lcom/android/settings/security/ConfigureKeyGuardDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigureKeyGuardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mConfigureConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 46
    const/16 v0, 0x3f2

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 62
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    const v1, 0x7f120413

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const v1, 0x7f120412

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->startPasswordSetup()V

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    .end local v0
    :cond_1
    return-void
.end method

.method startPasswordSetup()V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
