.class public Lcom/android/setupwizardlib/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected mAspectRatio:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field mSurface:Landroid/view/Surface;

.field private mVideoResId:I

.field protected mWindowVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 71
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 73
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView_suwVideo:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 74
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    const v0, 0x3f7ffffe

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 82
    invoke-virtual {p0, p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 83
    return-void
.end method

.method private initVideo()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mWindowVisibility:I

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createSurface()V

    .line 218
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    goto :goto_0

    .line 221
    :cond_1
    const-string v0, "IllustrationVideoView"

    const-string v1, "Surface creation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void
.end method

.method private reattach()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->initVideo()V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method protected createMediaPlayer()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 141
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 146
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 147
    .local v0, "aspectRatio":F
    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 148
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->requestLayout()V

    .line 151
    .end local v0
    :cond_2
    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "IllustrationVideoView"

    const-string v1, "Unable to initialize media player for video view"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mWindowVisibility:I

    if-nez v0, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    .line 157
    :cond_4
    return-void

    .line 134
    :cond_5
    :goto_1
    return-void
.end method

.method protected createSurface()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 166
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_1

    .line 167
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 168
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    .line 170
    :cond_1
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 276
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->onRenderingStart()V

    .line 281
    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 90
    .local v1, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 92
    int-to-float v2, v1

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 95
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 98
    :goto_0
    nop

    .line 99
    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 100
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 98
    invoke-super {p0, v3, v2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 101
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 286
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 287
    return-void
.end method

.method protected onRenderingStart()V
    .locals 0

    .line 226
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 291
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 292
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 233
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->initVideo()V

    .line 235
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 243
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 239
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 249
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 117
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->stop()V

    .line 123
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 174
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    .line 175
    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mWindowVisibility:I

    .line 176
    if-nez p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->reattach()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

    .line 181
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 198
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 199
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 203
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mSurface:Landroid/view/Surface;

    .line 205
    :cond_1
    return-void
.end method

.method public setVideoResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 109
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    if-eq p1, v0, :cond_0

    .line 110
    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mVideoResId:I

    .line 111
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    .line 113
    :cond_0
    return-void
.end method

.method protected shouldLoop()Z
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 258
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 265
    :cond_0
    return-void
.end method
