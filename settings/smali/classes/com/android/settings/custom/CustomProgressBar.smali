.class public Lcom/android/settings/custom/CustomProgressBar;
.super Landroid/view/View;
.source "CustomProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;
    }
.end annotation


# instance fields
.field private isPlayAnim:Z

.field private mDuration:J

.field private mHeight:I

.field public mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintRoundRect:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mProcess:F

.field private mRound:I

.field private mWidth:I

.field private strokeWidth:I

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/custom/CustomProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/custom/CustomProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/custom/CustomProgressBar;->textSize:I

    .line 28
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mDuration:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/custom/CustomProgressBar;->isPlayAnim:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/custom/CustomProgressBar;->init()V

    .line 44
    return-void
.end method

.method private defaultHeight()I
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 198
    .local v0, "scale":F
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/custom/CustomProgressBar;->mWidth:I

    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    iget v5, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 117
    .local v0, "rectF":Landroid/graphics/RectF;
    iget v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 121
    iget v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    iget v3, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    iget v5, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    .local v0, "rectProgress":Landroid/graphics/RectF;
    iget v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    .end local v0
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintRoundRect:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintText:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/custom/CustomProgressBar;->textSize:I

    invoke-direct {p0, v1}, Lcom/android/settings/custom/CustomProgressBar;->sp2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    return-void
.end method

.method public static synthetic lambda$start$0(Lcom/android/settings/custom/CustomProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 165
    iget v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    const/high16 v1, 0x40200000    # 2.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    .line 166
    iget v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 167
    iput v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/custom/CustomProgressBar;->isPlayAnim:Z

    .line 169
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    invoke-interface {v0}, Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;->onProgressAnimEnd()V

    .line 174
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->invalidate()V

    .line 179
    return-void
.end method

.method private sp2px(I)I
    .locals 3
    .param p1, "sp"    # I

    .line 191
    int-to-float v0, p1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 191
    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getIsPlayAnim()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/custom/CustomProgressBar;->isPlayAnim:Z

    return v0
.end method

.method public getProcess()F
    .locals 1

    .line 151
    iget v0, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/custom/CustomProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/custom/CustomProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 87
    .local v0, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 88
    .local v1, "heightSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 89
    .local v2, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 91
    .local v3, "heightSpecSize":I
    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/custom/CustomProgressBar;->mWidth:I

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/settings/custom/CustomProgressBar;->mWidth:I

    .line 97
    :goto_1
    if-eq v1, v4, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    iput v3, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/custom/CustomProgressBar;->defaultHeight()I

    move-result v4

    iput v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    .line 103
    :goto_3
    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mRound:I

    .line 104
    iget v4, p0, Lcom/android/settings/custom/CustomProgressBar;->mWidth:I

    iget v5, p0, Lcom/android/settings/custom/CustomProgressBar;->mHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/custom/CustomProgressBar;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 80
    iput-wide p1, p0, Lcom/android/settings/custom/CustomProgressBar;->mDuration:J

    .line 81
    return-void
.end method

.method public setOnProgressBarListener(Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;)V
    .locals 0
    .param p1, "onProgressBarListener"    # Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 204
    iput-object p1, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    .line 205
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 68
    iput p1, p0, Lcom/android/settings/custom/CustomProgressBar;->mPadding:I

    .line 69
    return-void
.end method

.method public setProcess(F)V
    .locals 1
    .param p1, "process"    # F

    .line 144
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 145
    iput p1, p0, Lcom/android/settings/custom/CustomProgressBar;->mProcess:F

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/custom/CustomProgressBar;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .param p1, "strokeWidth"    # I

    .line 72
    iput p1, p0, Lcom/android/settings/custom/CustomProgressBar;->strokeWidth:I

    .line 73
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 76
    iput p1, p0, Lcom/android/settings/custom/CustomProgressBar;->textSize:I

    .line 77
    return-void
.end method

.method public start()V
    .locals 3

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 161
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    iget-wide v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    new-instance v1, Lcom/android/settings/custom/-$$Lambda$CustomProgressBar$QCTqSKrmW1DosDcOo76oOTdapaI;

    invoke-direct {v1, p0}, Lcom/android/settings/custom/-$$Lambda$CustomProgressBar$QCTqSKrmW1DosDcOo76oOTdapaI;-><init>(Lcom/android/settings/custom/CustomProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/custom/CustomProgressBar;->isPlayAnim:Z

    .line 182
    iget-object v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/custom/CustomProgressBar;->mOnProgressBarListener:Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;

    invoke-interface {v1}, Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;->onProgressAnimStart()V

    .line 186
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 188
    :cond_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method
