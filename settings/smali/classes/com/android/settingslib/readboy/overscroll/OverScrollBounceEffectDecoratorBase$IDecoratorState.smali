.class public interface abstract Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IDecoratorState"
.end annotation


# virtual methods
.method public abstract getStateId()I
.end method

.method public abstract handleEntryTransition(Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
.end method

.method public abstract handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
.end method
