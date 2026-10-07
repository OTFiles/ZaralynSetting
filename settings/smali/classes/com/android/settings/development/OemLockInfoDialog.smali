.class public Lcom/android/settings/development/OemLockInfoDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OemLockInfoDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "host"    # Landroid/app/Fragment;

    .line 34
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 35
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "OemLockInfoDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/android/settings/development/OemLockInfoDialog;

    invoke-direct {v1}, Lcom/android/settings/development/OemLockInfoDialog;-><init>()V

    .line 37
    .local v1, "dialog":Lcom/android/settings/development/OemLockInfoDialog;
    const-string v2, "OemLockInfoDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x4d6

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/OemLockInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    const v1, 0x7f1209b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
