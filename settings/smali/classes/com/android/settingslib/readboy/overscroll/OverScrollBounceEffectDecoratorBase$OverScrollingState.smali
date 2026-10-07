.class public Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverScrollingState"
.end annotation


# instance fields
.field mCurrDragState:I

.field final mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field protected final mTouchDragRatioBck:F

.field protected final mTouchDragRatioFwd:F

.field final synthetic this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;FF)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
    .param p2, "touchDragRatioFwd"    # F
    .param p3, "touchDragRatioBck"    # F

    .line 202
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 204
    iput p2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    .line 205
    iput p3, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    .line 206
    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    return v0
.end method

.method public handleEntryTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 4
    .param p1, "fromState"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 269
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    .line 271
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    goto :goto_1

    .line 273
    :cond_1
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->getStateId()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    .line 276
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->getStateId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;II)V

    .line 277
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 222
    return v3

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v2, v0, p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    return v3

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDeltaOffset:F

    iget-object v4, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v4, v4, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    :goto_0
    div-float/2addr v2, v4

    .line 232
    .local v2, "deltaOffset":F
    iget-object v4, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v4, v4, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    add-float/2addr v4, v2

    .line 237
    .local v4, "newOffset":F
    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpg-float v5, v4, v5

    if-lez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v1, v0, v5, p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 240
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v6, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V

    .line 242
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 243
    return v3

    .line 246
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 250
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 251
    .local v5, "dt":J
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_7

    .line 252
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    long-to-float v7, v5

    div-float v7, v2, v7

    iput v7, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v0, v4}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    .line 256
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mUpdateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;

    iget-object v7, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget v8, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    invoke-interface {v1, v7, v8, v4}, Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;->onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V

    .line 258
    return v3
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 263
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 264
    const/4 v0, 0x0

    return v0
.end method
