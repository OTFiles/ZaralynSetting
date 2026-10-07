.class public Lcom/android/settingslib/drawable/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 12
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    iput p2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    .line 62
    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    iget v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 66
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 67
    .local v2, "height":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 69
    .local v3, "square":I
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v3

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v4, "cropRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    .local v5, "circleRect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 73
    .local v6, "fillPath":Landroid/graphics/Path;
    const/high16 v7, 0x43b40000

    invoke-virtual {v6, v5, v8, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 75
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    iget-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    .line 93
    new-instance v7, Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    iget v11, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    invoke-direct {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 94
    new-instance v7, Landroid/graphics/RectF;

    iget v9, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v10, v10

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 95
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/settingslib/R$dimen;->circle_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 54
    .local v1, "iconSize":F
    new-instance v2, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    float-to-int v3, v1

    invoke-direct {v2, p1, v3}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 55
    .local v2, "instance":Lcom/android/settingslib/drawable/CircleFramedDrawable;
    return-object v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 99
    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    iget v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 100
    .local v0, "inside":F
    iget v1, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 102
    .local v1, "pad":F
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 116
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 121
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 125
    return-void
.end method
