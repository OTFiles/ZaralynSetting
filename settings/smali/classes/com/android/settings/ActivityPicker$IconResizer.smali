.class Lcom/android/settings/ActivityPicker$IconResizer;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconResizer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 334
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 337
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 340
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    .line 341
    iput p1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 342
    iput p2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 343
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 358
    iget v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 359
    .local v0, "width":I
    iget v1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 361
    .local v1, "height":I
    if-nez p1, :cond_0

    .line 362
    new-instance v2, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    return-object v2

    .line 366
    :cond_0
    :try_start_0
    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_1

    .line 367
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    .line 368
    .local v2, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 369
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 370
    .end local v2
    goto :goto_0

    :cond_1
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 372
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 373
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 374
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_2

    .line 375
    iget-object v4, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 378
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 379
    .local v2, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 381
    .local v3, "iconHeight":I
    if-lez v2, :cond_8

    if-lez v3, :cond_8

    .line 382
    const/4 v4, 0x0

    if-lt v0, v2, :cond_4

    if-ge v1, v3, :cond_3

    goto :goto_1

    .line 411
    :cond_3
    if-ge v2, v0, :cond_8

    if-ge v3, v1, :cond_8

    .line 412
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 413
    .local v5, "c":Landroid/graphics/Bitmap$Config;
    iget v6, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    iget v7, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 414
    .local v6, "thumb":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 415
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v8, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 417
    sub-int v8, v0, v2

    div-int/lit8 v8, v8, 0x2

    .line 418
    .local v8, "x":I
    sub-int v9, v1, v3

    div-int/lit8 v9, v9, 0x2

    .line 419
    .local v9, "y":I
    add-int v10, v8, v2

    add-int v11, v9, v3

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    iget-object v10, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 423
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v10

    .line 424
    move-object v10, p1

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 425
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .end local v2
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    goto :goto_4

    .line 383
    .restart local v2
    .restart local v3
    :cond_4
    :goto_1
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 385
    .local v5, "ratio":F
    if-le v2, v3, :cond_5

    .line 386
    int-to-float v6, v0

    div-float/2addr v6, v5

    float-to-int v1, v6

    goto :goto_2

    .line 387
    :cond_5
    if-le v3, v2, :cond_6

    .line 388
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v0, v6

    .line 391
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 392
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_7
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 393
    .local v6, "c":Landroid/graphics/Bitmap$Config;
    :goto_3
    iget v7, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    iget v8, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 394
    .local v7, "thumb":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 395
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    iget-object v9, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    iget v9, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    .line 403
    .local v9, "x":I
    iget v10, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    .line 404
    .local v10, "y":I
    add-int v11, v9, v0

    add-int v12, v10, v1

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 405
    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 406
    iget-object v11, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 408
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v11

    .line 409
    move-object v11, p1

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 410
    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 431
    .end local v2
    .end local v3
    :cond_8
    :goto_4
    goto :goto_5

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    move-object p1, v3

    .line 433
    .end local v2
    :goto_5
    return-object p1
.end method
