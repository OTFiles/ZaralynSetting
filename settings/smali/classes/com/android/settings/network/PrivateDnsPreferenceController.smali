.class public Lcom/android/settings/network/PrivateDnsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrivateDnsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_PRIVATE_DNS_SETTINGS:Ljava/lang/String; = "private_dns_settings"

.field private static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLatestLinkProperties:Landroid/net/LinkProperties;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "private_dns_mode"

    .line 57
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "private_dns_default_mode"

    .line 58
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "private_dns_specifier"

    .line 59
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/network/PrivateDnsPreferenceController;->SETTINGS_URIS:[Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, "private_dns_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController$1;-><init>(Lcom/android/settings/network/PrivateDnsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;-><init>(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 72
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 52
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/PrivateDnsPreferenceController;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 52
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mLatestLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 90
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "private_dns_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "mode":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mLatestLinkProperties:Landroid/net/LinkProperties;

    .line 116
    .local v3, "lp":Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getValidatedPrivateDnsServers()Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 118
    .local v5, "dnsesResolved":Z
    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x2023fbf7

    if-eq v8, v9, :cond_3

    const v6, -0x11dea3cd

    if-eq v8, v6, :cond_2

    const v6, 0x1ad6f

    if-eq v8, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "off"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const-string v6, "hostname"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    const-string v8, "opportunistic"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v7

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 133
    const-string v6, ""

    return-object v6

    .line 129
    :pswitch_0    # 0x2
    if-eqz v5, :cond_5

    .line 130
    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 131
    :cond_5
    const v6, 0x7f120a5d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    :goto_3
    return-object v6

    .line 126
    :pswitch_1    # 0x1
    if-eqz v5, :cond_6

    const v6, 0x7f120e47

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 127
    :cond_6
    const v6, 0x7f120a5b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    :goto_4
    return-object v6

    .line 120
    :pswitch_2    # 0x0
    const v6, 0x7f120a5a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onStart()V
    .locals 7

    .line 94
    sget-object v0, Lcom/android/settings/network/PrivateDnsPreferenceController;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 95
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 98
    .local v0, "defaultNetwork":Landroid/net/Network;
    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mLatestLinkProperties:Landroid/net/LinkProperties;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 102
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 108
    return-void
.end method
