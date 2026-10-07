.class public Lcom/android/settings/view/LocalPagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "LocalPagerTitleStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;
    }
.end annotation


# instance fields
.field private allWidth:I

.field private arcRectF:Landroid/graphics/RectF;

.field private lineWidth:I

.field private listener:Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;

.field private mPaint:Landroid/graphics/Paint;

.field private stripHeight:I

.field private stripWidth:I

.field private titleArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/view/LocalPagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalPagerTitleStrip;->setWillNotDraw(Z)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/LocalPagerTitleStrip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    return-void
.end method

.method private reset(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->titleArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->removeAllViews()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->titleArray:[Ljava/lang/String;

    array-length v0, v0

    .line 67
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_2

    .line 68
    const v2, 0x7f0d01c1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/settings/view/LocalPagerTitleStrip;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->titleArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08025e

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802bd

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802b9

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_1
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/settings/view/LocalPagerTitleStrip;->addView(Landroid/view/View;)V

    .line 67
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0
    .end local v1
    :cond_2
    return-void
.end method

.method private select(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildCount()I

    move-result v0

    .line 163
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_0
    if-le v0, v2, :cond_2

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 166
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    .line 167
    .local v4, "txt":Landroid/widget/TextView;
    if-ne v3, p1, :cond_0

    .line 168
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06010a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .end local v3
    .end local v4
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/view/LocalPagerTitleStrip;->select(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->listener:Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->listener:Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/view/LocalPagerTitleStrip;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;->onSelected(I)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 127
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildCount()I

    move-result v0

    .line 129
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    const/4 v1, 0x0

    move v3, v1

    .local v3, "index":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-le v4, v3, :cond_0

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v6, v6

    add-float v8, v5, v6

    const/4 v9, 0x0

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v6, v6

    add-float v10, v5, v6

    iget v5, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    int-to-float v11, v5

    iget-object v12, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    .line 133
    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v4, v4

    add-float v6, v3, v4

    iget v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    add-int/2addr v3, v1

    int-to-float v7, v3

    iget v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->allWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    sub-float v8, v3, v4

    iget v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    add-int/2addr v1, v3

    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v3, v3

    add-float v5, v1, v3

    iget v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    iget v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    sub-int/2addr v1, v3

    int-to-float v6, v1

    iget v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->allWidth:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    sub-float v7, v1, v3

    iget v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    iget v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    sub-int/2addr v1, v2

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 143
    iget-object v5, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000

    const/high16 v7, -0x3ccc0000

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    iget v1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->allWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000

    iget-object v9, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 87
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v0, p0

    .line 92
    invoke-virtual {v0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildCount()I

    move-result v1

    .line 93
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 94
    sub-int v2, p4, p2

    iget v3, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    .line 97
    .local v2, "titleWidth":I
    iget v3, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    .line 98
    .local v3, "localX":I
    const/4 v4, 0x0

    .local v4, "offsetX1":I
    const/4 v5, 0x0

    .line 99
    .local v5, "offsetX2":I
    const/4 v6, 0x0

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v6

    .local v3, "index":I
    .local v4, "localX":I
    .local v5, "offsetX1":I
    .local v7, "offsetX2":I
    :goto_0
    if-le v1, v3, :cond_2

    .line 100
    invoke-virtual {v0, v3}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 101
    .local v8, "child":Landroid/view/View;
    const/high16 v9, 0x40000000

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v11, p5, p3

    .line 102
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 101
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 104
    if-nez v3, :cond_0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v7, 0x1

    goto :goto_1

    .line 107
    :cond_0
    add-int/lit8 v9, v3, 0x1

    if-ne v1, v9, :cond_1

    .line 108
    const/4 v5, -0x1

    .line 109
    const/4 v7, 0x0

    goto :goto_1

    .line 111
    :cond_1
    const/4 v5, -0x1

    .line 112
    const/4 v7, 0x1

    .line 114
    :goto_1
    add-int v9, v4, v5

    add-int v10, v4, v2

    add-int/2addr v10, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 116
    add-int v9, v4, v2

    iget v10, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    add-int v4, v9, v10

    .line 99
    .end local v8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v3
    :cond_2
    iput v4, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->allWidth:I

    .line 119
    sub-int v3, p4, p2

    iput v3, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripWidth:I

    .line 120
    sub-int v3, p5, p3

    iput v3, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    .line 121
    new-instance v3, Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v6, v6

    const/4 v8, 0x0

    add-float/2addr v6, v8

    iget v9, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    iget v10, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v11, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->stripHeight:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v8, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->lineWidth:I

    int-to-float v8, v8

    sub-float/2addr v11, v8

    invoke-direct {v3, v6, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v0, Lcom/android/settings/view/LocalPagerTitleStrip;->arcRectF:Landroid/graphics/RectF;

    .line 123
    .end local v2
    .end local v4
    .end local v5
    .end local v7
    :cond_3
    return-void
.end method

.method public select(I)V
    .locals 1
    .param p1, "index"    # I

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/view/LocalPagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/view/LocalPagerTitleStrip;->select(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public setListener(Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;

    .line 32
    iput-object p1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->listener:Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;

    .line 33
    return-void
.end method

.method public setTitleArray([Ljava/lang/String;)V
    .locals 1
    .param p1, "titleArray"    # [Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/settings/view/LocalPagerTitleStrip;->titleArray:[Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/view/LocalPagerTitleStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/view/LocalPagerTitleStrip;->reset(Landroid/content/Context;)V

    .line 38
    return-void
.end method
