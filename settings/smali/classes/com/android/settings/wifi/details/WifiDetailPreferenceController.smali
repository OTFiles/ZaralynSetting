.class public Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LINK_SPEED:Ljava/lang/String; = "link_speed"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroid/app/Fragment;

.field private mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

.field private mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mIpv6AddressPref:Landroid/support/v7/preference/Preference;

.field private mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiSignalLevel:I

.field private mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "fragment"    # Landroid/app/Fragment;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p9, "injector"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 151
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 175
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 178
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 245
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 246
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 247
    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 248
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 249
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 251
    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 252
    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 253
    iput-object p9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canSignIntoNetwork()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private exitActivity()V
    .locals 2

    .line 395
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Exiting the WifiNetworkDetailsPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitFragment()V

    .line 402
    return-void
.end method

.method private forgetNetwork()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 560
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 561
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 560
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitFragment()V

    .line 566
    return-void
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 2
    .param p0, "prefixLength"    # I

    .line 518
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 520
    .local v0, "all":Ljava/net/InetAddress;
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 521
    .end local v0
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    return-object v1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static synthetic lambda$XZAGhHrbkIDyusER4MAM6luKcT0(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->forgetNetwork()V

    return-void
.end method

.method public static synthetic lambda$displayPreference$1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 286
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->signIntoNetwork()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .locals 12
    .param p0, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fragment"    # Landroid/app/Fragment;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p6, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p7, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 227
    new-instance v10, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    move-object v11, p2

    invoke-direct {v9, v11}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v11

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V

    return-object v10
.end method

.method private refreshNetworkState()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 428
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 429
    return-void
.end method

.method private refreshRssiViews()V
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 434
    .local v0, "signalLevel":I
    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    if-ne v1, v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 438
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 440
    .local v1, "wifiIcon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 441
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 443
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 444
    .local v2, "wifiIconDark":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060179

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 444
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 446
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 312
    const-string v0, "connection_header"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 313
    .local v0, "headerPref":Lcom/android/settings/applications/LayoutPreference;
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 315
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 316
    const v3, 0x7f0a0169

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 314
    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 318
    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    .local v1, "iconView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 320
    const v3, 0x7f0801fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 324
    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 573
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 572
    const/16 v3, 0x3f0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 575
    return-void
.end method

.method private updateInfo()V
    .locals 7

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 363
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshRssiViews()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    .line 373
    .local v0, "linkSpeedMbps":I
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f12079c

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 375
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 374
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 379
    .local v1, "frequency":I
    const/4 v2, 0x0

    .line 380
    .local v2, "band":Ljava/lang/String;
    const/16 v3, 0x960

    if-lt v1, v3, :cond_2

    const/16 v3, 0x9c4

    if-ge v1, v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12106a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 383
    :cond_2
    const/16 v3, 0x1324

    if-lt v1, v3, :cond_3

    const/16 v3, 0x170c

    if-ge v1, v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12106b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 387
    :cond_3
    const-string v3, "WifiDetailsPrefCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected frequency "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    .line 392
    return-void

    .line 356
    .end local v0
    .end local v1
    .end local v2
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    .line 357
    return-void
.end method

.method private updateIpLayerInfo()V
    .locals 9

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setVisible(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 474
    :cond_2
    const/4 v0, 0x0

    .line 475
    .local v0, "ipv4Address":Ljava/lang/String;
    const/4 v1, 0x0

    .line 476
    .local v1, "subnet":Ljava/lang/String;
    new-instance v4, Ljava/util/StringJoiner;

    const-string v5, "\n"

    invoke-direct {v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 478
    .local v4, "ipv6Addresses":Ljava/util/StringJoiner;
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 479
    .local v6, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_3

    .line 480
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 482
    :cond_3
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_4

    .line 483
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 485
    .end local v6
    :cond_4
    :goto_3
    goto :goto_2

    .line 488
    :cond_5
    const/4 v5, 0x0

    .line 489
    .local v5, "gateway":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 490
    .local v7, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 491
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 492
    goto :goto_5

    .line 494
    .end local v7
    :cond_6
    goto :goto_4

    .line 497
    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 498
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, "\n"

    .line 499
    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 502
    .local v6, "dnsServers":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v7, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 503
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v7, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 504
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v7, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 505
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v7, v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v4}, Ljava/util/StringJoiner;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 508
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 509
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 508
    invoke-virtual {v3, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_6

    .line 512
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 514
    :goto_6
    return-void

    .line 465
    .end local v0
    .end local v1
    .end local v4
    .end local v5
    .end local v6
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 470
    return-void
.end method

.method private updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/wifi/WifiDetailPreference;
    .param p2, "detailText"    # Ljava/lang/String;

    .line 452
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    goto :goto_0

    .line 456
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 458
    :goto_0
    return-void
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 276
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 280
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    .line 281
    const v1, 0x7f120661

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 283
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 284
    const v2, 0x7f121167

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v3, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 286
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 288
    const-string v0, "signal_strength"

    .line 289
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 290
    const-string v0, "link_speed"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 291
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 292
    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 294
    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 295
    const-string v0, "ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 296
    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 297
    const-string v0, "subnet_mask"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 298
    const-string v0, "dns"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 300
    const-string v0, "ipv6_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    .line 301
    const-string v0, "ipv6_addresses"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SAE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 304
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 309
    :goto_0
    return-void
.end method

.method public exitFragment()V
    .locals 3

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 410
    .local v1, "fragManager":Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 414
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    .line 415
    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 422
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    .end local v0
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 580
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 342
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 343
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 344
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 345
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 333
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 337
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 584
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 601
    :cond_0
    return-void
.end method
