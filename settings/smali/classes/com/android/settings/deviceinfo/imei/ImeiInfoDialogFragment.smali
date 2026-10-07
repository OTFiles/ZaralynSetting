.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ImeiInfoDialogFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImeiInfoDialog"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 4
    .param p0, "host"    # Landroid/app/Fragment;
    .param p1, "slotId"    # I
    .param p2, "dialogTitle"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 47
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "ImeiInfoDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "arg_key_slot_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;-><init>()V

    .line 52
    .local v2, "dialog":Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    const-string v3, "ImeiInfoDialog"

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 55
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x4d8

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "arg_key_slot_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "slotId":I
    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "dialogTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V

    .line 69
    .local v3, "controller":Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 71
    const/4 v5, 0x0

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 72
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 73
    const v7, 0x7f0d0099

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    .line 74
    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->populateImeiInfo()V

    .line 75
    iget-object v5, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public removeViewFromScreen(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12051a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    return-void
.end method
