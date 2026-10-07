.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "notification_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .line 54
    const/4 v0, 0x5

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 37
    :goto_0
    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    .line 59
    const v0, 0x7f0801ae

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "notification_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
