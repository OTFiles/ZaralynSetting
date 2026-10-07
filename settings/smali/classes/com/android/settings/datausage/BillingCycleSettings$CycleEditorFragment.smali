.class public Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/datausage/BillingCycleSettings;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 347
    .local v1, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 348
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 354
    const/16 v0, 0x225

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 386
    .local v0, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageEditController;

    .line 387
    .local v1, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v2

    .line 390
    .local v2, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 392
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    .line 393
    .local v3, "cycleDay":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 394
    .local v4, "cycleTimezone":Ljava/lang/String;
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 395
    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 396
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageEditController;

    .line 361
    .local v1, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v2

    .line 363
    .local v2, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 366
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0d0088

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 367
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0a010f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "template"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 370
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v2, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v7

    .line 372
    .local v7, "cycleDay":I
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 373
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    const/16 v10, 0x1f

    invoke-virtual {v8, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 374
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 375
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 377
    const v8, 0x7f12047b

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 378
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 379
    const v9, 0x7f120479

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 380
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 377
    return-object v8
.end method
