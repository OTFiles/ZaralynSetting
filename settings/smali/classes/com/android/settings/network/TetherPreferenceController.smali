.class public Lcom/android/settings/network/TetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;,
        Lcom/android/settings/network/TetherPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAdminDisallowedTetherConfig:Z

.field private mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field final mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 87
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->isTetherConfigDisallowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 96
    const-string v0, "connectivity"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummaryToOff()V

    return-void
.end method

.method public static isTetherConfigDisallowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    const-string v0, "no_config_tethering"

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 183
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSummaryToOff()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120e45

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 249
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 107
    const-string v0, "tether_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 110
    invoke-static {v1}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "tether_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "no_config_tethering"

    .line 122
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 121
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 123
    .local v0, "isBlocked":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/network/TetherPreferenceController;->mIsAvailable:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 180
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    .line 167
    .local v0, "profile":Landroid/bluetooth/BluetoothProfile;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    .line 146
    .local v0, "profile":Landroid/bluetooth/BluetoothProfile;
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 152
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    iget-object v1, v1, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    .line 129
    return-void
.end method

.method updateSummary()V
    .locals 14

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "allTethered":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "wifiTetherRegex":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "bluetoothRegex":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 198
    .local v3, "hotSpotOn":Z
    const/4 v4, 0x0

    .line 199
    .local v4, "tetherOn":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    .line 200
    if-eqz v1, :cond_4

    .line 201
    array-length v7, v0

    move v8, v3

    move v3, v5

    .end local v3
    .local v8, "hotSpotOn":Z
    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v9, v0, v3

    .line 202
    .local v9, "tethered":Ljava/lang/String;
    array-length v10, v1

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v1, v11

    .line 203
    .local v12, "regex":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 204
    const/4 v8, 0x1

    .line 205
    goto :goto_2

    .line 202
    .end local v12
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 201
    .end local v9
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_3
    move v3, v8

    .end local v8
    .restart local v3
    :cond_4
    array-length v7, v0

    if-le v7, v6, :cond_5

    .line 212
    const/4 v4, 0x1

    goto :goto_4

    .line 213
    :cond_5
    array-length v7, v0

    if-ne v7, v6, :cond_7

    .line 216
    if-nez v3, :cond_6

    move v7, v6

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    move v4, v7

    goto :goto_4

    .line 219
    :cond_7
    const/4 v4, 0x0

    .line 222
    :cond_8
    :goto_4
    if-nez v4, :cond_a

    if-eqz v2, :cond_a

    array-length v7, v2

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 225
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_a

    .line 227
    iget-object v7, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 228
    .local v7, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_9

    move v5, v6

    nop

    :cond_9
    move v4, v5

    .line 230
    .end local v7
    :cond_a
    if-nez v3, :cond_b

    if-nez v4, :cond_b

    .line 232
    iget-object v5, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e45

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 233
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 235
    iget-object v5, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e79

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 236
    :cond_c
    if-eqz v3, :cond_d

    .line 237
    iget-object v5, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e78

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 239
    :cond_d
    iget-object v5, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e77

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 241
    :goto_5
    return-void
.end method
