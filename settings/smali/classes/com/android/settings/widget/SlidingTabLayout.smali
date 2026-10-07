.class public final Lcom/android/settings/widget/SlidingTabLayout;
.super Landroid/widget/FrameLayout;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;
    }
.end annotation


# instance fields
.field private final mIndicatorView:Landroid/view/View;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field private final mTitleView:Landroid/widget/LinearLayout;

.field private mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SlidingTabLayout;

    .line 35
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SlidingTabLayout;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/SlidingTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SlidingTabLayout;->onViewPagerPageChanged(IF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/SlidingTabLayout;)Lcom/android/settings/widget/RtlCompatibleViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SlidingTabLayout;

    .line 35
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-object v0
.end method

.method private getIndicatorLeft()I
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "selectedTitle":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 144
    .local v1, "left":I
    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "nextTitle":Landroid/view/View;
    iget v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    iget v5, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    sub-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 149
    .end local v2
    :cond_0
    return v1
.end method

.method private isRtlMode()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onViewPagerPageChanged(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 119
    iput p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    .line 120
    iput p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result v0

    .line 123
    .local v0, "leftIndicator":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 124
    return-void
.end method

.method private populateTabStrip()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 129
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d01ae

    iget-object v5, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    .local v3, "tabTitleView":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v4}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 110
    .local v0, "titleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    .line 113
    return-void

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, "indicatorBottom":I
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 88
    .local v1, "indicatorHeight":I
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 89
    .local v2, "indicatorWidth":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getMeasuredWidth()I

    move-result v3

    .line 90
    .local v3, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getPaddingLeft()I

    move-result v4

    .line 91
    .local v4, "leftPadding":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getPaddingRight()I

    move-result v5

    .line 93
    .local v5, "rightPadding":I
    iget-object v6, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 93
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    iget-object v6, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int v7, v3, v2

    sub-int v8, v0, v1

    invoke-virtual {v6, v7, v8, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v6, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int v7, v0, v1

    invoke-virtual {v6, v9, v7, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 105
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 74
    .local v0, "titleCount":I
    if-lez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 75
    const/high16 v2, 0x40000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 77
    .local v1, "width":I
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 77
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 79
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    .line 81
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method

.method public setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/settings/widget/SlidingTabLayout;Lcom/android/settings/widget/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->populateTabStrip()V

    .line 68
    :cond_0
    return-void
.end method
