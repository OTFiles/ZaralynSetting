.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field private mAnimationCancelled:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    .line 81
    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    .line 82
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 84
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 85
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 82
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 372
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 393
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 400
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 418
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # [B

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private animateFlash()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 237
    return-void
.end method

.method private animateProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .line 223
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 227
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 226
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 228
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 233
    return-void
.end method

.method private clearError()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 370
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .line 319
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 320
    return v0

    .line 322
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 323
    .local v0, "progress":I
    const/16 v1, 0x2710

    mul-int/2addr v1, v0

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method public static synthetic lambda$clearError$0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private launchFinish([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 245
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 246
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 249
    const v1, 0x7f010023

    const v2, 0x7f010024

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overridePendingTransition(II)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 251
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 337
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 357
    :cond_1
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .line 327
    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    .line 328
    .local v0, "dlg":Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 333
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 176
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 181
    return-void
.end method

.method private updateDescription()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_0
    return-void
.end method

.method private updateProgress(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 306
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 307
    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 306
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    .line 308
    .local v0, "progress":I
    if-eqz p1, :cond_0

    .line 309
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 312
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 316
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 434
    const/16 v0, 0xf0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 205
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03de

    if-eq v0, v1, :cond_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 214
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 216
    nop

    .line 220
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 108
    const v0, 0x7f120c92

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 109
    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 113
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    .line 115
    const v0, 0x7f0a03de

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 116
    .local v0, "skipButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 119
    .local v1, "fingerprintDrawable":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 120
    const v2, 0x7f0a0193

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 121
    nop

    .line 122
    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 123
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 124
    const v2, 0x10c000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    const v2, 0x10c000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    const v2, 0x10c000f

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 149
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 279
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 287
    const v0, 0x7f120c80

    goto :goto_0

    .line 283
    :cond_0
    const v0, 0x7f120c81

    .line 284
    .local v0, "msgId":I
    nop

    .line 287
    :goto_0
    nop

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 292
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 171
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 153
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 155
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 162
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 165
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 197
    :cond_2
    return-void
.end method
