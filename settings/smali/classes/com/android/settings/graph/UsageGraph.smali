.class public Lcom/android/settings/graph/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private final mLocalProjectedPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private final mProjectedPaths:Landroid/util/SparseIntArray;

.field private final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    .line 63
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    .line 68
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    .line 69
    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    .line 71
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 73
    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    const v1, 0x7f070225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    .line 85
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    iget v4, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 86
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const v3, 0x7f070226

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 94
    .local v1, "dots":F
    const v3, 0x7f070221

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 95
    .local v3, "interval":F
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    aput v3, v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 97
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const v5, 0x7f060176

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 100
    .local v4, "v":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010214

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 102
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 103
    const v2, 0x7f070220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    .line 104
    return-void
.end method

.method private addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "points"    # Landroid/util/SparseIntArray;
    .param p2, "paths"    # Landroid/util/SparseIntArray;
    .param p3, "localPaths"    # Landroid/util/SparseIntArray;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "startTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 143
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2
    .end local v3
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 149
    const-string v2, "UsageGraph"

    const-string v3, "addPathAndUpdate"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 150
    return-void
.end method

.method private calculateLocalPaths()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 171
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "y"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "tintColor"    # I

    .line 305
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 306
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 310
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    add-int/2addr v3, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method private drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "localPaths"    # Landroid/util/SparseIntArray;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 283
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    .line 285
    .local v1, "lastStartX":F
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "lastStartX":F
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 287
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 288
    .local v3, "x":I
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 289
    .local v4, "y":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 290
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 293
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 294
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v2, v5

    .line 295
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    .end local v3
    .end local v4
    :cond_1
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 301
    .end local v1
    :cond_2
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "localPaths"    # Landroid/util/SparseIntArray;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 263
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 268
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 269
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 270
    .local v2, "x":I
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 271
    .local v3, "y":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 272
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    .end local v2
    .end local v3
    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 279
    .end local v1
    :cond_3
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 280
    return-void
.end method

.method private getColor(IF)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "alphaScale"    # F

    .line 236
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    or-int/2addr v0, v1

    and-int/2addr v0, p1

    return v0
.end method

.method private getX(F)I
    .locals 2
    .param p1, "x"    # F

    .line 222
    iget v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getY(F)I
    .locals 3
    .param p1, "y"    # F

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private hasDiff(II)Z
    .locals 2
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 218
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateGradient()V
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    const v2, 0x3e4ccccd

    invoke-direct {p0, v1, v2}, Lcom/android/settings/graph/UsageGraph;->getColor(IF)I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 230
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 233
    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .line 132
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 133
    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .line 136
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 137
    return-void
.end method

.method calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 12
    .param p1, "paths"    # Landroid/util/SparseIntArray;
    .param p2, "localPaths"    # Landroid/util/SparseIntArray;

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "startTime":J
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "lx":I
    const/4 v3, -0x1

    .line 183
    .local v3, "ly":I
    const/4 v4, 0x0

    .line 184
    .local v4, "skippedLastPoint":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 185
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 186
    .local v6, "x":I
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 187
    .local v7, "y":I
    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    .line 188
    if-ne v5, v9, :cond_1

    .line 189
    add-int/lit8 v8, v6, 0x1

    int-to-float v8, v8

    invoke-direct {p0, v8}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v8

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    sub-int/2addr v10, v9

    if-ne v5, v10, :cond_2

    if-eqz v4, :cond_2

    .line 194
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    :cond_2
    const/4 v4, 0x0

    .line 197
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p2, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 199
    :cond_3
    int-to-float v10, v6

    invoke-direct {p0, v10}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v2

    .line 200
    int-to-float v10, v7

    invoke-direct {p0, v10}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v3

    .line 202
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 203
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {p2, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 204
    .local v10, "lastX":I
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {p2, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 205
    .local v9, "lastY":I
    if-eq v9, v8, :cond_4

    invoke-direct {p0, v10, v2}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v9, v3}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 206
    const/4 v4, 0x1

    .line 207
    goto :goto_1

    .line 210
    .end local v9
    .end local v10
    :cond_4
    const/4 v4, 0x0

    .line 211
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    .end local v6
    .end local v7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    .end local v5
    :cond_5
    const-string v5, "UsageGraph"

    const-string v6, "calculateLocalPaths"

    invoke-static {v5, v6, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 215
    return-void
.end method

.method clearPaths()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    .local v0, "startTime":J
    iget v2, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 244
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 246
    :cond_0
    nop

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 246
    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 253
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 258
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 259
    const-string v2, "UsageGraph"

    const-string v3, "onDraw"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    .local v0, "startTime":J
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    .line 165
    const-string v2, "UsageGraph"

    const-string v3, "onSizeChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 166
    return-void
.end method

.method setAccentColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 153
    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    .line 154
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 157
    return-void
.end method

.method setDividerColors(II)V
    .locals 0
    .param p1, "middleColor"    # I
    .param p2, "topColor"    # I

    .line 127
    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 128
    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    .line 129
    return-void
.end method

.method setDividerLoc(I)V
    .locals 2
    .param p1, "height"    # I

    .line 123
    int-to-float v0, p1

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    .line 124
    return-void
.end method

.method setMax(II)V
    .locals 4
    .param p1, "maxX"    # I
    .param p2, "maxY"    # I

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "startTime":J
    int-to-float v2, p1

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    .line 116
    int-to-float v2, p2

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    .line 117
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 119
    const-string v2, "UsageGraph"

    const-string v3, "setMax"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 120
    return-void
.end method
