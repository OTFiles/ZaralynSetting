.class public abstract Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractBluetoothA2dpPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/BluetoothServiceConnectionListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final STREAMING_LABEL_ID:I = 0x7f12031c


# instance fields
.field protected mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field protected final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field protected mPreference:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "store"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getListValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getListSummaries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 185
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    .line 187
    .local v0, "codecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
.end method

.method protected abstract getDefaultIndex()I
.end method

.method protected abstract getListSummaries()[Ljava/lang/String;
.end method

.method protected abstract getListValues()[Ljava/lang/String;
.end method

.method public onBluetoothCodecUpdated()V
    .locals 0

    .line 138
    return-void
.end method

.method public onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 1
    .param p1, "bluetoothA2dp"    # Landroid/bluetooth/BluetoothA2dp;

    .line 129
    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 130
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 131
    return-void
.end method

.method public onBluetoothServiceDisconnected()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 148
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    return v1

    .line 80
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->writeConfigurationValues(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 83
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_1

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 87
    :cond_1
    monitor-exit v2

    .line 91
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 93
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12031c

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v8, v8, v2

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    return v4

    .line 87
    .end local v2
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 180
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 181
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    if-nez v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 111
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    monitor-exit v1

    .line 113
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v1

    .line 114
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12031c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->writeConfigurationValues(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 111
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 105
    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract writeConfigurationValues(Ljava/lang/Object;)V
.end method
