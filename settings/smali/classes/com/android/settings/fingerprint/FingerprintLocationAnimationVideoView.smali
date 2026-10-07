.class public Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;
.super Landroid/view/TextureView;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;


# instance fields
.field protected mAspect:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    .line 38
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method createMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUri"    # Landroid/net/Uri;

    .line 123
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method protected getFingerprintLocationAnimation()Landroid/net/Uri;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110006

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/view/TextureView;->onFinishInflate()V

    .line 62
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 119
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    .local v0, "originalWidth":I
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 52
    .local v1, "height":I
    const/high16 v2, 0x40000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 53
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 155
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 139
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 148
    :cond_0
    return-void
.end method
