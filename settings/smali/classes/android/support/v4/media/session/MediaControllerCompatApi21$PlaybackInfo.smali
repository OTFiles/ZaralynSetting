.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# direct methods
.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 204
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 205
    .local v0, "attrs":Landroid/media/AudioAttributes;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 228
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 230
    const/4 v0, 0x7

    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 233
    const/4 v0, 0x6

    return v0

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    .line 261
    return v3

    .line 244
    :pswitch_0    # 0xd
    return v1

    .line 252
    :pswitch_1    # 0x6
    const/4 v0, 0x2

    return v0

    .line 258
    :pswitch_2    # 0x7 0x8 0x9 0xa 0x5
    const/4 v0, 0x5

    return v0

    .line 250
    :pswitch_3    # 0x4
    return v2

    .line 248
    :pswitch_4    # 0x3
    const/16 v0, 0x8

    return v0

    .line 246
    :pswitch_5    # 0x2
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_6    # 0xb 0xc 0xe 0x1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
        :pswitch_3    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_2    # 0x7
        :pswitch_2    # 0x8
        :pswitch_2    # 0x9
        :pswitch_2    # 0xa
        :pswitch_6    # 0xb
        :pswitch_6    # 0xc
        :pswitch_0    # 0xd
        :pswitch_6    # 0xe
    .end packed-switch
.end method
