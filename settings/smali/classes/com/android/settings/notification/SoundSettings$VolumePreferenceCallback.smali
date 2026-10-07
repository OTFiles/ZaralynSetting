.class final Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;

    .line 229
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .line 234
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 238
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 242
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 256
    :cond_0
    return-void
.end method
