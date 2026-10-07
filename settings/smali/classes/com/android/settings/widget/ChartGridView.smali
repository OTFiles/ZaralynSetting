.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLabelColor:I

.field private mLabelEnd:Landroid/text/Layout;

.field private mLabelMid:Landroid/text/Layout;

.field private mLabelSize:I

.field private mLabelStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 70
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 73
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 78
    .local v2, "taId":I
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 80
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    .line 82
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 86
    .local v0, "labelColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .line 92
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 93
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v0

    .line 108
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 110
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 111
    .local v2, "secondary":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 114
    .local v4, "secondaryHeight":I
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    .line 115
    .local v5, "vertTicks":[F
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 116
    .local v8, "y":F
    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 117
    .local v9, "bottom":I
    float-to-int v10, v8

    invoke-virtual {v2, v3, v10, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    .end local v8
    .end local v9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    .end local v4
    .end local v5
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 123
    .local v4, "primary":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 125
    .local v5, "primaryWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 127
    .local v6, "primaryHeight":I
    iget-object v7, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v7}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v7

    .line 128
    .local v7, "horizTicks":[F
    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    .line 129
    .local v10, "x":F
    int-to-float v11, v5

    add-float/2addr v11, v10

    int-to-float v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    .line 130
    .local v11, "right":I
    float-to-int v12, v10

    invoke-virtual {v4, v12, v3, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    .end local v10
    .end local v11
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 135
    .end local v5
    .end local v6
    .end local v7
    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    nop

    .line 140
    .local v3, "padding":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    .line 141
    .local v5, "start":Landroid/text/Layout;
    if-eqz v5, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 143
    .local v6, "saveCount":I
    const/4 v7, 0x0

    add-int v8, v1, v3

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    .end local v6
    :cond_3
    iget-object v6, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    .line 149
    .local v6, "mid":Landroid/text/Layout;
    if-eqz v6, :cond_4

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 151
    .local v7, "saveCount":I
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v8

    sub-int v8, v0, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int v9, v1, v3

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {v6, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    .end local v7
    :cond_4
    iget-object v7, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    .line 157
    .local v7, "end":Landroid/text/Layout;
    if-eqz v7, :cond_5

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 159
    .local v8, "saveCount":I
    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-int v10, v1, v3

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    invoke-virtual {v7, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    .end local v8
    :cond_5
    return-void
.end method
