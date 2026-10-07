.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "msgId"    # I

    .line 470
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;-><init>()V

    .line 471
    .local v0, "dlg":Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "error_msg"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 473
    const-string v2, "error_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 475
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 506
    const/16 v0, 0x239

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 480
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 482
    .local v1, "errorString":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 483
    .local v2, "errMsgId":I
    const v3, 0x7f120c7f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 484
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 485
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V

    .line 486
    const v6, 0x7f120c7a

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 500
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 501
    return-object v3
.end method
