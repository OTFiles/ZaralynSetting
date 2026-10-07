.class Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPatternFull.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 395
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    .line 395
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 471
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget v6, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    .line 474
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget v0, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 478
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$2;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 18
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    .line 438
    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget v1, v1, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 439
    .local v1, "localEffectiveUserId":I
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget v2, v2, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mUserId:I

    .line 440
    .local v2, "localUserId":I
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "challenge"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 442
    .local v16, "challenge":J
    new-instance v8, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;

    move-object/from16 v15, p2

    invoke-direct {v8, v0, v15, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3$1;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;Landroid/content/Intent;I)V

    .line 460
    .local v8, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    iget-object v14, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    if-ne v1, v2, :cond_0

    .line 461
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v4, p1

    move-wide/from16 v5, v16

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 460
    move-object v4, v3

    move-object v3, v14

    goto :goto_0

    .line 464
    :cond_0
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget-object v9, v3, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 465
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 464
    move-wide/from16 v12, v16

    move-object v3, v14

    move v14, v2

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    .line 460
    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 467
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$200(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$300(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 418
    .local v0, "verifyChallenge":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 422
    return-void

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    iget v4, v4, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v1, v2, v1, v4}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 430
    return-void

    .line 425
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 426
    return-void

    .line 411
    .end local v0
    .end local v2
    :cond_3
    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method
