.class public Lcom/android/settings/view/AssestImage;
.super Landroid/view/View;
.source "AssestImage.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private loadImage()Landroid/graphics/Bitmap;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/view/AssestImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/view/AssestImage;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 78
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 79
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 80
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 82
    .end local v0
    .end local v2
    .end local v3
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v0
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 42
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput-object v0, p0, Lcom/android/settings/view/AssestImage;->path:Ljava/lang/String;

    .line 51
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 52
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/view/AssestImage;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/view/AssestImage;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/view/AssestImage;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/settings/view/AssestImage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/settings/view/AssestImage;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/view/AssestImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 68
    .end local v0
    :cond_1
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/settings/view/AssestImage;->path:Ljava/lang/String;

    .line 25
    return-void
.end method
