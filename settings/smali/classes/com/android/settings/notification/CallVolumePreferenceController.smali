.class public Lcom/android/settings/notification/CallVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "CallVolumePreferenceController.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/CallVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/CallVolumePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 35
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/CallVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x6

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/CallVolumePreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/CallVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 40
    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    .line 60
    const v0, 0x7f080195

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/notification/CallVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
