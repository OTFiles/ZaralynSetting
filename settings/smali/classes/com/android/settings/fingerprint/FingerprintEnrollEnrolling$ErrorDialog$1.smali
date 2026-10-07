.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    .line 487
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 490
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 491
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    .local v0, "wasTimeout":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 494
    .local v3, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 495
    nop

    .line 494
    move v1, v2

    goto :goto_1

    .line 495
    :cond_1
    nop

    .line 494
    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/Activity;->setResult(I)V

    .line 496
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 497
    return-void
.end method
