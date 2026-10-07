.class public Lcom/android/settings/gifmanager/GifPlayerView;
.super Landroid/widget/ImageView;
.source "GifPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;
    }
.end annotation


# instance fields
.field private height:I

.field private isGif:Z

.field private mGifMsgHandler:Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;

.field private mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

.field private runLoop:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->width:I

    .line 24
    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->height:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->isGif:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->runLoop:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/gifmanager/GifPlayerView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->width:I

    .line 24
    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->height:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->isGif:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->runLoop:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/gifmanager/GifPlayerView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->width:I

    .line 24
    iput v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->height:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->isGif:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->runLoop:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/gifmanager/GifPlayerView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/gifmanager/GifPlayerView;)Lcom/android/settings/gifmanager/GifSpanInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/gifmanager/GifPlayerView;

    .line 15
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/gifmanager/GifPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/gifmanager/GifPlayerView;

    .line 15
    iget-boolean v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->runLoop:Z

    return v0
.end method

.method private static bitmapScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "sizex"    # F
    .param p2, "sizey"    # F
    .param p3, "needRecycle"    # Z

    .line 64
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, "resizeBmp":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_0
    return-object v1

    .line 73
    .end local v0
    .end local v1
    :cond_1
    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/gifmanager/GifPlayerView;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/android/settings/gifmanager/GifPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v0, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;-><init>(Lcom/android/settings/gifmanager/GifPlayerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mGifMsgHandler:Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;

    .line 47
    return-void
.end method

.method private parseGif(FI)Lcom/android/settings/gifmanager/GifSpanInfo;
    .locals 6
    .param p1, "fscale"    # F
    .param p2, "resourceId"    # I

    .line 77
    new-instance v0, Lcom/android/settings/gifmanager/GifOpenHelper;

    invoke-direct {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;-><init>()V

    .line 78
    .local v0, "helper":Lcom/android/settings/gifmanager/GifOpenHelper;
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gifmanager/GifOpenHelper;->read(Ljava/io/InputStream;)I

    .line 79
    new-instance v1, Lcom/android/settings/gifmanager/GifSpanInfo;

    invoke-direct {v1}, Lcom/android/settings/gifmanager/GifSpanInfo;-><init>()V

    .line 80
    .local v1, "spanInfo":Lcom/android/settings/gifmanager/GifSpanInfo;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    .line 81
    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getFrameCount()I

    move-result v2

    iput v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->frameCount:I

    .line 82
    iget-object v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, p1, v4}, Lcom/android/settings/gifmanager/GifPlayerView;->bitmapScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iput-object v0, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->frameHelper:Lcom/android/settings/gifmanager/GifOpenHelper;

    .line 84
    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/gifmanager/GifPlayerView;->setPicSize(II)V

    .line 85
    move v2, v4

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->getFrameCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 86
    iget-object v3, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/settings/gifmanager/GifOpenHelper;->nextBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, p1, p1, v4}, Lcom/android/settings/gifmanager/GifPlayerView;->bitmapScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/gifmanager/GifPlayerView;->startAnimation()V

    .line 185
    return-void
.end method

.method public releaseLastGifSource(Lcom/android/settings/gifmanager/GifSpanInfo;)V
    .locals 3
    .param p1, "iGifSpanInfo"    # Lcom/android/settings/gifmanager/GifSpanInfo;

    .line 92
    if-eqz p1, :cond_2

    .line 93
    :goto_0
    iget-object v0, p1, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    iget-object v0, p1, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 95
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    :cond_0
    nop

    .line 102
    .end local v0
    :cond_1
    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method public sendMsgQueueDelayed(IIILjava/lang/Object;I)I
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 189
    iget-object v0, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mGifMsgHandler:Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 192
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 193
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 194
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mGifMsgHandler:Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/gifmanager/GifPlayerView$GifMsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    .end local v0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setGifSource(FI)V
    .locals 1
    .param p1, "fscale"    # F
    .param p2, "resourceId"    # I

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/gifmanager/GifPlayerView;->setGifSource(FIZ)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/gifmanager/GifPlayerView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public setGifSource(FIZ)V
    .locals 9
    .param p1, "fscale"    # F
    .param p2, "resourceId"    # I
    .param p3, "startplay"    # Z

    .line 153
    const-class v0, Lcom/android/settings/gifmanager/GifOpenHelper;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    .line 155
    .local v1, "iSpanInfo":Lcom/android/settings/gifmanager/GifSpanInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gifmanager/GifPlayerView;->parseGif(FI)Lcom/android/settings/gifmanager/GifSpanInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    .line 156
    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    iget-object v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/android/settings/gifmanager/GifPlayerView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    if-eqz p3, :cond_0

    .line 158
    const/16 v4, 0x271b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/gifmanager/GifPlayerView;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    .line 160
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/gifmanager/GifPlayerView;->releaseLastGifSource(Lcom/android/settings/gifmanager/GifSpanInfo;)V

    .line 161
    .end local v1
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGifSource(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 125
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/gifmanager/GifPlayerView;->setGifSource(FI)V

    .line 126
    return-void
.end method

.method public setHasGif(Z)V
    .locals 0
    .param p1, "isGif"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->isGif:Z

    .line 180
    return-void
.end method

.method public setPicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 174
    iput p1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->width:I

    .line 175
    iput p2, p0, Lcom/android/settings/gifmanager/GifPlayerView;->height:I

    .line 176
    return-void
.end method

.method public startAnimation()V
    .locals 8

    .line 165
    const-class v0, Lcom/android/settings/gifmanager/GifOpenHelper;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    iget v1, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    iget-object v2, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    iget v2, v2, Lcom/android/settings/gifmanager/GifSpanInfo;->frameCount:I

    if-lt v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/settings/gifmanager/GifPlayerView;->mSpanInfo:Lcom/android/settings/gifmanager/GifSpanInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    .line 169
    :cond_0
    const/16 v3, 0x271b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/gifmanager/GifPlayerView;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
