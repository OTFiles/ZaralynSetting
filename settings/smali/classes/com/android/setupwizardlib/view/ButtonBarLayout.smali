.class public Lcom/android/setupwizardlib/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 44
    return-void
.end method

.method private setStacked(Z)V
    .locals 6
    .param p1, "stacked"    # Z

    .line 79
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    if-ne v0, p1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 84
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v3, "childParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 88
    sget v4, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 91
    :cond_1
    sget v4, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 92
    .local v4, "weight":Ljava/lang/Float;
    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    .end local v4
    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v2
    .end local v3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setOrientation(I)V

    .line 102
    add-int/lit8 v1, v0, -0x1

    .restart local v1
    :goto_2
    if-ltz v1, :cond_4

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 106
    .end local v1
    :cond_4
    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    .line 112
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    .line 113
    iget v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    iget v2, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 114
    .local v1, "paddingHorizontal":I
    nop

    .line 115
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v3

    .line 114
    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    .line 116
    .end local v1
    goto :goto_3

    .line 117
    :cond_5
    iget v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    .line 119
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    .line 121
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v4

    .line 117
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    .line 123
    :goto_3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 50
    .local v0, "widthSize":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "needsRemeasure":Z
    move v3, p1

    .line 55
    .local v3, "initialWidthMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000

    if-ne v4, v5, :cond_0

    .line 58
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 61
    const/4 v2, 0x1

    .line 64
    :cond_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    .line 70
    const/4 v2, 0x1

    .line 73
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    :cond_2
    return-void
.end method
