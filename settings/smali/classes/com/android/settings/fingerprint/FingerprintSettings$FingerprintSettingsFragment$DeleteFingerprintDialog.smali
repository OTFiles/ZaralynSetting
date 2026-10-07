.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteFingerprintDialog"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mFp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    .locals 3
    .param p0, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "target"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 677
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;-><init>()V

    .line 678
    .local v0, "dialog":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 680
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->setArguments(Landroid/os/Bundle;)V

    .line 681
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 682
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 687
    const/16 v0, 0x23a

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 708
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    .line 710
    .local v0, "fingerprintId":I
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfd

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 714
    nop

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 716
    .local v1, "parent":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 718
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 693
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120632

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 697
    const v2, 0x7f120631

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 698
    const v2, 0x7f120c78

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 701
    const v2, 0x7f120358

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 702
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 703
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method
