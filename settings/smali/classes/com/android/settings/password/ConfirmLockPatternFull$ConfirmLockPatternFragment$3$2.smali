.class Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;
.super Ljava/lang/Object;
.source "ConfirmLockPatternFull.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    .line 482
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .line 485
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 486
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->access$600(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-boolean v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$intent:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$pattern:Ljava/util/List;

    .line 490
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->this$1:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 494
    return-void
.end method
