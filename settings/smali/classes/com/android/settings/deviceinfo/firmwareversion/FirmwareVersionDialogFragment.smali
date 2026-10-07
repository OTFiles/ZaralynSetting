.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FirmwareVersionDialogFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private initializeControllers()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->initialize()V

    .line 88
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->initialize()V

    .line 89
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->initialize()V

    .line 90
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->initialize()V

    .line 91
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->initialize()V

    .line 92
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "host"    # Landroid/app/Fragment;

    .line 39
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 40
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "firmwareVersionDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;-><init>()V

    .line 42
    .local v1, "dialog":Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;
    const-string v2, "firmwareVersionDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x4df

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    const v1, 0x7f120649

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->initializeControllers()V

    .line 62
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public registerClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public removeSettingFromScreen(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "view":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method
