.class public Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BounceBackState"
.end annotation


# instance fields
.field protected final mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

.field protected mBounceBackAnim:Landroid/animation/Animator;

.field protected final mBounceBackInterpolator:Landroid/view/animation/Interpolator;

.field protected final mDecelerateFactor:F

.field protected final mDoubleDecelerateFactor:F

.field final synthetic this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;F)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
    .param p2, "decelerateFactor"    # F

    .line 296
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    .line 297
    iput p2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDecelerateFactor:F

    .line 298
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDoubleDecelerateFactor:F

    .line 300
    invoke-virtual {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->createAnimationAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    .line 301
    return-void
.end method


# virtual methods
.method protected createAnimator()Landroid/animation/Animator;
    .locals 9

    .line 370
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->init(Landroid/view/View;)V

    .line 378
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-gtz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-gez v1, :cond_1

    goto :goto_1

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    neg-float v1, v1

    iget v3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDecelerateFactor:F

    div-float/2addr v1, v3

    .line 384
    .local v1, "slowdownDuration":F
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move v1, v2

    .line 387
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v3, v3, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDoubleDecelerateFactor:F

    div-float/2addr v2, v3

    .line 388
    .local v2, "slowdownDistance":F
    iget-object v3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v3, v3, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mAbsOffset:F

    add-float/2addr v3, v2

    .line 390
    .local v3, "slowdownEndOffset":F
    float-to-int v4, v1

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->createSlowdownAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 394
    .local v4, "slowdownAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0, v3}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 397
    .local v5, "bounceBackAnim":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 398
    .local v6, "wholeAnim":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 399
    return-object v6

    .line 379
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mAbsOffset:F

    invoke-virtual {p0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method protected createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "startOffset"    # F

    .line 412
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, "view":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mMaxOffset:F

    div-float/2addr v1, v2

    const/high16 v2, 0x44160000    # 600.0f

    mul-float/2addr v1, v2

    .line 416
    .local v1, "bounceBackDuration":F
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget-object v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mProperty:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v4, v4, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 417
    .local v2, "bounceBackAnim":Landroid/animation/ObjectAnimator;
    float-to-int v3, v1

    const/16 v4, 0x190

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 418
    iget-object v3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    return-object v2
.end method

.method protected createSlowdownAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slowdownDuration"    # I
    .param p3, "slowdownEndOffset"    # F

    .line 403
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 404
    .local v0, "slowdownAnim":Landroid/animation/ObjectAnimator;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 407
    return-object v0
.end method

.method public getStateId()I
    .locals 1

    .line 305
    const/4 v0, 0x3

    return v0
.end method

.method public handleEntryTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 4
    .param p1, "fromState"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 311
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    goto :goto_0

    .line 313
    :cond_0
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->getStateId()I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    .line 316
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->getStateId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;II)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->createAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackAnim:Landroid/animation/Animator;

    .line 319
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackAnim:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 322
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 365
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 349
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    instance-of v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 364
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    instance-of v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V

    .line 362
    :goto_0
    return-void
.end method

.method public stopBackAnimation(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .line 325
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 327
    .local v0, "mCurrDragState":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v1, p1, v2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    .line 328
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V

    .line 329
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 333
    return-void
.end method
