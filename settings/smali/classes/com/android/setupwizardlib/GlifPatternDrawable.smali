.class public Lcom/android/setupwizardlib/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field private static final ATTRS_PRIMARY_COLOR:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static sBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sPatternLightness:[I

.field private static sPatternPaths:[Landroid/graphics/Path;


# instance fields
.field private mColor:I

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010433

    aput v2, v0, v1

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->setColor(I)V

    .line 101
    return-void
.end method

.method public static invalidatePattern()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 92
    return-void
.end method

.method private renderOnCanvas(Landroid/graphics/Canvas;F)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    move/from16 v2, p2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 174
    iget-object v3, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-nez v3, :cond_0

    .line 180
    new-array v3, v5, [Landroid/graphics/Path;

    sput-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    .line 182
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    .line 184
    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    aput-object v6, v3, v4

    move-object v3, v6

    .line 185
    .local v3, "p":Landroid/graphics/Path;
    const v6, 0x4480accd

    const v7, 0x43b2c000

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    const v6, 0x443dc666

    const v7, 0x44aac000    # 1366.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    const/4 v6, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    const v7, 0x448e3666    # 1137.7f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 191
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object v3, v8

    .line 192
    const v7, 0x448e4333    # 1138.1f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    const v7, -0x3cef3333

    const/high16 v8, 0x44400000

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 194
    const v7, 0x43ba599a    # 372.7f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 195
    const/high16 v7, -0x3bfd0000

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 196
    const v11, 0x44a15666

    const v12, 0x42f33333

    const v13, 0x44986666

    const v14, 0x42246666

    const v15, 0x44935666

    const/16 v16, 0x0

    move-object v10, v3

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 197
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 199
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x2

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    .line 200
    const v7, 0x446d7333    # 949.8f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    const v12, 0x42b93333

    const v13, -0x3cd56666

    const/high16 v14, 0x43550000

    const v15, -0x3c23d99a

    const v16, 0x4386b333

    const/high16 v17, -0x3bc00000

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 202
    const v7, 0x44124000    # 585.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    const v7, 0x40066666

    const v9, 0x443f8000

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 204
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 206
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x3

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    .line 207
    const v7, 0x43eb8ccd    # 471.1f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    const v7, 0x44302000    # 704.5f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 209
    const v12, 0x448c7333

    const v13, 0x440cd333

    const v14, 0x44806ccd

    const v15, 0x4389999a

    const v16, 0x44560ccd

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 210
    const v7, 0x43ee3333    # 476.4f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    const v7, -0x3f566666    # -5.3f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 212
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 214
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x4

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    .line 215
    const v7, 0x43a18ccd    # 323.1f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    const v9, 0x44426000    # 777.5f

    invoke-virtual {v3, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    const v12, 0x4425799a

    const v13, 0x43ae6666

    const v14, 0x43d5999a

    const v15, 0x41ab3333

    const v16, 0x43c8999a

    const v17, 0x41cb3333

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 221
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x5

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    .line 222
    const v7, 0x4332715f

    const v9, 0x443fb6db

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    const v7, 0x439a599a    # 308.7f

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    const v12, 0x43bed99a

    const v13, 0x44172666

    const v14, 0x43f0cccd

    const v15, 0x43ac2666

    const v16, 0x440c8ccd

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 225
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 228
    sget-object v7, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v9, 0x6

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aput-object v10, v7, v9

    move-object v3, v10

    .line 229
    const/high16 v7, 0x43120000    # 146.0f

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    invoke-virtual {v3, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    const v6, 0x43c5199a    # 394.2f

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    const v12, 0x43a3d99a

    const v13, 0x43eda666

    const v14, 0x43648000

    const/high16 v15, 0x43490000

    const/high16 v16, 0x43120000

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 234
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 237
    .end local v3
    :cond_0
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4
    .local v3, "i":I
    if-ge v3, v5, :cond_1

    .line 241
    iget-object v4, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    aget v6, v6, v3

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    aget-object v4, v4, v3

    iget-object v6, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 237
    add-int/lit8 v4, v3, 0x1

    .end local v3
    .restart local v4
    goto :goto_0

    .line 245
    .end local v4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    iget-object v3, v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 247
    return-void

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawableWidth"    # I
    .param p2, "drawableHeight"    # I

    .line 151
    int-to-float v0, p1

    const v1, 0x44aac000    # 1366.0f

    div-float/2addr v0, v1

    .line 152
    .local v0, "scaleX":F
    int-to-float v2, p2

    const/high16 v3, 0x44400000    # 768.0f

    div-float/2addr v2, v3

    .line 153
    .local v2, "scaleY":F
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 154
    .local v4, "scale":F
    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 157
    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 158
    .local v1, "scaledWidth":I
    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 161
    .local v3, "scaledHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 165
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v6, "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v6, v4}, Lcom/android/setupwizardlib/GlifPatternDrawable;->renderOnCanvas(Landroid/graphics/Canvas;F)V

    .line 167
    return-object v5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 105
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 107
    .local v1, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 108
    .local v2, "drawableHeight":I
    const/4 v3, 0x0

    .line 109
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_0

    .line 110
    sget-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 114
    .local v4, "bitmapWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 117
    .local v5, "bitmapHeight":I
    if-le v1, v4, :cond_1

    int-to-float v6, v4

    const v7, 0x45001000    # 2049.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 119
    const/4 v3, 0x0

    goto :goto_0

    .line 120
    :cond_1
    if-le v2, v5, :cond_2

    int-to-float v6, v5

    const/high16 v7, 0x44900000    # 1152.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 122
    const/4 v3, 0x0

    .line 126
    .end local v4
    .end local v5
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 128
    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 130
    invoke-virtual {p0, v1, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 134
    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 140
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 141
    const/high16 v4, -0x1000000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 142
    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    iget v4, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "drawableBounds"    # Landroid/graphics/Rect;

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 252
    .local v0, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 253
    .local v1, "bitmapHeight":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 254
    .local v2, "scaleX":F
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 257
    .local v3, "scaleY":F
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 258
    cmpl-float v4, v3, v2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    if-lez v4, :cond_0

    .line 261
    div-float v4, v3, v2

    const v7, 0x3e158106

    int-to-float v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 262
    :cond_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 265
    div-float v4, v2, v3

    const v7, 0x3e6978d5

    int-to-float v8, v1

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .line 272
    return-void
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 289
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 290
    .local v0, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 291
    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 292
    .local v2, "b":I
    const/16 v3, 0xcc

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    .line 293
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->invalidateSelf()V

    .line 294
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 277
    return-void
.end method
