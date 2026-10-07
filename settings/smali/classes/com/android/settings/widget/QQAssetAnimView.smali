.class public Lcom/android/settings/widget/QQAssetAnimView;
.super Landroid/view/View;
.source "QQAssetAnimView.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;,
        Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;,
        Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
    }
.end annotation


# instance fields
.field private bAutoSize:Z

.field private bLoop:Z

.field private bSelfPauseAnim:Z

.field private mAnimPostion:I

.field private mAnimStyleId:I

.field private mAnimTagObj:Ljava/lang/String;

.field private mAutoReset:I

.field private mContext:Landroid/content/Context;

.field private mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

.field private mSelfPauseCount:I

.field private ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

.field private task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

.field private timeout:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    .line 83
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    .line 88
    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    .line 92
    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bLoop:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bAutoSize:Z

    .line 100
    const/16 v1, 0x96

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    .line 104
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 106
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/QQAssetAnimView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    .line 83
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    .line 88
    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    .line 92
    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bLoop:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bAutoSize:Z

    .line 100
    const/16 v1, 0x96

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    .line 104
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 106
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/QQAssetAnimView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/QQAssetAnimView;)[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/QQAssetAnimView;

    .line 27
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    return-object v0
.end method

.method private bMyHidedScreen()Z
    .locals 3

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimTagObj:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;->bHidedScreen(Ljava/lang/String;)Z

    move-result v0

    .line 212
    :cond_0
    return v0
.end method

.method private bMyOwnerActPause()Z
    .locals 3

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimTagObj:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;->bOwnerActPause(Ljava/lang/String;)Z

    move-result v0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :cond_0
    return v0
.end method

.method private cleanDisplay()V
    .locals 0

    .line 491
    return-void
.end method

.method private drawOnePic(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "fullResPath"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 440
    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/widget/QQAssetAnimView;->readBitmapFromAssetsFullPath(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 447
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    .line 449
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    .local v3, "src":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getHeight()I

    move-result v6

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 451
    .local v4, "dst":Landroid/graphics/Rect;
    invoke-virtual {p2, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 452
    .end local v3
    .end local v4
    goto :goto_0

    .line 453
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 455
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 456
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    nop

    .line 464
    .end local v1
    :cond_3
    :goto_1
    goto :goto_2

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "QQAssetAnim_View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "divhee fullResPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",drawOne_Pic error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/widget/QQAssetAnimView;->bMyHidedScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 468
    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    goto :goto_4

    .line 469
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/widget/QQAssetAnimView;->bMyOwnerActPause()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 470
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    .line 471
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 473
    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 477
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    goto :goto_3

    .line 479
    :cond_6
    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    .line 481
    :goto_3
    iput-boolean v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    goto :goto_4

    .line 483
    :cond_7
    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mSelfPauseCount:I

    .line 485
    :goto_4
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method private readBitmapFromAssetsFullPath(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 401
    if-nez p3, :cond_0

    .line 402
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 404
    :cond_0
    move-object v0, p2

    .line 405
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 406
    .local v1, "assets":Landroid/content/res/AssetManager;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 407
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-object p3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 408
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    move-object v5, v4

    .line 413
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v3, v6

    .line 414
    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 420
    if-eqz v3, :cond_2

    .line 421
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 423
    :catch_0
    move-exception v4

    goto :goto_2

    .line 419
    :catchall_0
    move-exception v4

    .line 420
    if-eqz v3, :cond_1

    .line 421
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 423
    :catch_1
    move-exception v6

    .line 424
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6
    goto :goto_1

    .line 425
    :cond_1
    :goto_0
    nop

    .line 426
    :goto_1
    const/4 v3, 0x0

    throw v4

    .line 415
    :catch_2
    move-exception v4

    .line 420
    if-eqz v3, :cond_2

    .line 421
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 423
    :catch_3
    move-exception v4

    .line 424
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4
    goto :goto_4

    .line 425
    :cond_2
    :goto_3
    nop

    .line 426
    :goto_4
    const/4 v3, 0x0

    .line 427
    nop

    .line 429
    return-object v5
.end method


# virtual methods
.method public forceRestartSelfPauseAnim()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    .line 236
    :cond_0
    return-void
.end method

.method public getAnimParam()[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    return-object v0
.end method

.method public getAnimStyle()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v0}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v0

    return v0

    .line 261
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoReset()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    return v0
.end method

.method public initAnimParam([Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "resIdNum"    # [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
    .param p2, "tagObj"    # Ljava/lang/String;

    .line 141
    const-class v0, Lcom/android/settings/widget/QQAssetAnimView;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 143
    iput-object p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    .line 144
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 145
    move v1, v2

    .local v1, "inum":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    aget-object v3, v3, v1

    iput v2, v3, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1
    :cond_0
    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    .line 150
    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    .line 151
    iput-object p2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimTagObj:Ljava/lang/String;

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLoop()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->bLoop:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 174
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    .line 185
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 579
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 580
    const-class v0, Lcom/android/settings/widget/QQAssetAnimView;

    monitor-enter v0

    .line 581
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v1}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v1

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v1}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 582
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resStart:I

    if-ge v1, v2, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resStart:I

    iput v2, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v3

    aget-object v2, v2, v3

    iget v3, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->getAssetFullPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/widget/QQAssetAnimView;->drawOnePic(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resCount:I

    if-lt v1, v2, :cond_7

    .line 587
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v3}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resStart:I

    iput v2, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    .line 588
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopTims:I

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 589
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimTagObj:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;->endOneLoop(Ljava/lang/String;)Z

    .line 592
    :cond_1
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-static {v1}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I

    move-result v1

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    if-eq v1, v3, :cond_2

    .line 593
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->isLoop()Z

    move-result v1

    if-nez v1, :cond_7

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 597
    monitor-exit v0

    return-void

    .line 599
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopTims:I

    if-gez v1, :cond_4

    goto :goto_0

    .line 602
    :cond_4
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopTims:I

    if-lez v1, :cond_7

    .line 603
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    iget v3, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    .line 605
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    if-gtz v1, :cond_7

    .line 606
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    .line 607
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    .line 608
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    iget-object v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 609
    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    goto :goto_0

    .line 611
    :cond_5
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    if-eqz v1, :cond_6

    .line 612
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    iget-object v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimTagObj:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;->endAnyTimes(Ljava/lang/String;)Z

    .line 616
    :cond_6
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    .line 622
    :cond_7
    :goto_0
    monitor-exit v0

    .line 625
    goto :goto_1

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 623
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    .end local v0
    :goto_1
    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 0
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->restartSelfPauseAnim()V

    .line 171
    return-void
.end method

.method public resetWidthHeight(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 635
    .local v0, "vglp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p2, :cond_1

    .line 636
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 637
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 638
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/QQAssetAnimView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->requestLayout()V

    .line 641
    :cond_1
    return-void
.end method

.method public restartSelfPauseAnim()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/QQAssetAnimView;->bMyOwnerActPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->postInvalidate()V

    goto :goto_1

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/QQAssetAnimView;->bMyOwnerActPause()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    iget-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/QQAssetAnimView;->startAnimAction(II)Z

    .line 227
    :cond_2
    :goto_1
    return-void
.end method

.method public setAutoReset(I)V
    .locals 0
    .param p1, "autoReset"    # I

    .line 242
    iput p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAutoReset:I

    .line 243
    return-void
.end method

.method public setAutoSize(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .line 374
    iput-boolean p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bAutoSize:Z

    .line 375
    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .line 358
    iput-boolean p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bLoop:Z

    .line 359
    return-void
.end method

.method public setOnOwnerActivtiyStateCallback(Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    .line 499
    iput-object p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->ownerStateCallback:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    .line 500
    return-void
.end method

.method public startAnimAction(II)Z
    .locals 10
    .param p1, "animStyle"    # I
    .param p2, "animpos"    # I

    .line 279
    const-class v0, Lcom/android/settings/widget/QQAssetAnimView;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/QQAssetAnimView;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    if-eqz v2, :cond_7

    if-ltz p1, :cond_7

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_7

    .line 283
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-virtual {v2}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->cancel()Z

    .line 285
    iput-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 289
    iput-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    .line 291
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    .line 292
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    .line 293
    new-instance v2, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    invoke-direct {v2, p0, v4}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;-><init>(Lcom/android/settings/widget/QQAssetAnimView;I)V

    iput-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 294
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iput p2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v5, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resStart:I

    iput v4, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    if-gtz v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v5, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopTims:I

    iput v4, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resWait:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resWait:I

    const/16 v4, 0xbb8

    if-ge v2, v4, :cond_4

    .line 305
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resWait:I

    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    goto :goto_1

    .line 307
    :cond_4
    const/16 v2, 0x96

    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/QQAssetAnimView;->postInvalidate()V

    .line 312
    iget-object v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->timer:Ljava/util/Timer;

    iget-object v5, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    iget v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    int-to-long v6, v2

    iget v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->timeout:I

    int-to-long v8, v2

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v4, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->mySize:Landroid/graphics/Point;

    if-eqz v2, :cond_5

    .line 315
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->mySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->mySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/QQAssetAnimView;->resetWidthHeight(II)V

    goto :goto_2

    .line 316
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->bAutoSize:Z

    if-eqz v2, :cond_6

    .line 317
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->getAssetFullPath(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "firstImagePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/settings/widget/QQAssetAnimView;->readBitmapFromAssetsFullPath(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 319
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_6

    .line 320
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/widget/QQAssetAnimView;->resetWidthHeight(II)V

    .line 321
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======divhee======firstImagePath==setLayoutParams="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1
    .end local v2
    :cond_6
    :goto_2
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 326
    :cond_7
    monitor-exit v0

    return v1

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAnimAction()V
    .locals 4

    .line 336
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    iget-object v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mResourceId_Num:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimStyleId:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    iput v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    goto :goto_0

    .line 339
    :cond_0
    iput v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->mAnimPostion:I

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    invoke-virtual {v1}, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->cancel()Z

    .line 343
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/QQAssetAnimView;->cleanDisplay()V

    .line 346
    iput-boolean v2, p0, Lcom/android/settings/widget/QQAssetAnimView;->bSelfPauseAnim:Z

    .line 350
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView;->task:Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 351
    .end local v1
    :goto_1
    return-void
.end method
