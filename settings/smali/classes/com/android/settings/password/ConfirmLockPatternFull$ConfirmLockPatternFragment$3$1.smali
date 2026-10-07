.class Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;
.super Ljava/lang/Object;
.source "ConfirmLockPatternFull.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    .line 443
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .line 446
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 450
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-boolean v1, v1, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 458
    return-void
.end method
