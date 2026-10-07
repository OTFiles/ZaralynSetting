.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTextureToDestroy:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    .line 62
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 68
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->getFingerprintLocationAnimation()Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, "videoUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->access$000(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->createMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 78
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 80
    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    .line 100
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->requestLayout()V

    .line 101
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->startAnimation()V

    .line 102
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 111
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 107
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 117
    return-void
.end method
