.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimStatusDialogFragment.java"


# instance fields
.field private mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 4
    .param p0, "host"    # Landroid/app/Fragment;
    .param p1, "slotId"    # I
    .param p2, "dialogTitle"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 50
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "SimStatusDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "arg_key_sim_slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;-><init>()V

    .line 56
    .local v2, "dialog":Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    const-string v3, "SimStatusDialog"

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 45
    const/16 v0, 0x4de

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "arg_key_sim_slot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "slotId":I
    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "dialogTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 67
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 69
    const/4 v4, 0x0

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 70
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 71
    const v6, 0x7f0d009a

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    .line 72
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->initialize()V

    .line 73
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public removeSettingFromScreen(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12051a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    return-void
.end method
