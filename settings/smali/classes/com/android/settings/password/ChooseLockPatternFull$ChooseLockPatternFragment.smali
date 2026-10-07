.class public Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPatternFull.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentPattern:Ljava/lang/String;

.field private mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mMessageText:Landroid/widget/TextView;

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

.field private mTitleHeaderScrollView:Landroid/widget/ScrollView;

.field protected mTitleText:Landroid/widget/TextView;

.field private mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 160
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 195
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/widget/LockPatternView$Cell;

    .line 197
    invoke-static {v0, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v1, v0

    .line 198
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    aput-object v0, v1, v2

    .line 199
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 200
    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 196
    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 234
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 413
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 415
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 160
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mTitleHeaderScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 761
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 762
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 12

    .line 765
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "ChooseLockPattern"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 772
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    .line 773
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    const-string v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 781
    .local v0, "required":Z
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChallenge:J

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUserId:I

    move v5, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 783
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 294
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 571
    iget v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 577
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 578
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 583
    return-void

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 592
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_3

    .line 594
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 595
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 600
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 605
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 606
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 601
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 213
    :cond_1
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 217
    :goto_0
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 220
    :goto_1
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 789
    if-nez p1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 791
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 792
    const-string v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 796
    .end local v0
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 797
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 611
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->handleLeftButton()V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->handleRightButton()V

    .line 616
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 432
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 433
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ChooseLockPatternFull;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUserId:I

    .line 441
    const-string v1, "for_cred_req_boot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    new-instance v1, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;-><init>()V

    .line 444
    .local v1, "w":Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_require_password"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 446
    .local v12, "required":Z
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 448
    .local v13, "current":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->setBlocking(Z)V

    .line 449
    invoke-virtual {v1, p0}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 450
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 451
    invoke-static {v13}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget v11, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUserId:I

    .line 450
    move-object v3, v1

    move v5, v12

    move-object v10, v13

    invoke-virtual/range {v3 .. v11}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 453
    .end local v1
    .end local v12
    .end local v13
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:hide_drawer"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 454
    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mForFingerprint:Z

    .line 456
    return-void

    .line 435
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 461
    const v0, 0x7f0d0058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    .line 463
    .local v0, "layout":Lcom/android/setupwizardlib/GlifLayout;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    const v1, 0x7f0a042a

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 466
    .local v1, "iconView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 467
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .end local v1
    :cond_0
    goto :goto_0

    .line 470
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080168

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_2
    :goto_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 564
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 565
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 568
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 553
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 554
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 560
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 633
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 635
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 638
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 642
    const-string v0, "currentPattern"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 480
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 481
    const v0, 0x7f0a042f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mTitleText:Landroid/widget/TextView;

    .line 482
    const v0, 0x7f0a01c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 483
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    .line 484
    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 486
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 488
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    .line 487
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 491
    const v0, 0x7f0a01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f0a01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f0a01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f0a0392

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mTitleHeaderScrollView:Landroid/widget/ScrollView;

    .line 499
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    nop

    .line 505
    const v0, 0x7f0a046e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 507
    .local v0, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirm_credentials"

    .line 510
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 511
    .local v2, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 512
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "password"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 513
    const-string v5, "has_challenge"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 515
    const-string v1, "challenge"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChallenge:J

    .line 517
    if-nez p2, :cond_2

    .line 518
    if-eqz v2, :cond_1

    .line 521
    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 522
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v5, 0x37

    const v6, 0x7f120f09

    .line 525
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUserId:I

    .line 523
    invoke-virtual {v1, v5, v6, v4, v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    .line 527
    .local v1, "launchedConfirmationActivity":Z
    if-nez v1, :cond_0

    .line 528
    sget-object v4, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 530
    .end local v1
    :cond_0
    goto :goto_0

    .line 531
    :cond_1
    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 535
    :cond_2
    const-string v1, "chosenPattern"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "patternString":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 537
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 540
    :cond_3
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 541
    const-string v4, "currentPattern"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 543
    :cond_4
    invoke-static {}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v4

    const-string v5, "uiStage"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "save_and_finish_worker"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;

    .line 549
    .end local v1
    :goto_0
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 223
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .line 227
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    return-void
.end method

.method protected updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "stage"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
    .param p2, "footerLeftButton"    # Landroid/widget/TextView;

    .line 748
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 749
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 751
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    iget v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 755
    :goto_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 654
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 656
    .local v0, "previousStage":Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 660
    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->headerMessage:I

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 664
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 662
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 668
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->messageForFingerprint:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->message:I

    .line 669
    .local v1, "message":I
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 670
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 672
    :cond_2
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 674
    :goto_2
    iget v4, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->footerMessage:I

    if-ne v4, v3, :cond_3

    .line 675
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 677
    :cond_3
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 680
    :goto_3
    sget-object v3, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-eq p1, v3, :cond_6

    sget-object v3, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne p1, v3, :cond_4

    goto :goto_4

    .line 687
    :cond_4
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 688
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 691
    :cond_5
    sget-object v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v2, :cond_7

    .line 692
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mTitleText:Landroid/widget/TextView;

    const v3, 0x7f12081e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 681
    :cond_6
    :goto_4
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 682
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 683
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    const v5, 0x7f04006a

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 684
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    .end local v3
    .end local v4
    nop

    .line 697
    :cond_7
    :goto_5
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;Landroid/widget/TextView;)V

    .line 699
    iget-object v2, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 700
    iget-object v2, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 703
    iget-boolean v2, p1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_8

    .line 704
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_6

    .line 706
    :cond_8
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 711
    :goto_6
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 712
    const/4 v2, 0x0

    .line 714
    .local v2, "announceAlways":Z
    sget-object v3, Lcom/android/settings/password/ChooseLockPatternFull$1;->$SwitchMap$com$android$settings$password$ChooseLockPatternFull$ChooseLockPatternFragment$Stage:[I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_7

    .line 732
    :pswitch_0    # 0x6
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 733
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 734
    const/4 v2, 0x1

    .line 735
    goto :goto_7

    .line 729
    :pswitch_1    # 0x5
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 730
    goto :goto_7

    .line 727
    :pswitch_2    # 0x4
    goto :goto_7

    .line 722
    :pswitch_3    # 0x3
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 723
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 724
    const/4 v2, 0x1

    .line 725
    goto :goto_7

    .line 719
    :pswitch_4    # 0x2
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 720
    goto :goto_7

    .line 716
    :pswitch_5    # 0x1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 717
    nop

    .line 742
    :goto_7
    if-ne v0, p1, :cond_9

    if-eqz v2, :cond_a

    .line 743
    :cond_9
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 745
    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method
