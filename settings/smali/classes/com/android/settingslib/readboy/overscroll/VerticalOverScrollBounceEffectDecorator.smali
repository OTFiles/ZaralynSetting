.class public Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;
.super Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;
.source "VerticalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;,
        Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;)V
    .locals 3
    .param p1, "viewAdapter"    # Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;

    .line 69
    const v0, 0x400ccccd

    const v1, 0x3f4ccccd

    const v2, -0x40333333

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;FFF)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;FFF)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;
    .param p2, "touchDragRatioFwd"    # F
    .param p3, "touchDragRatioBck"    # F
    .param p4, "decelerateFactor"    # F

    .line 83
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;FFF)V

    .line 84
    return-void
.end method


# virtual methods
.method protected createAnimationAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
    .locals 1

    .line 93
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;

    invoke-direct {v0}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;-><init>()V

    return-object v0
.end method

.method protected createMotionAttributes()Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;

    invoke-direct {v0}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;-><init>()V

    return-object v0
.end method

.method protected translateView(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    return-void
.end method

.method protected translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 105
    return-void
.end method
