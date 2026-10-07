.class public Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;

.field private mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 107
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 108
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 111
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 39
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "x1"    # Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    .line 39
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2
    .param p0, "a"    # Landroid/bluetooth/BluetoothCodecConfig;
    .param p1, "b"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 288
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .line 360
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 363
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 368
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 356
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    return v0
.end method

.method public getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 274
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "divhee execute getHighQualityAudioOptionLabel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    .line 276
    .local v0, "unknownCodecId":I
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 282
    :cond_1
    const/4 v1, 0x0

    .line 283
    .local v1, "selectable":[Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    .line 286
    sget-object v2, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 292
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    array-length v4, v1

    if-ge v4, v3, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    aget-object v4, v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x0

    .line 294
    .local v4, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 295
    :cond_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    goto :goto_3

    :cond_6
    :goto_2
    const v5, 0xf4240

    .line 297
    .local v5, "codecType":I
    :goto_3
    const/4 v6, -0x1

    .line 298
    .local v6, "index":I
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 318
    :pswitch_0    # 0x6
    const/4 v6, 0x7

    goto :goto_4

    .line 312
    :pswitch_1    # 0x5
    const/4 v6, 0x5

    .line 313
    goto :goto_4

    .line 315
    :pswitch_2    # 0x4
    const/4 v6, 0x6

    .line 316
    goto :goto_4

    .line 309
    :pswitch_3    # 0x3
    const/4 v6, 0x4

    .line 310
    goto :goto_4

    .line 306
    :pswitch_4    # 0x2
    const/4 v6, 0x3

    .line 307
    goto :goto_4

    .line 303
    :pswitch_5    # 0x1
    const/4 v6, 0x2

    .line 304
    goto :goto_4

    .line 300
    :pswitch_6    # 0x0
    const/4 v6, 0x1

    .line 301
    nop

    .line 322
    :goto_4
    if-gez v6, :cond_7

    .line 323
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 325
    :cond_7
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    aput-object v9, v3, v2

    .line 325
    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 278
    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6    # 0x0
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 338
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method isA2dpPlaying()Z
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    const/4 v1, 0x1

    return v1

    .line 192
    .end local v3
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    return v1
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled_ReadboyBase(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 216
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 218
    const/4 v0, 0x0

    .line 221
    :cond_0
    return v0
.end method

.method public isHighQualityAudioEnabled_ReadboyBase(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 225
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "divhee execute isHighQualityAudioEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 227
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "A2dpProfile"

    const-string v2, "mServiceWrapper is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    return v1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 232
    .local v0, "enabled":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    .line 233
    if-ne v0, v3, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 234
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    .line 235
    invoke-virtual {v2, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 239
    return v3

    .line 241
    :cond_5
    const/4 v2, 0x0

    .line 242
    .local v2, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 243
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    .line 245
    :cond_6
    if-eqz v2, :cond_7

    .line 246
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 248
    :cond_7
    return v1
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method setBluetoothA2dpWrapper(Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    .line 116
    return-void
.end method

.method public setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "enabled"    # Z

    .line 253
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divhee execute setHighQualityAudioEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    if-nez v0, :cond_2

    .line 255
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "A2dpProfile"

    const-string v1, "mServiceWrapper is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    return-void

    .line 258
    :cond_2
    if-eqz p2, :cond_3

    .line 259
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    :cond_3
    const/4 v0, 0x0

    .line 261
    .local v0, "prefValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 263
    return-void

    .line 265
    :cond_4
    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_5

    const-string v1, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divhee222 execute setHighQualityAudioEnabled()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_5
    if-eqz p2, :cond_6

    .line 267
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 271
    :goto_1
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 184
    :cond_2
    :goto_0
    return-void
.end method

.method public supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 197
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "divhee execute supportsHighQualityAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 199
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "A2dpProfile"

    const-string v2, "mServiceWrapper is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    return v1

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 330
    const-string v0, "A2DP"

    return-object v0
.end method
