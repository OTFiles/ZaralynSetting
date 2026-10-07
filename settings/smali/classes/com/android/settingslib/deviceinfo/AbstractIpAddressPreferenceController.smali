.class public abstract Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractIpAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"


# instance fields
.field private final mCM:Landroid/net/ConnectivityManager;

.field private mIpAddress:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    .line 54
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 3
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 100
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "addresses":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .line 95
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 96
    .local v0, "prop":Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    const-string v0, "wifi_ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroid/support/v7/preference/Preference;

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->updateConnectivity()V

    .line 71
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "wifi_ip_address"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected updateConnectivity()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroid/support/v7/preference/Preference;

    sget v2, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 86
    :goto_0
    return-void
.end method
