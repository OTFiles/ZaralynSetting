.class public Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RunningServiceDetailsOLD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetailsOLD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "comp"    # Landroid/content/ComponentName;

    .line 567
    new-instance v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;-><init>()V

    .line 568
    .local v0, "frag":Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    const-string v2, "comp"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 572
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 610
    const/16 v0, 0x218

    return v0
.end method

.method getOwner()Lcom/android/settings/applications/RunningServiceDetailsOLD;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetailsOLD;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, "id":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 585
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/RunningServiceDetailsOLD;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 586
    return-object v3

    .line 589
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120c15

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120c14

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f120569

    new-instance v5, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;Landroid/content/ComponentName;)V

    .line 592
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f12055d

    .line 601
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 602
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 589
    return-object v2

    .line 605
    .end local v1
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
