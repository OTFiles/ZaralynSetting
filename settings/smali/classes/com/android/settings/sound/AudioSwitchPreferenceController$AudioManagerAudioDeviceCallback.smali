.class Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "AudioSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/AudioSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerAudioDeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/sound/AudioSwitchPreferenceController;
    .param p2, "x1"    # Lcom/android/settings/sound/AudioSwitchPreferenceController$1;

    .line 411
    invoke-direct {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 414
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, v1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 415
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "devices"    # [Landroid/media/AudioDeviceInfo;

    .line 419
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v1, v1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 420
    return-void
.end method
