.class public Lcom/android/settings/notification/AlarmVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "AlarmVolumePreferenceController.java"


# static fields
.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "alarm_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .line 52
    const/4 v0, 0x4

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/AlarmVolumePreferenceController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AlarmVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 37
    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    .line 57
    const v0, 0x10802f9

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "alarm_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/notification/AlarmVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarm_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
