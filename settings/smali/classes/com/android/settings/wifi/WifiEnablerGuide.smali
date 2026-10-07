.class public Lcom/android/settings/wifi/WifiEnablerGuide;
.super Ljava/lang/Object;
.source "WifiEnablerGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBeanVariable:Lcom/android/settings/BeanVariable;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGuideWifiTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mSwitchPref:Landroid/view/ViewGroup;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSwitch:Landroid/widget/Switch;

.field private textTitleOff:Ljava/lang/String;

.field private textTitleOn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/settings/BeanVariable;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSwitchPref"    # Landroid/view/ViewGroup;
    .param p3, "beanVariable"    # Lcom/android/settings/BeanVariable;
    .param p4, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 117
    const-string v0, "connectivity"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 117
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiEnablerGuide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/settings/BeanVariable;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V

    .line 119
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/settings/BeanVariable;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSwitchPref"    # Landroid/view/ViewGroup;
    .param p3, "beanVariable"    # Lcom/android/settings/BeanVariable;
    .param p4, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p5, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lcom/android/settings/wifi/WifiEnablerGuide$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnablerGuide$1;-><init>(Lcom/android/settings/wifi/WifiEnablerGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Lcom/android/settings/wifi/WifiEnablerGuide$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnablerGuide$2;-><init>(Lcom/android/settings/wifi/WifiEnablerGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12113d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1209bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOn:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOff:Ljava/lang/String;

    .line 129
    const v0, 0x1020040

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    .line 130
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mGuideWifiTitle:Landroid/widget/TextView;

    .line 131
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mBeanVariable:Lcom/android/settings/BeanVariable;

    .line 133
    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 134
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    iput-object p5, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnablerGuide;->setupSwitchController()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnablerGuide;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnablerGuide;

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnablerGuide;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnablerGuide;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnablerGuide;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnablerGuide;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnablerGuide;

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnablerGuide;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnablerGuide;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnablerGuide;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 254
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 183
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnablerGuide;->setSwitchBarChecked(Z)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto :goto_0

    .line 188
    :pswitch_0    # 0x3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->setSwitchBarChecked(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 191
    goto :goto_0

    .line 185
    :pswitch_1    # 0x2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 186
    goto :goto_0

    .line 196
    :pswitch_2    # 0x1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnablerGuide;->setSwitchBarChecked(Z)V

    .line 198
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 199
    goto :goto_0

    .line 193
    :pswitch_3    # 0x0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 194
    nop

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mBeanVariable:Lcom/android/settings/BeanVariable;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 221
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mStateMachineEvent:Z

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mGuideWifiTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOff:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mStateMachineEvent:Z

    .line 238
    return-void
.end method


# virtual methods
.method public guideNowFirstInForceOpenWifi()V
    .locals 1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->onClick(Landroid/view/View;)V

    .line 421
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    .end local v0
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 406
    .local v0, "newStatus":Z
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mGuideWifiTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOff:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 293
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 295
    .local v0, "isChecked":Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mStateMachineEvent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-static {v3, v4}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    const v3, 0x7f1210e0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 302
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 303
    return v1

    .line 306
    :cond_1
    if-eqz v0, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    const/16 v5, 0x8b

    new-array v6, v1, [Landroid/util/Pair;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    const/16 v5, 0x8a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    .line 310
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 313
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mGuideWifiTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOn:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->textTitleOff:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    const v4, 0x7f1210c0

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 400
    :cond_4
    return v2
.end method

.method public pause()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    .line 177
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    .line 169
    :cond_0
    return-void
.end method

.method public setupSwitchController()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 147
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->handleWifiStateChanged(I)V

    .line 148
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    .line 152
    :cond_0
    return-void
.end method

.method public teardownSwitchController()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mSwitchPref:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnablerGuide;->mListeningToOnSwitchChange:Z

    .line 159
    :cond_0
    return-void
.end method
