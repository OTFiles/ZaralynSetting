.class public Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ChooseLockTypeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;,
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private static copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "from"    # Landroid/content/Intent;
    .param p1, "to"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 96
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;
    .locals 2
    .param p0, "userId"    # I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "userId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    new-instance v1, Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;-><init>()V

    .line 62
    .local v1, "fragment":Lcom/android/settings/password/ChooseLockTypeDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 141
    const/16 v0, 0x3de

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "listener":Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, "parentFragment":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v2, :cond_0

    .line 112
    move-object v0, v1

    check-cast v0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 115
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v3, :cond_1

    .line 116
    move-object v0, v2

    check-cast v0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    .line 119
    .end local v2
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/ScreenLockType;

    invoke-interface {v0, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V

    .line 122
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "userId":I
    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 105
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 129
    const/high16 v3, 0x10000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "locks":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/password/ScreenLockType;>;"
    new-instance v3, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-direct {v3, v0, v2, v4}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    .line 133
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v3, 0x7f120cd6

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 136
    .local v3, "alertDialog":Landroid/app/AlertDialog;
    return-object v3
.end method
