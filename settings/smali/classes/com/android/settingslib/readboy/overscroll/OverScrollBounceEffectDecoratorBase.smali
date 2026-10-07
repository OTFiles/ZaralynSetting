.class public abstract Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;,
        Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
    }
.end annotation


# instance fields
.field protected final mBounceBackState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

.field protected mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

.field protected final mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

.field private mIsFastScroll:Z

.field private mIsOverScrollDraging:Z

.field protected final mOverScrollingState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

.field protected final mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

.field protected mStateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;

.field protected mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

.field protected mVelocity:F

.field protected final mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;FFF)V
    .locals 1
    .param p1, "viewAdapter"    # Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;
    .param p2, "decelerateFactor"    # F
    .param p3, "touchDragRatioFwd"    # F
    .param p4, "touchDragRatioBck"    # F

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-direct {v0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsOverScrollDraging:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsFastScroll:Z

    .line 49
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollStateListenerStub;

    invoke-direct {v0}, Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollStateListenerStub;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;

    .line 50
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollUpdateListenerStub;

    invoke-direct {v0}, Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollUpdateListenerStub;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    .line 425
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    .line 427
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;-><init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;F)V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    .line 428
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;-><init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;FF)V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    .line 429
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-direct {v0, p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;-><init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;)V

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    .line 431
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 433
    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->attach()V

    .line 434
    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsOverScrollDraging:Z

    return p1
.end method


# virtual methods
.method protected attach()V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 516
    return-void
.end method

.method public checkIsFastScroll(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 438
    iput-boolean v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsFastScroll:Z

    .line 440
    :cond_0
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsFastScroll:Z

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 442
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsFastScroll:Z

    .line 445
    :cond_3
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsFastScroll:Z

    return v0
.end method

.method protected abstract createAnimationAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.end method

.method protected abstract createMotionAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentDraging()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsOverScrollDraging:Z

    return v0
.end method

.method protected issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 508
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 509
    .local v0, "oldState":Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 510
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    invoke-interface {v1, v0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleEntryTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 511
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 451
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0    # 0x2
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->checkIsFastScroll(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    return v1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    invoke-interface {v0, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 460
    :pswitch_1    # 0x3 0x1
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->checkIsFastScroll(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    return v1

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    invoke-interface {v0, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 466
    :pswitch_2    # 0x0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    instance-of v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    check-cast v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;->stopBackAnimation(Landroid/view/View;F)V

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->resetCurrentDraging()V

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->checkIsFastScroll(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 474
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
        :pswitch_1    # 0x3
    .end packed-switch
.end method

.method public resetCurrentDraging()V
    .locals 1

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIsOverScrollDraging:Z

    .line 495
    return-void
.end method

.method protected abstract translateView(Landroid/view/View;F)V
.end method

.method protected abstract translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method
