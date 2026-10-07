.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;
    }
.end annotation


# instance fields
.field private mBeanVariable:Lcom/android/settings/BeanVariable;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field public mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/BeanVariable;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 7
    .param p1, "beanVariable"    # Lcom/android/settings/BeanVariable;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "switchWidget"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p4, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 87
    const-string v0, "connectivity"

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Lcom/android/settings/BeanVariable;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/settings/BeanVariable;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V
    .locals 2
    .param p1, "beanVariable"    # Lcom/android/settings/BeanVariable;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "switchWidget"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p4, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p5, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    .line 95
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mBeanVariable:Lcom/android/settings/BeanVariable;

    .line 97
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 99
    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 100
    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    iput-object p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchController()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 205
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :pswitch_0    # 0x3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 160
    goto :goto_0

    .line 156
    :pswitch_1    # 0x2
    goto :goto_0

    .line 164
    :pswitch_2    # 0x1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 166
    goto :goto_0

    .line 162
    :pswitch_3    # 0x0
    nop

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "no_config_tethering"

    .line 173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 172
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "no_config_tethering"

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 176
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 178
    .local v2, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 180
    .end local v2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mBeanVariable:Lcom/android/settings/BeanVariable;

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 183
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 189
    return-void
.end method


# virtual methods
.method public delayWifiCloseEventContinue(Z)V
    .locals 3
    .param p1, "closeEnabled"    # Z

    .line 256
    if-eqz p1, :cond_1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1210c0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    goto :goto_1

    .line 265
    :cond_1
    :goto_0
    nop

    .line 266
    :goto_1
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6
    .param p1, "isChecked"    # Z

    .line 210
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 211
    return v1

    .line 214
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1210e0

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 218
    return v0

    .line 221
    :cond_1
    if-eqz p1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8b

    new-array v5, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8a

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 225
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 230
    :goto_0
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    if-eqz v2, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;->onWifiCloseCheckedPassword()V

    .line 233
    return v0

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f1210c0

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_4
    return v1
.end method

.method public pause()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 148
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 140
    :cond_1
    return-void
.end method

.method public setWifiCloseCheckedPassword(Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;)V
    .locals 0
    .param p1, "wifiCloseCheckedPassword"    # Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    .line 249
    return-void
.end method

.method public setupSwitchController()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 113
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 114
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 119
    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    .line 127
    return-void
.end method
