.class public final Lcom/android/settings/widget/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# instance fields
.field mAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 47
    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lcom/android/settings/R$styleable;->AspectRatioFrameLayout:[I

    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 64
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 65
    .local v1, "height":I
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 69
    .local v2, "viewAspectRatio":F
    iget v3, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    sub-float/2addr v3, v2

    .line 70
    .local v3, "aspectRatioDiff":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 72
    return-void

    .line 75
    :cond_1
    int-to-float v4, v1

    iget v5, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 77
    const/high16 v4, 0x40000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 78
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 77
    invoke-super {p0, v5, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 79
    return-void

    .line 66
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRadio"    # F

    .line 57
    iput p1, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 58
    return-void
.end method
