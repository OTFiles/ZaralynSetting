.class public Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;
.super Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.source "VerticalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MotionAttributesVertical"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22
    return v1

    .line 26
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    sub-float/2addr v0, v2

    .line 27
    .local v0, "dy":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    sub-float/2addr v2, v3

    .line 29
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 30
    return v1

    .line 34
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41b80000    # 23.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 35
    return v1

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;->mAbsOffset:F

    .line 40
    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;->mDeltaOffset:F

    .line 41
    iget v1, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;->mDeltaOffset:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$MotionAttributesVertical;->mDir:I

    .line 43
    const/4 v1, 0x1

    return v1
.end method
