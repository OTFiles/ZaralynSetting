.class public Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EnableDevelopmentSettingWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 3
    .param p0, "host"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 36
    new-instance v0, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;

    invoke-direct {v0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;-><init>()V

    .line 38
    .local v0, "dialog":Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 40
    .local v1, "manager":Landroid/app/FragmentManager;
    const-string v2, "EnableDevSettingDlg"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 41
    const-string v2, "EnableDevSettingDlg"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 47
    const/16 v0, 0x4c3

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 64
    .local v0, "host":Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onEnableDevelopmentOptionsConfirmed()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onEnableDevelopmentOptionsRejected()V

    .line 69
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const v1, 0x7f120509

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const v1, 0x7f12050a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    return-object v0
.end method
