.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3
    .param p0, "isFrpSupported"    # Z

    .line 41
    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    .line 42
    .local v0, "dialog":Lcom/android/settings/password/SetupSkipDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "frp_supported"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0x23d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 72
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    .end local v0
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f120d45

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    const v2, 0x7f120685

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    const v2, 0x7f1207e1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    const-string v2, "frp_supported"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const v2, 0x7f1207e0

    goto :goto_0

    .line 67
    :cond_0
    const v2, 0x7f1207df

    .line 65
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 61
    return-object v1
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .line 82
    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method
