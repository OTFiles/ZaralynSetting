.class public Lcom/android/settings/notification/MediaVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "MediaVolumePreferenceController.java"


# static fields
.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "media_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .line 53
    const/4 v0, 0x3

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    .line 58
    const v0, 0x7f08019a

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "media_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
