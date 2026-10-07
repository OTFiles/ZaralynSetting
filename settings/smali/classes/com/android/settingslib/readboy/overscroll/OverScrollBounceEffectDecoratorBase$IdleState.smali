.class public Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;
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
    name = "IdleState"
.end annotation


# instance fields
.field final mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field final synthetic this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    .line 133
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 135
    return-void
.end method


# virtual methods
.method public getStateId()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public handleEntryTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 4
    .param p1, "fromState"    # Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 174
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->getStateId()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->access$002(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;Z)Z

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStateListener:Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-interface {p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;->getStateId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->getStateId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;->onOverScrollStateChange(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;II)V

    .line 180
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v1, v0, p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 147
    return v2

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {v1}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->isInAbsoluteStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    .line 152
    invoke-interface {v1}, Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;->isInAbsoluteEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    if-gez v1, :cond_3

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    iput v2, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    .line 157
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:I

    iput v2, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:I

    .line 159
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 160
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 163
    :cond_3
    return v2
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 168
    const/4 v0, 0x0

    return v0
.end method
