.class public Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:I

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFractionCenterX:F

.field private final mFractionCenterY:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxPulseRadius:I

.field private final mPulsePaint:Landroid/graphics/Paint;

.field private mPulseRadius:F

.field private mRadiusAnimator:Landroid/animation/ValueAnimator;

.field private final mStartPhaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090007

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    .line 65
    invoke-static {p1}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "colorAccent":I
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    const v1, 0x10c000e

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 38
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .line 38
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .line 38
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 38
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method private drawPulse(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method private getCenterX()F
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCenterY()F
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private startAlphaAnimation()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 177
    return-void

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method private startPhase()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V

    .line 122
    return-void
.end method

.method private startRadiusAnimation()V
    .locals 3

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 154
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->drawPulse(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->drawDot(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method public pauseAnimation()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 117
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    .line 101
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    :cond_1
    return-void
.end method
