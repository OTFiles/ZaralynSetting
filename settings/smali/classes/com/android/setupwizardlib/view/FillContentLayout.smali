.class public Lcom/android/setupwizardlib/view/FillContentLayout;
.super Landroid/widget/FrameLayout;
.source "FillContentLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwFillContentLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/FillContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method private static getMaxSizeMeasureSpec(III)I
    .locals 4
    .param p0, "maxSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 110
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    .local v0, "size":I
    const/high16 v2, 0x40000000

    if-ltz p2, :cond_0

    .line 114
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 115
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 117
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 118
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 121
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 123
    :cond_2
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout_android_maxHeight:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxHeight:I

    .line 70
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxWidth:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private measureIllustrationChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxWidth:I

    .line 97
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 96
    invoke-static {v1, v2, v3}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v1

    .line 100
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxHeight:I

    .line 101
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 100
    invoke-static {v2, v3, v4}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v2

    .line 105
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/view/FillContentLayout;->setMeasuredDimension(II)V

    .line 84
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildCount()I

    move-result v0

    .line 85
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/setupwizardlib/view/FillContentLayout;->measureIllustrationChild(Landroid/view/View;II)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1
    :cond_0
    return-void
.end method
