.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field mPreference:Landroid/support/v7/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftApState:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiRegexs:[Ljava/lang/String;

.field mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "initSoftApManager"    # Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    const-string v0, "connectivity"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 75
    :cond_0
    if-eqz p3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V

    .line 78
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 41
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode(I)V

    return-void
.end method

.method private clearSummaryForAirplaneMode()V
    .locals 1

    .line 205
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode(I)V

    .line 206
    return-void
.end method

.method private clearSummaryForAirplaneMode(I)V
    .locals 3
    .param p1, "defaultId"    # I

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 211
    .local v0, "isAirplaneMode":Z
    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f121181

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 213
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 216
    :cond_2
    :goto_0
    return-void
.end method

.method private updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x10406ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 200
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 201
    if-nez p1, :cond_0

    .line 200
    move-object v5, v0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 200
    :goto_0
    invoke-virtual {v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 199
    const v4, 0x7f121182

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 90
    const-string v0, "wifi_tether"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "wifi_tether"

    return-object v0
.end method

.method handleWifiApStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121119

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 175
    :pswitch_0    # 0xd
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 176
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 177
    goto :goto_1

    .line 172
    .end local v0
    :pswitch_1    # 0xc
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121184

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 173
    goto :goto_1

    .line 182
    :pswitch_2    # 0xb
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1210db

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    .line 184
    goto :goto_1

    .line 179
    :pswitch_3    # 0xa
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121185

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 180
    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1210c0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    .line 193
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3    # 0xa
        :pswitch_2    # 0xb
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
    .end packed-switch
.end method

.method initWifiTetherSoftApManager()V
    .locals 3

    .line 127
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    .line 153
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0
.end method

.method public onStart()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->AIRPLANE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->clearSummaryForAirplaneMode()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->registerSoftApCallback()V

    .line 111
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->unRegisterSoftApCallback()V

    .line 121
    :cond_0
    return-void
.end method
