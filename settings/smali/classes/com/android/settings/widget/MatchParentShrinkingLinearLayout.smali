.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 110
    const v3, 0x800033

    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 169
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 188
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 191
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 192
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 193
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    .line 196
    :cond_0
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 197
    if-ltz v4, :cond_1

    .line 198
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    .line 201
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 202
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    .line 206
    :cond_2
    const/4 v5, 0x4

    const/high16 v6, -0x40800000

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    .line 208
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 211
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 213
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    .line 215
    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    .line 217
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 961
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 963
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 964
    nop

    .line 965
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 967
    .local v9, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 970
    iget v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 971
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 974
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 975
    iput v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 961
    .end local v8
    .end local v9
    .end local v10
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    .end local v1
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1340
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1341
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1443
    instance-of v0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 359
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 360
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 363
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 367
    .local v4, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_1

    .line 370
    .end local v5
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 372
    .restart local v5
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 381
    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    :goto_2
    goto :goto_3

    .line 384
    .end local v3
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 388
    .local v3, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    .line 391
    .local v4, "position":I
    move v3, v4

    goto :goto_3

    .end local v4
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 394
    .local v3, "position":I
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 396
    .end local v2
    .end local v3
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 332
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 335
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 338
    .local v3, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 339
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 332
    .end local v2
    .end local v3
    .end local v4
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 347
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2
    .local v3, "bottom":I
    goto :goto_1

    .line 350
    .end local v3
    .restart local v2
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 351
    .local v3, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    .line 353
    .end local v2
    .local v3, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 355
    .end local v1
    .end local v3
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 399
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 399
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 405
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 405
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1454
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1455
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1456
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1457
    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1458
    const-string v0, "measurement:orientation"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1459
    const-string v0, "measurement:gravity"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1460
    const-string v0, "measurement:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1461
    const-string v0, "layout:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1462
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1463
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 3

    .line 1426
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1428
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1429
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1431
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1413
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1436
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1448
    const-class v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 467
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 476
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 479
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 480
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 482
    return v2

    .line 486
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 498
    .local v2, "childTop":I
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 499
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 500
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    .line 501
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    .end local v3
    goto :goto_0

    .line 503
    .restart local v3
    :cond_3
    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    .line 504
    goto :goto_0

    .line 507
    :cond_4
    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 514
    .end local v3
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 515
    .local v3, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v4, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 472
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1364
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 576
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 614
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 616
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 617
    :cond_3
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 620
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 621
    const/4 v0, 0x1

    .line 622
    goto :goto_1

    .line 619
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 625
    .end local v1
    :cond_5
    :goto_1
    return v0

    .line 627
    .end local v0
    :cond_6
    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 31
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    move-object/from16 v6, p0

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v9

    .line 1217
    .local v9, "isLayoutRtl":Z
    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    .line 1223
    .local v10, "paddingTop":I
    sub-int v13, p4, p2

    .line 1224
    .local v13, "height":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v14, v13, v0

    .line 1227
    .local v14, "childBottom":I
    sub-int v0, v13, v10

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v15, v0, v1

    .line 1229
    .local v15, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v5

    .line 1231
    .local v5, "count":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v4, v0, v1

    .line 1232
    .local v4, "majorGravity":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v16, v0, 0x70

    .line 1234
    .local v16, "minorGravity":I
    iget-boolean v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 1236
    .local v2, "baselineAligned":Z
    iget-object v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxAscent:[I

    .line 1237
    .local v1, "maxAscent":[I
    iget-object v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxDescent:[I

    .line 1239
    .local v0, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1240
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    const/16 v17, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    .line 1253
    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    .end local v3
    .local v11, "childLeft":I
    .local v18, "layoutDirection":I
    :goto_0
    move/from16 v18, v3

    goto :goto_1

    .line 1243
    .end local v11
    .end local v18
    .restart local v3
    :cond_0
    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    add-int v11, v11, p3

    sub-int v11, v11, p1

    iget v12, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v11, v12

    .line 1244
    .restart local v11
    goto :goto_0

    .line 1248
    .end local v11
    :cond_1
    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v12, p3, p1

    move/from16 v18, v3

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .end local v3
    .restart local v18
    sub-int/2addr v12, v3

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 1249
    .restart local v11
    nop

    .line 1253
    :goto_1
    move v3, v11

    .line 1257
    .end local v11
    .local v3, "childLeft":I
    const/4 v11, 0x0

    .line 1258
    .local v11, "start":I
    const/4 v12, 0x1

    .line 1260
    .local v12, "dir":I
    if-eqz v9, :cond_2

    .line 1261
    add-int/lit8 v11, v5, -0x1

    .line 1262
    const/4 v12, -0x1

    .line 1265
    :cond_2
    const/16 v19, 0x0

    move/from16 v20, v3

    .end local v3
    .local v19, "i":I
    .local v20, "childLeft":I
    :goto_2
    move/from16 v3, v19

    .end local v19
    .local v3, "i":I
    if-ge v3, v5, :cond_d

    .line 1266
    mul-int v19, v12, v3

    add-int v7, v11, v19

    .line 1267
    .local v7, "childIndex":I
    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1269
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_3

    .line 1270
    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v19

    add-int v20, v20, v19

    .line 1265
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    goto/16 :goto_5

    .line 1271
    :cond_3
    move/from16 v21, v3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    .end local v3
    .local v21, "i":I
    move/from16 v22, v4

    const/16 v4, 0x8

    .end local v4
    .local v22, "majorGravity":I
    if-eq v3, v4, :cond_c

    .line 1272
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1273
    .local v19, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1274
    .local v23, "childHeight":I
    const/4 v3, -0x1

    .line 1276
    .local v3, "childBaseline":I
    nop

    .line 1277
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1279
    .local v4, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    move/from16 v24, v3

    const/4 v3, -0x1

    .end local v3
    .local v24, "childBaseline":I
    if-eqz v2, :cond_4

    move/from16 v25, v2

    iget v2, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .end local v2
    .local v25, "baselineAligned":Z
    if-eq v2, v3, :cond_5

    .line 1280
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v2

    .end local v24
    .local v2, "childBaseline":I
    goto :goto_3

    .line 1283
    .end local v25
    .local v2, "baselineAligned":Z
    .restart local v24
    :cond_4
    move/from16 v25, v2

    .end local v2
    .restart local v25
    :cond_5
    move/from16 v2, v24

    .end local v24
    .local v2, "childBaseline":I
    :goto_3
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1284
    .local v3, "gravity":I
    if-gez v3, :cond_6

    .line 1285
    move/from16 v3, v16

    .line 1288
    .end local v3
    .local v24, "gravity":I
    :cond_6
    move/from16 v24, v3

    and-int/lit8 v3, v24, 0x70

    move/from16 v27, v5

    .end local v5
    .local v27, "count":I
    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x30

    if-eq v3, v5, :cond_8

    const/16 v5, 0x50

    if-eq v3, v5, :cond_7

    .line 1320
    move v3, v10

    goto :goto_4

    .line 1313
    :cond_7
    sub-int v3, v14, v23

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1314
    .local v3, "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1315
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    .line 1316
    .local v5, "descent":I
    aget v26, v0, v17

    sub-int v26, v26, v5

    sub-int v3, v3, v26

    .line 1317
    .end local v5
    goto :goto_4

    .line 1290
    .end local v3
    :cond_8
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    .line 1291
    .restart local v3
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1292
    const/4 v5, 0x1

    aget v26, v1, v5

    sub-int v26, v26, v2

    add-int v3, v3, v26

    goto :goto_4

    .line 1308
    .end local v3
    :cond_9
    sub-int v3, v15, v23

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v10

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1310
    .restart local v3
    nop

    .line 1320
    :cond_a
    :goto_4
    nop

    .line 1324
    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1325
    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int v20, v20, v5

    .line 1328
    :cond_b
    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int v20, v20, v5

    .line 1329
    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v20, v5

    move-object/from16 v26, v0

    move-object v0, v6

    .end local v0
    .local v26, "maxDescent":[I
    move-object/from16 v28, v1

    move-object v1, v8

    .end local v1
    .local v28, "maxAscent":[I
    move/from16 v29, v2

    move v2, v5

    .end local v2
    .local v29, "childBaseline":I
    move-object v5, v4

    move/from16 v4, v19

    .end local v4
    .local v5, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    move/from16 v30, v9

    move-object v9, v5

    move/from16 v5, v23

    .end local v5
    .local v9, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .local v30, "isLayoutRtl":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1331
    iget v0, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v19, v0

    .line 1332
    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1334
    invoke-virtual {v6, v8, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v21, v0

    .end local v7
    .end local v8
    .end local v9
    .end local v19
    .end local v21
    .end local v23
    .end local v24
    .end local v29
    .local v3, "i":I
    goto :goto_5

    .line 1265
    .end local v3
    .end local v25
    .end local v26
    .end local v27
    .end local v28
    .end local v30
    .restart local v0
    .restart local v1
    .local v2, "baselineAligned":Z
    .local v5, "count":I
    .local v9, "isLayoutRtl":Z
    .restart local v21
    :cond_c
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v27, v5

    move/from16 v30, v9

    move/from16 v3, v21

    .end local v0
    .end local v1
    .end local v2
    .end local v5
    .end local v9
    .end local v21
    .restart local v3
    .restart local v25
    .restart local v26
    .restart local v27
    .restart local v28
    .restart local v30
    :goto_5
    const/4 v0, 0x1

    add-int/lit8 v19, v3, 0x1

    .end local v3
    .local v19, "i":I
    move/from16 v4, v22

    move/from16 v2, v25

    move-object/from16 v0, v26

    move/from16 v5, v27

    move-object/from16 v1, v28

    move/from16 v9, v30

    goto/16 :goto_2

    .line 1337
    .end local v19
    .end local v22
    .end local v25
    .end local v26
    .end local v27
    .end local v28
    .end local v30
    .restart local v0
    .restart local v1
    .restart local v2
    .local v4, "majorGravity":I
    .restart local v5
    .restart local v9
    :cond_d
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    .end local v0
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    .end local v9
    .restart local v22
    .restart local v25
    .restart local v26
    .restart local v27
    .restart local v28
    .restart local v30
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 24
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    move-object/from16 v6, p0

    .line 1111
    iget v9, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    .line 1117
    .local v9, "paddingLeft":I
    sub-int v10, p3, p1

    .line 1118
    .local v10, "width":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v11, v10, v0

    .line 1121
    .local v11, "childRight":I
    sub-int v0, v10, v9

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v12, v0, v1

    .line 1123
    .local v12, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v13

    .line 1125
    .local v13, "count":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v5, v0, 0x70

    .line 1126
    .local v5, "majorGravity":I
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v14, v0, v1

    .line 1128
    .local v14, "minorGravity":I
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1

    const/16 v0, 0x50

    if-eq v5, v0, :cond_0

    .line 1141
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 1131
    :cond_0
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1132
    .local v0, "childTop":I
    goto :goto_0

    .line 1136
    .end local v0
    :cond_1
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1137
    .restart local v0
    nop

    .line 1141
    :goto_0
    nop

    .line 1145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move v4, v1

    .end local v1
    .local v4, "i":I
    if-ge v4, v13, :cond_8

    .line 1146
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1147
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1148
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1145
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    goto/16 :goto_3

    .line 1149
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_7

    .line 1150
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1151
    .local v16, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1153
    .local v17, "childHeight":I
    nop

    .line 1154
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1156
    .local v1, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v2, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1157
    .local v2, "gravity":I
    if-gez v2, :cond_3

    .line 1158
    move v2, v14

    .line 1160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v7

    .line 1161
    .local v7, "layoutDirection":I
    invoke-static {v2, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    .line 1162
    .local v18, "absoluteGravity":I
    move/from16 v19, v2

    and-int/lit8 v2, v18, 0x7

    .end local v2
    .local v19, "gravity":I
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5
    .local v20, "majorGravity":I
    if-eq v2, v5, :cond_5

    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    .line 1174
    iget v2, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    goto :goto_2

    .line 1169
    :cond_4
    sub-int v2, v11, v16

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1170
    .local v2, "childLeft":I
    goto :goto_2

    .line 1164
    .end local v2
    :cond_5
    sub-int v2, v12, v16

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1166
    .restart local v2
    nop

    .line 1174
    :goto_2
    move/from16 v15, v19

    .line 1178
    .end local v19
    .local v15, "gravity":I
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1179
    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v0, v5

    .line 1182
    :cond_6
    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v19, v0, v5

    .line 1183
    .end local v0
    .local v19, "childTop":I
    invoke-virtual {v6, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v19, v0

    move-object v0, v6

    move/from16 v22, v7

    const/16 v21, 0x1

    move-object v7, v1

    move-object v1, v3

    .end local v1
    .local v7, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .local v22, "layoutDirection":I
    move-object v8, v3

    move v3, v5

    .end local v3
    .local v8, "child":Landroid/view/View;
    move v5, v4

    move/from16 v4, v16

    .end local v4
    .local v5, "i":I
    move/from16 v23, v9

    move v9, v5

    move/from16 v5, v17

    .end local v5
    .local v9, "i":I
    .local v23, "paddingLeft":I
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1185
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1187
    invoke-virtual {v6, v8, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v4, v9, v0

    .line 1145
    .end local v2
    .end local v7
    .end local v8
    .end local v9
    .end local v15
    .end local v16
    .end local v17
    .end local v18
    .end local v22
    .restart local v4
    move/from16 v0, v19

    goto :goto_3

    .end local v19
    .end local v20
    .end local v23
    .restart local v0
    .local v5, "majorGravity":I
    .local v9, "paddingLeft":I
    :cond_7
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    move v9, v4

    .end local v5
    .end local v9
    .restart local v20
    .restart local v23
    :goto_3
    add-int/lit8 v1, v4, 0x1

    .end local v4
    .local v1, "i":I
    move/from16 v5, v20

    move/from16 v9, v23

    goto/16 :goto_1

    .line 1190
    .end local v1
    .end local v20
    .end local v23
    .restart local v5
    .restart local v9
    :cond_8
    move/from16 v20, v5

    move/from16 v23, v9

    .end local v5
    .end local v9
    .restart local v20
    .restart local v23
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1062
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1064
    return-void
.end method

.method measureHorizontal(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "horizontal mode not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 58
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 642
    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 645
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 646
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 647
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 648
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 650
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 652
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 653
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 655
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 656
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 658
    .local v14, "skippedMeasure":Z
    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 659
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 661
    .local v10, "useLargestChild":Z
    const/high16 v17, -0x80000000

    .line 664
    .local v17, "largestChildHeight":I
    move/from16 v18, v6

    move v6, v2

    move v2, v0

    const/4 v0, 0x0

    move/from16 v57, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v57

    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    :goto_0
    move/from16 v19, v4

    .end local v4
    .local v19, "weightedMaxWidth":I
    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v0, v11, :cond_12

    .line 665
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 667
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 668
    move/from16 v25, v1

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .end local v1
    .local v25, "childState":I
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v20

    add-int v1, v1, v20

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 669
    nop

    .line 664
    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v4, v19

    move/from16 v1, v25

    goto/16 :goto_b

    .line 672
    .end local v25
    .restart local v1
    :cond_0
    move/from16 v25, v1

    .end local v1
    .restart local v25
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v26, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 673
    .end local v2
    .local v26, "maxWidth":I
    invoke-virtual {v7, v4, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    nop

    .line 664
    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v4, v19

    move/from16 v1, v25

    move/from16 v2, v26

    goto/16 :goto_b

    .line 677
    :cond_1
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 681
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 683
    .local v2, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    add-float v21, v5, v1

    .line 685
    .end local v5
    .local v21, "totalWeight":F
    const/high16 v5, 0x40000000

    if-ne v13, v5, :cond_3

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_3

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_3

    .line 689
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 690
    .local v1, "totalLength":I
    iget v5, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    move/from16 v27, v0

    iget v0, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    .end local v0
    .local v27, "i":I
    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 691
    const/4 v14, 0x1

    .line 692
    .end local v1
    nop

    .line 730
    move-object v0, v2

    move-object v8, v4

    move v9, v6

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v30, v14

    move/from16 v35, v19

    move/from16 v14, v25

    move/from16 v32, v26

    move/from16 v29, v27

    goto/16 :goto_3

    .line 693
    .end local v27
    .restart local v0
    :cond_3
    move/from16 v27, v0

    .end local v0
    .restart local v27
    const/high16 v0, -0x80000000

    .line 695
    .local v0, "oldHeight":I
    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_4

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_4

    .line 700
    const/4 v0, 0x0

    .line 701
    const/4 v1, -0x2

    iput v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 708
    .end local v0
    .local v5, "oldHeight":I
    :cond_4
    move v5, v0

    const/16 v24, 0x0

    .line 710
    cmpl-float v0, v21, v23

    if-nez v0, :cond_5

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 708
    move/from16 v28, v0

    goto :goto_1

    .line 710
    :cond_5
    nop

    .line 708
    const/16 v28, 0x0

    :goto_1
    move/from16 v1, v27

    move-object v0, v7

    .end local v27
    .local v1, "i":I
    move/from16 v29, v1

    move/from16 v30, v14

    move/from16 v14, v25

    move-object v1, v4

    .end local v1
    .end local v25
    .local v14, "childState":I
    .local v29, "i":I
    .local v30, "skippedMeasure":Z
    move-object/from16 v31, v2

    move/from16 v32, v26

    move/from16 v2, v29

    .end local v2
    .end local v26
    .local v31, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .local v32, "maxWidth":I
    move/from16 v33, v13

    move v13, v3

    move v3, v8

    .end local v3
    .local v13, "largestChildHeight":I
    .local v33, "heightMode":I
    move-object v8, v4

    move/from16 v34, v11

    move/from16 v35, v19

    const/high16 v11, -0x80000000

    move/from16 v4, v24

    .end local v4
    .end local v11
    .end local v19
    .local v8, "child":Landroid/view/View;
    .local v34, "count":I
    .local v35, "weightedMaxWidth":I
    move v11, v5

    move v5, v9

    .end local v5
    .local v11, "oldHeight":I
    move v9, v6

    move/from16 v6, v28

    .end local v6
    .local v9, "alternativeMaxWidth":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 712
    const/high16 v0, -0x80000000

    if-eq v11, v0, :cond_6

    .line 713
    move-object/from16 v0, v31

    iput v11, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 716
    :cond_6
    move-object/from16 v0, v31

    .end local v31
    .local v0, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 717
    .local v1, "childHeight":I
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 718
    .local v2, "totalLength":I
    add-int v3, v2, v1

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 719
    invoke-virtual {v7, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    .line 718
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 721
    if-eqz v10, :cond_7

    .line 722
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v1
    .end local v2
    .end local v11
    .end local v13
    .restart local v3
    goto :goto_3

    .line 730
    .end local v3
    .restart local v13
    :cond_7
    move v3, v13

    .end local v13
    .restart local v3
    :goto_3
    if-ltz v15, :cond_8

    move/from16 v1, v29

    add-int/lit8 v2, v1, 0x1

    .end local v29
    .local v1, "i":I
    if-ne v15, v2, :cond_9

    .line 731
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    goto :goto_4

    .line 737
    .end local v1
    .restart local v29
    :cond_8
    move/from16 v1, v29

    .end local v29
    .restart local v1
    :cond_9
    :goto_4
    if-ge v1, v15, :cond_b

    iget v2, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, v23

    if-gtz v2, :cond_a

    goto :goto_5

    .line 738
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    :cond_b
    :goto_5
    const/4 v2, 0x0

    .line 745
    .local v2, "matchWidthLocally":Z
    const/high16 v4, 0x40000000

    if-eq v12, v4, :cond_c

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_d

    .line 750
    const/16 v18, 0x1

    .line 751
    const/4 v2, 0x1

    goto :goto_6

    .line 754
    :cond_c
    const/4 v6, -0x1

    :cond_d
    :goto_6
    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 755
    .local v4, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 756
    .local v5, "measuredWidth":I
    move/from16 v11, v32

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 757
    .end local v32
    .local v11, "maxWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    invoke-static {v14, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v13

    .line 759
    .end local v14
    .local v13, "childState":I
    if-eqz v17, :cond_e

    iget v14, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    if-ne v14, v6, :cond_e

    move/from16 v6, v22

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    .line 760
    .end local v17
    .local v6, "allFillParent":Z
    :goto_7
    iget v14, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_10

    .line 765
    nop

    .line 766
    if-eqz v2, :cond_f

    .line 765
    move v14, v4

    goto :goto_8

    :cond_f
    move v14, v5

    :goto_8
    move/from16 v36, v6

    move/from16 v6, v35

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v35
    .local v6, "weightedMaxWidth":I
    .local v36, "allFillParent":Z
    goto :goto_a

    .line 768
    .end local v36
    .local v6, "allFillParent":Z
    .restart local v35
    :cond_10
    move/from16 v36, v6

    move/from16 v6, v35

    .line 769
    .end local v35
    .local v6, "weightedMaxWidth":I
    .restart local v36
    if-eqz v2, :cond_11

    .line 768
    move v14, v4

    goto :goto_9

    :cond_11
    move v14, v5

    :goto_9
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 772
    :goto_a
    invoke-virtual {v7, v8, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int v0, v1, v14

    .line 664
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    .end local v8
    .local v0, "i":I
    move v4, v6

    move v6, v9

    move v2, v11

    move v1, v13

    move/from16 v5, v21

    move/from16 v14, v30

    move/from16 v17, v36

    .end local v9
    .end local v11
    .end local v13
    .end local v21
    .end local v30
    .end local v36
    .local v1, "childState":I
    .local v2, "maxWidth":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .local v6, "alternativeMaxWidth":I
    .local v14, "skippedMeasure":Z
    .restart local v17
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v33

    move/from16 v11, v34

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_0

    .line 775
    .end local v0
    .end local v4
    .end local v33
    .end local v34
    .local v11, "count":I
    .local v13, "heightMode":I
    .restart local v19
    :cond_12
    move v9, v6

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v30, v14

    move/from16 v6, v19

    const/4 v0, -0x1

    move v14, v1

    move v11, v2

    move v13, v3

    .end local v1
    .end local v2
    .end local v3
    .end local v19
    .local v6, "weightedMaxWidth":I
    .restart local v9
    .local v11, "maxWidth":I
    .local v13, "largestChildHeight":I
    .local v14, "childState":I
    .restart local v30
    .restart local v33
    .restart local v34
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-lez v1, :cond_13

    move/from16 v1, v34

    invoke-virtual {v7, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    .end local v34
    .local v1, "count":I
    if-eqz v2, :cond_14

    .line 776
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_c

    .line 779
    .end local v1
    .restart local v34
    :cond_13
    move/from16 v1, v34

    .end local v34
    .restart local v1
    :cond_14
    :goto_c
    if-eqz v10, :cond_18

    move/from16 v2, v33

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_15

    .end local v33
    .local v2, "heightMode":I
    if-nez v2, :cond_19

    .line 781
    :cond_15
    const/4 v3, 0x0

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 783
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_19

    .line 784
    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 786
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_16

    .line 787
    iget v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v19

    add-int v8, v8, v19

    iput v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 788
    goto :goto_e

    .line 791
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v0, 0x8

    if-ne v8, v0, :cond_17

    .line 792
    invoke-virtual {v7, v4, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v3, v0

    .line 793
    nop

    .line 783
    .end local v3
    .end local v4
    .local v37, "i":I
    :goto_e
    move/from16 v37, v3

    goto :goto_f

    .line 796
    .end local v37
    .restart local v3
    .restart local v4
    :cond_17
    nop

    .line 797
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 799
    .local v0, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 800
    .local v8, "totalLength":I
    add-int v19, v8, v13

    move/from16 v37, v3

    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    .end local v3
    .restart local v37
    add-int v19, v19, v3

    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v19, v3

    .line 801
    invoke-virtual {v7, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v3, v19, v3

    .line 800
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 783
    .end local v0
    .end local v4
    .end local v8
    :goto_f
    add-int/lit8 v3, v37, 0x1

    .end local v37
    .restart local v3
    const/4 v0, -0x1

    goto :goto_d

    .line 806
    .end local v2
    .end local v3
    .restart local v33
    :cond_18
    move/from16 v2, v33

    .end local v33
    .restart local v2
    :cond_19
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 808
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 811
    .local v0, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 814
    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v8

    .line 815
    .local v8, "heightSizeAndState":I
    const v4, 0xffffff

    and-int v0, v8, v4

    .line 820
    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v4, v0, v4

    .line 821
    .local v4, "delta":I
    if-nez v30, :cond_20

    if-eqz v4, :cond_1a

    cmpl-float v19, v5, v23

    if-lez v19, :cond_1a

    .line 822
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    goto/16 :goto_13

    .line 912
    :cond_1a
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 918
    if-eqz v10, :cond_1f

    move/from16 v38, v0

    const/high16 v0, 0x40000000

    if-eq v2, v0, :cond_1e

    .line 919
    .end local v0
    .local v38, "heightSize":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_10
    move/from16 v0, v16

    .end local v16
    .local v0, "i":I
    if-ge v0, v1, :cond_1e

    .line 920
    move/from16 v39, v4

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 922
    .local v4, "child":Landroid/view/View;
    .local v39, "delta":I
    if-eqz v4, :cond_1d

    move/from16 v40, v5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    .end local v5
    .local v40, "totalWeight":F
    move/from16 v41, v6

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1b

    .line 923
    .end local v6
    .local v41, "weightedMaxWidth":I
    nop

    .line 919
    move/from16 v44, v9

    goto :goto_11

    .line 926
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 928
    .local v5, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v6, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 929
    .local v6, "childExtra":F
    cmpl-float v16, v6, v23

    if-lez v16, :cond_1c

    .line 930
    nop

    .line 931
    move-object/from16 v42, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .end local v5
    .local v42, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    move/from16 v43, v6

    const/high16 v6, 0x40000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 933
    .end local v6
    .local v43, "childExtra":F
    move/from16 v44, v9

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 930
    .end local v9
    .local v44, "alternativeMaxWidth":I
    invoke-virtual {v4, v5, v9}, Landroid/view/View;->measure(II)V

    .end local v4
    .end local v42
    .end local v43
    goto :goto_11

    .line 919
    .end local v44
    .restart local v9
    :cond_1c
    move/from16 v44, v9

    .end local v9
    .restart local v44
    goto :goto_11

    .end local v40
    .end local v41
    .end local v44
    .local v5, "totalWeight":F
    .local v6, "weightedMaxWidth":I
    .restart local v9
    :cond_1d
    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    .end local v5
    .end local v6
    .end local v9
    .restart local v40
    .restart local v41
    .restart local v44
    :goto_11
    add-int/lit8 v16, v0, 0x1

    .end local v0
    .restart local v16
    move/from16 v4, v39

    move/from16 v5, v40

    move/from16 v6, v41

    move/from16 v9, v44

    goto :goto_10

    .line 940
    .end local v16
    .end local v39
    .end local v40
    .end local v41
    .end local v44
    .local v4, "delta":I
    .restart local v5
    .restart local v6
    .restart local v9
    :cond_1e
    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    .end local v4
    .end local v5
    .end local v6
    .end local v9
    .restart local v39
    .restart local v40
    .restart local v41
    .restart local v44
    goto :goto_12

    .end local v38
    .end local v39
    .end local v40
    .end local v41
    .end local v44
    .local v0, "heightSize":I
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v9
    :cond_1f
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v9
    .restart local v38
    .restart local v39
    .restart local v40
    .restart local v41
    .restart local v44
    :goto_12
    move/from16 v51, v2

    move/from16 v45, v10

    move/from16 v46, v13

    move/from16 v47, v15

    move/from16 v13, p1

    goto/16 :goto_1e

    .line 822
    .end local v38
    .end local v39
    .end local v40
    .end local v41
    .end local v44
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v9
    :cond_20
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .restart local v38
    .restart local v39
    .restart local v40
    .restart local v41
    :goto_13
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_21

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    goto :goto_14

    :cond_21
    move/from16 v5, v40

    :goto_14
    move v0, v5

    .line 824
    .local v0, "weightSum":F
    const/4 v4, 0x0

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 826
    move v0, v4

    move/from16 v6, v39

    .end local v39
    .local v0, "i":I
    .local v5, "weightSum":F
    .local v6, "delta":I
    :goto_15
    if-ge v0, v1, :cond_2e

    .line 827
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 829
    .local v4, "child":Landroid/view/View;
    move/from16 v45, v10

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    .end local v10
    .local v45, "useLargestChild":Z
    move/from16 v46, v13

    const/16 v13, 0x8

    if-ne v10, v13, :cond_22

    .line 830
    .end local v13
    .local v46, "largestChildHeight":I
    nop

    .line 826
    move/from16 v51, v2

    move/from16 v47, v15

    move/from16 v13, p1

    goto/16 :goto_1d

    .line 833
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 835
    .local v10, "lp":Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    iget v13, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 838
    .local v13, "childExtra":F
    cmpl-float v16, v13, v23

    if-lez v16, :cond_27

    if-lez v6, :cond_27

    .line 840
    move/from16 v47, v15

    int-to-float v15, v6

    .end local v15
    .local v47, "baselineChildIndex":I
    mul-float/2addr v15, v13

    div-float/2addr v15, v5

    float-to-int v15, v15

    .line 841
    .local v15, "share":I
    sub-float/2addr v5, v13

    .line 842
    sub-int/2addr v6, v15

    .line 844
    move/from16 v48, v5

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    .end local v5
    .local v48, "weightSum":F
    move/from16 v49, v6

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    .end local v6
    .local v49, "delta":I
    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v50, v13

    move/from16 v13, p1

    invoke-static {v13, v5, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 850
    .end local v13
    .local v5, "childWidthMeasureSpec":I
    .local v50, "childExtra":F
    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v6, :cond_25

    const/high16 v6, 0x40000000

    if-eq v2, v6, :cond_23

    .line 853
    move/from16 v51, v2

    goto :goto_17

    .line 863
    :cond_23
    nop

    .line 864
    if-lez v15, :cond_24

    move/from16 v51, v2

    move v2, v15

    goto :goto_16

    :cond_24
    move/from16 v51, v2

    const/4 v2, 0x0

    .end local v2
    .local v51, "heightMode":I
    :goto_16
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 863
    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 869
    move/from16 v52, v15

    goto :goto_18

    .line 853
    .end local v51
    .restart local v2
    :cond_25
    move/from16 v51, v2

    .end local v2
    .restart local v51
    :goto_17
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v15

    .line 854
    .local v2, "childHeight":I
    if-gez v2, :cond_26

    .line 855
    const/4 v2, 0x0

    .line 858
    :cond_26
    nop

    .line 859
    move/from16 v52, v15

    const/high16 v6, 0x40000000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 858
    .end local v15
    .local v52, "share":I
    invoke-virtual {v4, v5, v15}, Landroid/view/View;->measure(II)V

    .line 860
    .end local v2
    nop

    .line 869
    :goto_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v14, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 871
    .end local v5
    .end local v52
    nop

    .line 891
    move/from16 v53, v48

    goto :goto_19

    .line 871
    .end local v47
    .end local v48
    .end local v49
    .end local v50
    .end local v51
    .local v2, "heightMode":I
    .local v5, "weightSum":F
    .restart local v6
    .restart local v13
    .local v15, "baselineChildIndex":I
    :cond_27
    move/from16 v51, v2

    move/from16 v50, v13

    move/from16 v47, v15

    move/from16 v13, p1

    .end local v2
    .end local v13
    .end local v15
    .restart local v47
    .restart local v50
    .restart local v51
    if-gez v6, :cond_29

    iget v2, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v2, v15, :cond_29

    .line 872
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-static {v13, v2, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 876
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v6

    .line 877
    .local v15, "childHeight":I
    if-gez v15, :cond_28

    .line 878
    const/4 v15, 0x0

    .line 880
    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v16, v15, v16

    sub-int v6, v6, v16

    .line 882
    nop

    .line 883
    move/from16 v53, v5

    move/from16 v54, v6

    const/high16 v5, 0x40000000

    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 882
    .end local v5
    .end local v6
    .local v53, "weightSum":F
    .local v54, "delta":I
    invoke-virtual {v4, v2, v6}, Landroid/view/View;->measure(II)V

    .line 886
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    and-int/lit16 v5, v5, -0x100

    invoke-static {v14, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 891
    .end local v2
    .end local v15
    move/from16 v49, v54

    goto :goto_19

    .end local v53
    .end local v54
    .restart local v5
    .restart local v6
    :cond_29
    move/from16 v53, v5

    .end local v5
    .restart local v53
    move/from16 v49, v6

    .end local v6
    .restart local v49
    :goto_19
    iget v2, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    .line 892
    .local v2, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 893
    .local v5, "measuredWidth":I
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 895
    .end local v11
    .local v6, "maxWidth":I
    const/high16 v11, 0x40000000

    if-eq v12, v11, :cond_2a

    iget v11, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_2a

    move/from16 v11, v22

    goto :goto_1a

    :cond_2a
    const/4 v11, 0x0

    .line 898
    .local v11, "matchWidthLocally":Z
    :goto_1a
    nop

    .line 899
    if-eqz v11, :cond_2b

    .line 898
    move v15, v2

    goto :goto_1b

    :cond_2b
    move v15, v5

    :goto_1b
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 901
    if-eqz v17, :cond_2c

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v55, v2

    const/4 v2, -0x1

    if-ne v15, v2, :cond_2d

    .end local v2
    .local v55, "margin":I
    move/from16 v15, v22

    goto :goto_1c

    .end local v55
    .restart local v2
    :cond_2c
    move/from16 v55, v2

    const/4 v2, -0x1

    .end local v2
    .restart local v55
    :cond_2d
    const/4 v15, 0x0

    .line 903
    .end local v17
    .local v15, "allFillParent":Z
    :goto_1c
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 904
    .local v2, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v2, v16

    move/from16 v56, v5

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    .end local v5
    .local v56, "measuredWidth":I
    add-int v16, v16, v5

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v5

    .line 905
    invoke-virtual {v7, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v16, v5

    .line 904
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 826
    .end local v2
    .end local v4
    .end local v10
    .end local v11
    .end local v50
    .end local v55
    .end local v56
    move v11, v6

    move/from16 v17, v15

    move/from16 v6, v49

    move/from16 v5, v53

    .end local v15
    .end local v49
    .end local v53
    .local v5, "weightSum":F
    .local v6, "delta":I
    .local v11, "maxWidth":I
    .restart local v17
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v45

    move/from16 v13, v46

    move/from16 v15, v47

    move/from16 v2, v51

    const/4 v4, 0x0

    goto/16 :goto_15

    .line 909
    .end local v0
    .end local v45
    .end local v46
    .end local v47
    .end local v51
    .local v2, "heightMode":I
    .local v10, "useLargestChild":Z
    .local v13, "largestChildHeight":I
    .local v15, "baselineChildIndex":I
    :cond_2e
    move/from16 v51, v2

    move/from16 v53, v5

    move/from16 v45, v10

    move/from16 v46, v13

    move/from16 v47, v15

    move/from16 v13, p1

    .end local v2
    .end local v5
    .end local v10
    .end local v13
    .end local v15
    .restart local v45
    .restart local v46
    .restart local v47
    .restart local v51
    .restart local v53
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 911
    .end local v53
    nop

    .line 940
    move/from16 v39, v6

    move/from16 v44, v9

    .end local v6
    .end local v9
    .restart local v39
    .restart local v44
    :goto_1e
    if-nez v17, :cond_2f

    const/high16 v0, 0x40000000

    if-eq v12, v0, :cond_2f

    .line 941
    move/from16 v11, v44

    .line 944
    :cond_2f
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 949
    .end local v11
    .local v0, "maxWidth":I
    invoke-static {v0, v13, v14}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setMeasuredDimension(II)V

    .line 952
    if-eqz v18, :cond_30

    .line 953
    invoke-direct {v7, v1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->forceUniformWidth(II)V

    .line 955
    :cond_30
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 319
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 328
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1091
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1092
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutHorizontal(IIII)V

    .line 1096
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 598
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureHorizontal(II)V

    .line 603
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1194
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1195
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1196
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 1197
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1201
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 431
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 432
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 535
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 539
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 540
    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    goto :goto_0

    .line 277
    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 278
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    .line 280
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setWillNotDraw(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 282
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 294
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    .line 295
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1379
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1380
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1381
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1384
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1385
    or-int/lit8 p1, p1, 0x30

    .line 1388
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1391
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1395
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1396
    .local v1, "gravity":I
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1397
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1400
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 463
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1351
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1352
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1355
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 228
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 231
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    .line 232
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1404
    and-int/lit8 v0, p1, 0x70

    .line 1405
    .local v0, "gravity":I
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1406
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1407
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1409
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 593
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    .line 594
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 236
    const/4 v0, 0x0

    return v0
.end method
