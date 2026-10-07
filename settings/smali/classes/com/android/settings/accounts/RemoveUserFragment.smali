.class public Lcom/android/settings/accounts/RemoveUserFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveUserFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(I)Lcom/android/settings/accounts/RemoveUserFragment;
    .locals 2
    .param p0, "userId"    # I

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "userId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    new-instance v1, Lcom/android/settings/accounts/RemoveUserFragment;

    invoke-direct {v1}, Lcom/android/settings/accounts/RemoveUserFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/android/settings/accounts/RemoveUserFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/RemoveUserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 56
    const/16 v0, 0x216

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/RemoveUserFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accounts/RemoveUserFragment$1;-><init>(Lcom/android/settings/accounts/RemoveUserFragment;I)V

    invoke-static {v1, v0, v2}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method
