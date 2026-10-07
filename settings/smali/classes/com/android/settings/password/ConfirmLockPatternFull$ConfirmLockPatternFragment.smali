.class public Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPatternFull.java"

# interfaces
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPatternFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$Listener;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 335
    new-instance v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 394
    new-instance v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 79
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 9

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    .line 261
    .local v1, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v4, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move v5, v2

    .local v5, "j":I
    :goto_1
    aget-object v6, v1, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 264
    aget-object v6, v1, v3

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 266
    .end local v5
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v3
    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    aget-object v4, v1, v2

    array-length v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    .line 272
    .local v3, "resultArr":[[Ljava/lang/Object;
    move v4, v2

    .local v4, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 273
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 274
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move v6, v2

    .local v6, "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 275
    aget-object v7, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 272
    .end local v5
    .end local v6
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v4
    :cond_5
    return-object v3
.end method

.method private getDefaultDetails()I
    .locals 3

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFrp:Z

    if-eqz v0, :cond_0

    .line 239
    const v0, 0x7f120813

    return v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->isStrongAuthRequired()Z

    move-result v0

    .line 242
    .local v0, "isStrongAuthRequired":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    if-eqz v0, :cond_1

    .line 244
    const v1, 0x7f120836

    goto :goto_0

    .line 245
    :cond_1
    const v1, 0x7f120815

    .line 243
    :goto_0
    return v1

    .line 247
    :cond_2
    if-eqz v0, :cond_3

    .line 248
    const v1, 0x7f120833

    goto :goto_1

    .line 249
    :cond_3
    const v1, 0x7f120814

    .line 247
    :goto_1
    return v1
.end method

.method private getDefaultHeader()I
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFrp:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120817

    goto :goto_0

    .line 332
    :cond_0
    const v0, 0x7f120816

    .line 331
    :goto_0
    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .line 545
    sget-object v0, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 547
    .local v0, "elapsedRealtime":J
    new-instance v8, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;JJ)V

    .line 563
    invoke-virtual {v8}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$4;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 564
    return-void
.end method

.method static synthetic lambda$startDisappearAnimation$0(Lcom/android/settings/password/ConfirmLockPatternFull;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/settings/password/ConfirmLockPatternFull;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 368
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPatternFull;->setResult(ILandroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull;->finish()V

    .line 370
    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull;->overridePendingTransition(II)V

    .line 373
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 502
    if-eqz p1, :cond_1

    .line 503
    if-eqz p5, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->reportSuccessfulAttempt()V

    .line 506
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->checkForPendingIntent()V

    goto :goto_1

    .line 509
    :cond_1
    if-lez p3, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->refreshLockScreen()V

    .line 511
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 513
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 514
    .end local v0
    goto :goto_0

    .line 515
    :cond_2
    sget-object v0, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    .line 518
    :goto_0
    if-eqz p5, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->reportFailedAttempt()V

    .line 522
    :cond_3
    :goto_1
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 345
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 354
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPatternFull;

    .line 361
    .local v0, "activity":Lcom/android/settings/password/ConfirmLockPatternFull;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPatternFull;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPatternFull;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    .line 365
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 366
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ConfirmLockPatternFull;->setResult(ILandroid/content/Intent;)V

    .line 376
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPatternFull;->finish()V

    .line 378
    :goto_0
    return-void

    .line 362
    :cond_3
    :goto_1
    return-void
.end method

.method private updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    .line 289
    sget-object v0, Lcom/android/settings/password/ConfirmLockPatternFull$1;->$SwitchMap$com$android$settings$password$ConfirmLockPatternFull$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 318
    :pswitch_0    # 0x3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 321
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_2

    .line 310
    :pswitch_1    # 0x2
    const v0, 0x7f12083d

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->showError(IJ)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 316
    goto :goto_2

    .line 291
    :pswitch_2    # 0x1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getDefaultHeader()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 303
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateErrorMessage(I)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 308
    nop

    .line 327
    :goto_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 351
    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 26
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 571
    instance-of v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v2, :cond_4

    .line 572
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 573
    .local v2, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v12, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v14, 0x3f800000

    .line 574
    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 575
    move v15, v3

    goto :goto_0

    .line 574
    :cond_0
    nop

    .line 575
    move v15, v4

    :goto_0
    if-eqz p7, :cond_1

    .line 576
    move/from16 v16, p6

    goto :goto_1

    .line 575
    :cond_1
    nop

    .line 576
    move/from16 v16, v4

    :goto_1
    if-eqz p7, :cond_2

    .line 577
    move/from16 v17, v4

    goto :goto_2

    :cond_2
    move/from16 v17, p6

    :goto_2
    if-eqz p7, :cond_3

    move/from16 v18, v4

    goto :goto_3

    :cond_3
    move/from16 v18, v3

    :goto_3
    const/high16 v19, 0x3f800000

    .line 573
    move-object v13, v2

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    invoke-virtual/range {v12 .. v25}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 579
    .end local v2
    goto :goto_4

    .line 580
    :cond_4
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 583
    :goto_4
    return-void
.end method

.method protected getLastTryErrorMessage(I)I
    .locals 3
    .param p1, "userType"    # I

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_0    # 0x3
    const v0, 0x7f1207db

    return v0

    .line 536
    :pswitch_1    # 0x2
    const v0, 0x7f1207da

    return v0

    .line 534
    :pswitch_2    # 0x1
    const v0, 0x7f1207d9

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 203
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmLockPatternFull;

    .line 111
    .local v1, "activity":Lcom/android/settings/password/ConfirmLockPatternFull;
    nop

    .line 112
    invoke-virtual {v1}, Lcom/android/settings/password/ConfirmLockPatternFull;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v2

    sget-object v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v2, v3, :cond_0

    .line 113
    const v2, 0x7f0d006b

    goto :goto_0

    .line 114
    :cond_0
    const v2, 0x7f0d0068

    :goto_0
    const/4 v3, 0x0

    .line 111
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a01c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 118
    const v3, 0x7f0a0255

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 119
    const v3, 0x7f0a0133

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 120
    const v3, 0x7f0a0177

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f0a0231

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    .line 122
    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    .line 126
    const v3, 0x7f0a046e

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 128
    .local v3, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v6, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 131
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 132
    const-string v7, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 134
    const-string v7, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    .line 138
    :cond_1
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v8

    .line 138
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 140
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 142
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 143
    sget-object v7, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    invoke-direct {v0, v7}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    .line 145
    if-nez p3, :cond_2

    .line 155
    iget-boolean v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFrp:Z

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 160
    :cond_2
    new-instance v8, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-wide/16 v11, 0xdc

    const/high16 v13, 0x40000000

    const v14, 0x3fa66666

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v15, 0x10c000e

    .line 162
    invoke-static {v9, v15}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 164
    new-instance v8, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const-wide/16 v18, 0x7d

    const/high16 v20, 0x40800000

    const v21, 0x3e99999a

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000f

    .line 166
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    new-instance v9, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$1;

    invoke-direct {v9, v0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)V

    move-object/from16 v16, v8

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v23}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 174
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "check_lock_result"

    .line 177
    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 178
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v8, :cond_3

    .line 179
    new-instance v8, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v8}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const-string v10, "check_lock_result"

    invoke-virtual {v8, v9, v10}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 181
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    .line 183
    :cond_3
    return-object v2
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 527
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    .line 528
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 208
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 212
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    sget-object v2, Lcom/android/settings/password/ConfirmLockPatternFull$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPatternFull$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPatternFull$Stage;)V

    .line 220
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 221
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method protected onShowError()V
    .locals 0

    .line 225
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 229
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 235
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .line 283
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 286
    return-void
.end method
