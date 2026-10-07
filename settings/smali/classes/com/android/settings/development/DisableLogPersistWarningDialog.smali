.class public Lcom/android/settings/development/DisableLogPersistWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisableLogPersistWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/LogPersistDialogHost;)V
    .locals 4
    .param p0, "host"    # Lcom/android/settings/development/LogPersistDialogHost;

    .line 36
    instance-of v0, p0, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    .line 40
    .local v0, "hostFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 41
    .local v1, "manager":Landroid/app/FragmentManager;
    const-string v2, "DisableLogPersistDlg"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 42
    new-instance v2, Lcom/android/settings/development/DisableLogPersistWarningDialog;

    invoke-direct {v2}, Lcom/android/settings/development/DisableLogPersistWarningDialog;-><init>()V

    .line 44
    .local v2, "dialog":Lcom/android/settings/development/DisableLogPersistWarningDialog;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 45
    const-string v3, "DisableLogPersistDlg"

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    .end local v2
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x4c9

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistDialogHost;

    .line 67
    .local v0, "host":Lcom/android/settings/development/LogPersistDialogHost;
    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 71
    invoke-interface {v0}, Lcom/android/settings/development/LogPersistDialogHost;->onDisableLogPersistDialogConfirmed()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/development/LogPersistDialogHost;->onDisableLogPersistDialogRejected()V

    .line 75
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    const v1, 0x7f120507

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const v1, 0x7f120506

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 56
    return-object v0
.end method
