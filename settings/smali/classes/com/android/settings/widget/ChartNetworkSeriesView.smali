.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 89
    sget-object v1, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 92
    .local v1, "a":Landroid/content/res/TypedArray;
    const/high16 v2, -0x10000

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 93
    .local v3, "stroke":I
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 94
    .local v4, "fill":I
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 96
    .local v2, "fillSecondary":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 99
    .local v5, "safeRegion":I
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 106
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 108
    return-void
.end method

.method private generatePath()V
    .locals 25

    .line 172
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 173
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 174
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 175
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 179
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v1

    .line 184
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v2

    .line 186
    .local v2, "height":I
    const/4 v3, 0x0

    .line 187
    .local v3, "started":Z
    const/4 v4, 0x0

    .line 188
    .local v4, "lastX":F
    int-to-float v5, v2

    .line 189
    .local v5, "lastY":F
    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v6, v4}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    .line 192
    .local v6, "lastTime":J
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    const-wide/16 v8, 0x0

    .line 200
    .local v8, "totalData":J
    const/4 v10, 0x0

    .line 202
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v11, v12, v13}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v11

    .line 203
    .local v11, "start":I
    iget-object v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v13, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v12, v13, v14}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v12

    .line 204
    .local v12, "end":I
    move v13, v4

    move v4, v11

    .local v4, "i":I
    .local v13, "lastX":F
    :goto_0
    if-gt v4, v12, :cond_3

    .line 205
    iget-object v15, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v15, v4, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 207
    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 208
    .local v14, "startTime":J
    move/from16 v17, v11

    move/from16 v18, v12

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .end local v11
    .end local v12
    .local v17, "start":I
    .local v18, "end":I
    add-long/2addr v11, v14

    .line 210
    .local v11, "endTime":J
    move/from16 v19, v1

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .end local v1
    .local v19, "width":I
    invoke-interface {v1, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 211
    .local v1, "startX":F
    move/from16 v20, v3

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .end local v3
    .local v20, "started":Z
    invoke-interface {v3, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v3

    .line 214
    .local v3, "endX":F
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_1

    .line 204
    .end local v1
    .end local v3
    .end local v11
    .end local v14
    move/from16 v23, v2

    goto :goto_1

    .line 217
    .restart local v1
    .restart local v3
    .restart local v11
    .restart local v14
    :cond_1
    move-wide/from16 v21, v11

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .end local v11
    .local v21, "endTime":J
    move/from16 v23, v2

    move/from16 v24, v3

    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .end local v2
    .end local v3
    .local v23, "height":I
    .local v24, "endX":F
    add-long/2addr v11, v2

    add-long/2addr v8, v11

    .line 219
    move v2, v5

    .line 220
    .local v2, "startY":F
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v8, v9}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v3

    .line 222
    .local v3, "endY":F
    cmp-long v11, v6, v14

    if-eqz v11, :cond_2

    .line 224
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    :cond_2
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v12, v24

    invoke-virtual {v11, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    .end local v24
    .local v12, "endX":F
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v11, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    move v11, v12

    .line 233
    .end local v13
    .local v11, "lastX":F
    move v5, v3

    .line 234
    move-wide/from16 v1, v21

    .line 204
    .end local v2
    .end local v3
    .end local v6
    .end local v12
    .end local v14
    .end local v21
    .local v1, "lastTime":J
    move-wide v6, v1

    move v13, v11

    .end local v1
    .end local v11
    .restart local v6
    .restart local v13
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v1, v19

    move/from16 v3, v20

    move/from16 v2, v23

    goto :goto_0

    .line 238
    .end local v4
    .end local v17
    .end local v18
    .end local v19
    .end local v20
    .end local v23
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "started":Z
    .local v11, "start":I
    .local v12, "end":I
    :cond_3
    move/from16 v19, v1

    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v17, v11

    move/from16 v18, v12

    .end local v1
    .end local v2
    .end local v3
    .end local v11
    .end local v12
    .restart local v17
    .restart local v18
    .restart local v19
    .restart local v20
    .restart local v23
    iget-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v1, v6, v1

    if-gez v1, :cond_4

    .line 239
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v1, v2, v3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v13

    .line 241
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    :cond_4
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v2, v23

    int-to-float v3, v2

    .end local v23
    .restart local v2
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    int-to-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iput-wide v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 292
    return-void

    .line 180
    .end local v2
    .end local v5
    .end local v6
    .end local v8
    .end local v10
    .end local v13
    .end local v17
    .end local v18
    .end local v19
    .end local v20
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getMaxEstimate()J
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 309
    .local v0, "maxVisible":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    .line 312
    .local v2, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    return-wide v3

    .line 314
    .end local v2
    :cond_1
    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .line 111
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 112
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 113
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 163
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 328
    .local v0, "save":I
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 329
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 330
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 333
    .end local v0
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 335
    .local v0, "paintFill":Landroid/graphics/Paint;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 336
    .local v2, "save":I
    iget v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 337
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 339
    return-void
.end method

.method public setChartColor(III)V
    .locals 4
    .param p1, "stroke"    # I
    .param p2, "fill"    # I
    .param p3, "fillSecondary"    # I

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 138
    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 295
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 296
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1
    .param p1, "estimateVisible"    # Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 301
    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0
    .param p1, "safeRegion"    # I

    .line 141
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    .line 142
    return-void
.end method

.method public setSecondary(Z)V
    .locals 0
    .param p1, "secondary"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 157
    return-void
.end method
