.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 62
    sget-object v1, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 64
    const/4 v0, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 65
    .local v0, "emptyColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 73
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v1

    .line 76
    .local v1, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 77
    .local v2, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v3

    .line 78
    .local v3, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 80
    .local v4, "bottom":I
    sub-int v5, v2, v1

    .line 82
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v6

    .line 83
    .local v6, "isLayoutRtl":Z
    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 84
    int-to-float v8, v2

    .line 86
    .local v8, "nextX":F
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v9, :cond_2

    .line 87
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 89
    .local v15, "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    iget v10, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_0

    .line 90
    const/4 v10, 0x0

    .local v10, "entryWidth":F
    goto :goto_1

    .line 92
    .end local v10
    :cond_0
    iget v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v10, v10

    int-to-float v11, v5

    iget v12, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .restart local v10
    :goto_1
    move/from16 v16, v10

    .line 95
    .end local v10
    .local v16, "entryWidth":F
    sub-float v17, v8, v16

    .line 96
    .local v17, "lastX":F
    int-to-float v10, v1

    cmpg-float v10, v17, v10

    if-gez v10, :cond_1

    .line 97
    int-to-float v11, v1

    int-to-float v12, v3

    int-to-float v14, v4

    iget-object v7, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v13, v8

    move-object v9, v15

    move-object v15, v7

    .end local v15
    .local v9, "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    return-void

    .line 101
    .end local v9
    .restart local v15
    :cond_1
    int-to-float v12, v3

    int-to-float v14, v4

    iget-object v13, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v11, v17

    move-object/from16 v18, v13

    move v13, v8

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    .end local v15
    .local v19, "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    move/from16 v8, v17

    .line 103
    .end local v16
    .end local v17
    .end local v19
    goto :goto_0

    .line 106
    :cond_2
    int-to-float v11, v1

    int-to-float v12, v3

    int-to-float v14, v4

    iget-object v15, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v13, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    .end local v8
    goto/16 :goto_4

    .line 108
    :cond_3
    int-to-float v8, v1

    .line 110
    .local v8, "lastX":F
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v9, :cond_6

    .line 111
    iget-object v9, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 113
    .restart local v15
    iget v10, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_4

    .line 114
    const/4 v10, 0x0

    .restart local v10
    goto :goto_3

    .line 116
    .end local v10
    :cond_4
    iget v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v10, v10

    int-to-float v11, v5

    iget v12, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .restart local v10
    :goto_3
    move/from16 v16, v10

    .line 119
    .end local v10
    .restart local v16
    add-float v17, v8, v16

    .line 120
    .local v17, "nextX":F
    int-to-float v10, v2

    cmpl-float v10, v17, v10

    if-lez v10, :cond_5

    .line 121
    int-to-float v12, v3

    int-to-float v13, v2

    int-to-float v14, v4

    iget-object v7, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v8

    move-object v9, v15

    move-object v15, v7

    .end local v15
    .restart local v9
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    return-void

    .line 125
    .end local v9
    .restart local v15
    :cond_5
    int-to-float v12, v3

    int-to-float v14, v4

    iget-object v13, v15, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v8

    move-object/from16 v18, v13

    move/from16 v13, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    .end local v15
    .restart local v19
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    move/from16 v8, v17

    .line 127
    .end local v16
    .end local v17
    .end local v19
    goto :goto_2

    .line 130
    :cond_6
    int-to-float v12, v3

    int-to-float v13, v2

    int-to-float v14, v4

    iget-object v15, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    .end local v8
    :goto_4
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;>;"
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    .line 159
    return-void
.end method
