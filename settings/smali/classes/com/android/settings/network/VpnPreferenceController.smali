.class public Lcom/android/settings/network/VpnPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VpnPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mToggleable:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 57
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 58
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 59
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v0, Lcom/android/settings/network/VpnPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/VpnPreferenceController$1;-><init>(Lcom/android/settings/network/VpnPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    .line 73
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 74
    const-string v0, "connectivity"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    const-string v0, "connectivity"

    .line 77
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 78
    return-void
.end method

.method public static synthetic lambda$updateSummary$0(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    const-string v0, "vpn_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "airplane_mode"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method

.method getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 5
    .param p1, "cfg"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 165
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1210ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 171
    .local v0, "vpnPackage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 173
    .local v1, "userContext":Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 174
    .end local v1
    :catch_0
    move-exception v1

    .line 175
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VpnPreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "vpn_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_vpn"

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/VpnPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/network/VpnPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 115
    :cond_0
    return-void
.end method

.method updateSummary()V
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 125
    .local v0, "vpns":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/net/VpnConfig;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 127
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 128
    .local v4, "cfg":Lcom/android/internal/net/VpnConfig;
    if-nez v4, :cond_2

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-boolean v5, v4, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 134
    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v5

    .line 135
    .local v5, "legacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v5, :cond_1

    iget v6, v5, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 136
    goto :goto_0

    .line 139
    .end local v5
    :cond_3
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    .end local v3
    .end local v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v1
    :cond_4
    nop

    .line 146
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 148
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .local v2, "uid":I
    goto :goto_1

    .line 151
    .end local v2
    :cond_5
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 153
    .restart local v2
    :goto_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnConfig;

    .line 155
    .local v3, "vpn":Lcom/android/internal/net/VpnConfig;
    if-nez v3, :cond_6

    .line 156
    iget-object v4, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f121009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "summary":Ljava/lang/String;
    goto :goto_2

    .line 158
    .end local v4
    :cond_6
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/network/VpnPreferenceController;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4
    :goto_2
    new-instance v5, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;-><init>(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 161
    return-void

    .line 141
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :catch_0
    move-exception v1

    .line 143
    .local v1, "rme":Landroid/os/RemoteException;
    const-string v2, "VpnPreferenceController"

    const-string v3, "Unable to list active VPNs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return-void
.end method
