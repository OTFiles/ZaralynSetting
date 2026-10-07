.class Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 549
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    .line 562
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .line 553
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 554
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 554
    const v4, 0x7f120855

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method
