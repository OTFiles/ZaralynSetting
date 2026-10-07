.class public Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioChannelModePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "store"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 81
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v0

    .line 82
    .local v0, "channelMode":I
    const/4 v1, 0x0

    .line 83
    .local v1, "index":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0    # 0x2
    const/4 v1, 0x2

    .line 89
    goto :goto_0

    .line 85
    :pswitch_1    # 0x1
    const/4 v1, 0x1

    .line 86
    nop

    .line 94
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "bluetooth_select_a2dp_channel_mode"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "index":I
    const/4 v1, 0x0

    .line 63
    .local v1, "channelModeValue":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0    # 0x2
    const/4 v1, 0x2

    .line 72
    goto :goto_0

    .line 68
    :pswitch_1    # 0x1
    const/4 v1, 0x1

    .line 69
    goto :goto_0

    .line 66
    :pswitch_2    # 0x0
    nop

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    .line 77
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
