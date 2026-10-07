.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "store"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 146
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    .line 147
    .local v0, "codecType":I
    const/4 v1, 0x0

    .line 148
    .local v1, "index":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0    # 0x6
    const/4 v1, 0x7

    .line 169
    goto :goto_0

    .line 162
    :pswitch_1    # 0x5
    const/4 v1, 0x5

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2    # 0x4
    const/4 v1, 0x6

    .line 166
    goto :goto_0

    .line 159
    :pswitch_3    # 0x3
    const/4 v1, 0x4

    .line 160
    goto :goto_0

    .line 156
    :pswitch_4    # 0x2
    const/4 v1, 0x3

    .line 157
    goto :goto_0

    .line 153
    :pswitch_5    # 0x1
    const/4 v1, 0x2

    .line 154
    goto :goto_0

    .line 150
    :pswitch_6    # 0x0
    const/4 v1, 0x1

    .line 151
    nop

    .line 174
    :goto_0
    return v1

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

.method protected getDefaultIndex()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "bluetooth_select_a2dp_codec"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "index":I
    const/4 v1, 0x0

    .line 62
    .local v1, "codecTypeValue":I
    const/4 v2, 0x0

    .line 63
    .local v2, "codecPriorityValue":I
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 131
    :pswitch_0    # 0x9
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v4

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 135
    :cond_0
    monitor-exit v4

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v3

    monitor-exit v4

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 124
    :pswitch_1    # 0x8
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v4

    .line 125
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 128
    :cond_1
    monitor-exit v4

    .line 129
    return-void

    .line 128
    :catchall_1
    move-exception v3

    monitor-exit v4

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 120
    :pswitch_2    # 0x7
    const/4 v1, 0x6

    .line 121
    const v2, 0xf4240

    .line 122
    goto :goto_0

    .line 116
    :pswitch_3    # 0x6
    const/4 v1, 0x4

    .line 117
    const v2, 0xf4240

    .line 118
    goto :goto_0

    .line 112
    :pswitch_4    # 0x5
    const/4 v1, 0x5

    .line 113
    const v2, 0xf4240

    .line 114
    goto :goto_0

    .line 108
    :pswitch_5    # 0x4
    const/4 v1, 0x3

    .line 109
    const v2, 0xf4240

    .line 110
    goto :goto_0

    .line 104
    :pswitch_6    # 0x3
    const/4 v1, 0x2

    .line 105
    const v2, 0xf4240

    .line 106
    goto :goto_0

    .line 100
    :pswitch_7    # 0x2
    const/4 v1, 0x1

    .line 101
    const v2, 0xf4240

    .line 102
    goto :goto_0

    .line 96
    :pswitch_8    # 0x1
    const/4 v1, 0x0

    .line 97
    const v2, 0xf4240

    .line 98
    goto :goto_0

    .line 66
    :pswitch_9    # 0x0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "oldValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 92
    goto :goto_0

    .line 89
    :pswitch_a    # 0x7
    const/4 v1, 0x6

    .line 90
    goto :goto_0

    .line 86
    :pswitch_b    # 0x6
    const/4 v1, 0x4

    .line 87
    goto :goto_0

    .line 83
    :pswitch_c    # 0x5
    const/4 v1, 0x5

    .line 84
    goto :goto_0

    .line 80
    :pswitch_d    # 0x4
    const/4 v1, 0x3

    .line 81
    goto :goto_0

    .line 77
    :pswitch_e    # 0x3
    const/4 v1, 0x2

    .line 78
    goto :goto_0

    .line 74
    :pswitch_f    # 0x2
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 71
    :pswitch_10    # 0x1
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 69
    :pswitch_11    # 0x0
    nop

    .line 140
    .end local v3
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v3, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 142
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9    # 0x0
        :pswitch_8    # 0x1
        :pswitch_7    # 0x2
        :pswitch_6    # 0x3
        :pswitch_5    # 0x4
        :pswitch_4    # 0x5
        :pswitch_3    # 0x6
        :pswitch_2    # 0x7
        :pswitch_1    # 0x8
        :pswitch_0    # 0x9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11    # 0x0
        :pswitch_10    # 0x1
        :pswitch_f    # 0x2
        :pswitch_e    # 0x3
        :pswitch_d    # 0x4
        :pswitch_c    # 0x5
        :pswitch_b    # 0x6
        :pswitch_a    # 0x7
    .end packed-switch
.end method
