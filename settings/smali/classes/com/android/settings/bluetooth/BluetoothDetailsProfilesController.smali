.class public Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p4, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p5, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 60
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 61
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 63
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 64
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 65
    return-void
.end method

.method private createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 85
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    return-object v0
.end method

.method private disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 152
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 153
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    goto :goto_0

    .line 155
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 158
    :cond_1
    :goto_0
    return-void
.end method

.method private enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;

    .line 134
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 137
    return-void

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 142
    :cond_1
    invoke-interface {p1, p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 144
    return-void
.end method

.method private getProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    .line 196
    .local v1, "pbapPermission":I
    if-eqz v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v2

    .line 198
    .local v2, "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v2

    .line 202
    .local v2, "mapProfile":Lcom/android/settingslib/bluetooth/MapProfile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    .line 203
    .local v3, "mapPermission":I
    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$maybeAddHighQualityAudioPref$0(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "a2dp"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p2, "clickedPref"    # Landroid/support/v7/preference/Preference;

    .line 229
    move-object v0, p2

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 230
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 231
    const/4 v1, 0x1

    return v1
.end method

.method private maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 218
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 222
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 223
    .local v1, "a2dp":Lcom/android/settingslib/bluetooth/A2dpProfile;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    new-instance v2, Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 225
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 226
    .local v2, "highQualityAudioPref":Landroid/support/v14/preference/SwitchPreference;
    const-string v3, "A2dpProfileHighQualityAudio"

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 228
    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 235
    .end local v2
    :cond_1
    return-void
.end method

.method private refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .param p1, "profilePref"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 98
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 99
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 102
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 105
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_5

    .line 106
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 109
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 112
    :goto_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_7

    .line 113
    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 114
    .local v1, "a2dp":Lcom/android/settingslib/bluetooth/A2dpProfile;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    const-string v5, "A2dpProfileHighQualityAudio"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    .line 116
    .local v4, "highQualityPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v4, :cond_7

    .line 117
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 119
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    .line 123
    :cond_6
    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 127
    .end local v1
    .end local v4
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 264
    const-string v0, "bluetooth_profiles"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    .line 73
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 167
    .local v0, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-nez v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    .line 170
    .local v1, "psp":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    move-object v0, v1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 176
    .end local v1
    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 177
    .local v1, "profilePref":Landroid/support/v14/preference/SwitchPreference;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 178
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_1

    .line 181
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    .line 183
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 184
    const/4 v3, 0x1

    return v3
.end method

.method protected refresh()V
    .locals 4

    .line 243
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 244
    .local v1, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 246
    .local v2, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v2, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 249
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 251
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 252
    .end local v1
    .end local v2
    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 254
    .local v1, "removedProfile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 256
    .restart local v2
    if-eqz v2, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 259
    .end local v1
    .end local v2
    :cond_2
    goto :goto_1

    .line 260
    :cond_3
    return-void
.end method
