.class public Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ButtonActionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;
    }
.end annotation


# instance fields
.field mId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f12055d

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 101
    return-object v2

    .line 94
    :pswitch_0    # 0x2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120660

    .line 95
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12065f

    .line 96
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120569

    .line 97
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 94
    return-object v1

    .line 88
    :pswitch_1    # 0x1 0x0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120118

    .line 89
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120117

    .line 90
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 88
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public static newInstance(I)Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
    .locals 3
    .param p0, "id"    # I

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;-><init>()V

    .line 51
    .local v0, "dialogFragment":Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 52
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x22e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;

    .line 80
    .local v0, "lsn":Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;
    iget v1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;->handleDialogClick(I)V

    .line 81
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    .line 69
    iget v1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    .line 70
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 73
    return-object v1

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
