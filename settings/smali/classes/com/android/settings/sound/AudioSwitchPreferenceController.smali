.class public abstract Lcom/android/settings/sound/AudioSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AudioSwitchPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;
    }
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioSwitchPreferenceController"


# instance fields
.field protected final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

.field protected mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

.field protected mPreference:Landroid/support/v7/preference/Preference;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

.field protected mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    .line 104
    new-instance v0, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    .line 105
    new-instance v0, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 111
    .local v0, "localBtManagerFutureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/android/settingslib/bluetooth/LocalBluetoothManager;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 116
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 117
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 118
    const-string v1, "AudioSwitchPreferenceController"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 124
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AudioSwitchPreferenceController"

    const-string v3, "Error getting LocalBluetoothManager."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-void
.end method

.method private getConnectedDeviceIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "hardwareAddress"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 384
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    return v0

    .line 382
    .end local v2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/sound/AudioSwitchPreferenceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method private register()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 171
    return-void
.end method

.method protected findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "streamType"    # I

    .line 322
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 323
    return-object v0

    .line 325
    :cond_0
    const/16 v2, 0x380

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 329
    :cond_2
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 334
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 336
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 339
    return-object v3

    .line 341
    .end local v3
    :cond_3
    goto :goto_0

    .line 343
    .end local v1
    :cond_4
    return-object v0
.end method

.method public final getAvailabilityStatus()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_audio_switcher"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0
.end method

.method protected getConnectedA2dpDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    .line 277
    .local v1, "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    if-nez v1, :cond_0

    .line 278
    return-object v0

    .line 280
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 281
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 282
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4
    :cond_1
    goto :goto_0

    .line 286
    :cond_2
    return-object v0
.end method

.method protected getConnectedHearingAidDevices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    .line 295
    .local v1, "hapProfile":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    if-nez v1, :cond_0

    .line 296
    return-object v0

    .line 298
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v2, "devicesHiSyncIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 300
    .local v3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 301
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    .line 304
    .local v6, "hiSyncId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 305
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v5
    .end local v6
    :cond_1
    goto :goto_0

    .line 309
    :cond_2
    return-object v0
.end method

.method protected getConnectedHfpDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 259
    .local v1, "hfpProfile":Lcom/android/settingslib/bluetooth/HeadsetProfile;
    if-nez v1, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 264
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4
    :cond_1
    goto :goto_0

    .line 268
    :cond_2
    return-object v0
.end method

.method getDefaultDeviceIndex()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 250
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 203
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 204
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 209
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .line 219
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 199
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 234
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 235
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 243
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 239
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 139
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "address":Ljava/lang/String;
    instance-of v1, p1, Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 141
    return v2

    .line 144
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 145
    .local v1, "listPreference":Landroid/support/v7/preference/ListPreference;
    iget-object v3, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120890

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 149
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedDeviceIndex(Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, "connectedDeviceIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 154
    return v2

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iput v3, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 159
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v2
    .end local v3
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    .line 214
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 215
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .line 226
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "AudioSwitchPreferenceController"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->register()V

    .line 181
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "AudioSwitchPreferenceController"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->unregister()V

    .line 191
    return-void
.end method

.method public abstract setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    .line 246
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    .line 247
    return-void
.end method

.method setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "mediaOutputs"    # [Ljava/lang/CharSequence;
    .param p2, "mediaValues"    # [Ljava/lang/CharSequence;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;

    .line 372
    move-object v0, p3

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 373
    .local v0, "listPreference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 375
    iget v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 376
    iget v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    invoke-interface {v1, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    .line 378
    return-void
.end method

.method setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "mediaOutputs"    # [Ljava/lang/CharSequence;
    .param p2, "mediaValues"    # [Ljava/lang/CharSequence;
    .param p3, "activeDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getDefaultDeviceIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 356
    iget v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120890

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v0

    .line 358
    iget v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 361
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 362
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    .line 363
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    iput v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 359
    .end local v2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method
