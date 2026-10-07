.class public Lcom/android/settings/network/MobileNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsSecondaryUser:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSummary:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$3;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 68
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 69
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 70
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    .line 72
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$1;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateDisplayName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 49
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private isSubscriptionInService(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDisplayName()V
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "useSeparator":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 135
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isSubscriptionInService(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    if-eqz v1, :cond_0

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 138
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x1

    .line 141
    .end local v4
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    .line 143
    .end local v1
    .end local v2
    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    .line 147
    .end local v0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 99
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "mobile_network_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 194
    const-string v0, "mobile_network_settings"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/android/settings/Utils;->isNetworkSettingsApkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.networksetting"

    const-string v3, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    const/4 v1, 0x1

    return v1

    .line 202
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isUserRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserRestricted()Z
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_mobile_networks"

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    return v0
.end method

.method public onStart()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$2;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 174
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    :cond_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 182
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 184
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 185
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 188
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 190
    return-void
.end method
