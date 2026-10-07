.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field private mColoredRegions:I

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const v0, -0x312825

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 37
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 49
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v1, v2, :cond_0

    .line 70
    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    .line 71
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-static {p1}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 74
    return-void
.end method

.method private pickColor(II)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "region"    # I

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, -0x1

    return v0

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 181
    const v0, -0xaaaaab

    return v0

    .line 183
    :cond_1
    return p1
.end method

.method private updateIndicator()V
    .locals 12

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 119
    .local v0, "off":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-nez v1, :cond_1

    .line 123
    return-void

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    const v2, 0xffffff

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v3, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    and-int v8, v3, v2

    iget v9, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v0, -0x2

    int-to-float v7, v3

    iget v3, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    and-int v8, v3, v2

    iget v9, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    div-int/lit8 v2, v0, 0x2

    int-to-float v6, v2

    const v7, 0xa0a0a0

    const v8, -0x5f5f60

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 188
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->getWidth()I

    move-result v2

    .line 192
    .local v2, "width":I
    const/4 v3, 0x0

    .line 194
    .local v3, "left":I
    int-to-float v4, v2

    iget v5, v0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    .line 195
    .local v4, "right":I
    int-to-float v5, v2

    iget v6, v0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v4

    .line 196
    .local v5, "right2":I
    int-to-float v6, v2

    iget v7, v0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v5

    .line 199
    .local v6, "right3":I
    iget-boolean v7, v0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v7, :cond_0

    .line 200
    move v7, v5

    .line 201
    .local v7, "indicatorLeft":I
    move v8, v6

    .local v8, "indicatorRight":I
    goto :goto_0

    .line 203
    .end local v7
    .end local v8
    :cond_0
    move v7, v4

    .line 204
    .restart local v7
    move v8, v5

    .line 207
    .restart local v8
    :goto_0
    iget v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    const/4 v10, 0x1

    if-ne v9, v7, :cond_2

    iget v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v9, v8, :cond_1

    goto :goto_1

    .line 237
    :cond_1
    move/from16 v23, v6

    goto/16 :goto_3

    .line 208
    :cond_2
    :goto_1
    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 209
    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 210
    iget-boolean v9, v0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-eqz v9, :cond_3

    if-ge v7, v8, :cond_3

    .line 211
    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 212
    .local v9, "midTopY":I
    const/4 v11, 0x0

    .line 213
    .local v11, "midBottomY":I
    const/4 v12, 0x2

    .line 214
    .local v12, "xoff":I
    iget-object v13, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v14, v7

    iget-object v15, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    iget-object v13, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v14, v7

    const/16 v18, 0x0

    const/high16 v19, -0x40000000

    int-to-float v15, v9

    const/high16 v21, -0x40000000

    const/16 v22, 0x0

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v20, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    iget-object v13, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v14, v2, 0x2

    sub-int/2addr v14, v10

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget-object v13, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v14, v2, 0x2

    sub-int/2addr v14, v10

    int-to-float v14, v14

    int-to-float v10, v9

    int-to-float v15, v8

    const/16 v20, 0x0

    move/from16 v23, v6

    int-to-float v6, v8

    .end local v6
    .local v23, "right3":I
    move/from16 v24, v11

    iget-object v11, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .end local v11
    .local v24, "midBottomY":I
    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v10

    move/from16 v19, v15

    move/from16 v21, v6

    move/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 222
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 223
    iget v6, v0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v6, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v6, v10

    .line 224
    .local v6, "lineOffset":F
    iget-object v10, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v11, -0x40000000    # -2.0f

    add-float v13, v11, v6

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    iget-object v15, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-float v16, v11, v6

    int-to-float v10, v9

    int-to-float v11, v7

    add-float v18, v11, v6

    const/16 v19, 0x0

    int-to-float v11, v7

    add-float v20, v11, v6

    iget-object v11, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move/from16 v17, v10

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 228
    iget-object v10, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v11, v2, 0x2

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    int-to-float v11, v11

    sub-float/2addr v11, v6

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 229
    iget-object v15, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v10, v2, 0x2

    sub-int/2addr v10, v13

    int-to-float v10, v10

    sub-float v16, v10, v6

    int-to-float v10, v9

    int-to-float v11, v8

    sub-float v18, v11, v6

    int-to-float v11, v8

    sub-float v20, v11, v6

    iget-object v11, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move/from16 v17, v10

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .end local v6
    .end local v9
    .end local v12
    .end local v24
    goto :goto_2

    .line 233
    .end local v23
    .local v6, "right3":I
    :cond_3
    move/from16 v23, v6

    .end local v6
    .restart local v23
    :goto_2
    iput v7, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    .line 234
    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    .line 237
    :goto_3
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 238
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 242
    :cond_4
    if-ge v3, v4, :cond_5

    .line 243
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    const/4 v10, 0x1

    invoke-direct {v0, v9, v10}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    sub-int v6, v4, v3

    sub-int/2addr v2, v6

    .line 248
    move v3, v4

    .line 251
    :cond_5
    iput v4, v0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    .line 252
    iput v5, v0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    .line 254
    move v4, v5

    .line 256
    if-ge v3, v4, :cond_6

    .line 257
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 258
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 259
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    const/4 v10, 0x2

    invoke-direct {v0, v9, v10}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    sub-int v6, v4, v3

    sub-int/2addr v2, v6

    .line 262
    move v3, v4

    .line 266
    :cond_6
    add-int v4, v3, v2

    .line 267
    if-ge v3, v4, :cond_7

    .line 268
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 269
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 270
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    const/4 v10, 0x4

    invoke-direct {v0, v9, v10}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v6, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    :cond_7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    .local v0, "x":I
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_1

    .line 149
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_2

    .line 151
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 159
    .end local v0
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .line 84
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 86
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .line 96
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 97
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    .line 98
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 101
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_1

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .line 79
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setClickable(Z)V

    .line 81
    :cond_1
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .line 89
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    .line 90
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    .line 91
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 93
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0
    .param p1, "showIndicator"    # Z

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 105
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 107
    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .param p1, "showingGreen"    # Z

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    .line 111
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    .line 112
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 115
    :cond_0
    return-void
.end method
