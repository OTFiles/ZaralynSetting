.class public Lcom/android/settings/DataEnabler;
.super Ljava/lang/Object;
.source "DataEnabler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mDataSettingsObserver:Landroid/database/ContentObserver;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mSwitch:Landroid/support/v14/preference/SwitchPreference;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/support/v14/preference/SwitchPreference;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 290
    new-instance v0, Lcom/android/settings/DataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DataEnabler$1;-><init>(Lcom/android/settings/DataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 362
    new-instance v0, Lcom/android/settings/DataEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataEnabler$2;-><init>(Lcom/android/settings/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 177
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 183
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "network_management"

    .line 184
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 183
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 185
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "netstats"

    .line 186
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    .line 187
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 189
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 191
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 192
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 193
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 202
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 70
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DataEnabler;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataEnabler;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v0

    return v0
.end method

.method private hasCard_SubActive(I)Z
    .locals 4
    .param p1, "subscriptionId"    # I

    .line 87
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 89
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 91
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 92
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v1
    .end local v2
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v1
    :goto_0
    return v0
.end method

.method private mobileDataSimCardExisted()Z
    .locals 6

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "sim1existed":Z
    const/4 v1, 0x0

    move v2, v1

    .line 148
    .local v2, "sim2existed":Z
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings/DataEnabler;->hasCard_SubActive(I)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v3
    :goto_0
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/settings/DataEnabler;->hasCard_SubActive(I)Z

    move-result v4

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    .line 156
    goto :goto_1

    .line 154
    :catch_1
    move-exception v4

    .line 155
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    .end local v4
    :goto_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DataEnabler;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    return v1

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data_now_busy"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    return v1

    .line 167
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    .line 167
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 170
    :catch_2
    move-exception v3

    .line 171
    .restart local v3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v3
    return v1
.end method


# virtual methods
.method public hasIccCard()Z
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 114
    .local v0, "mSubscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 115
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    nop

    .line 116
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 120
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const/4 v3, 0x1

    return v3

    .line 123
    .end local v4
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public pause()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    return-void
.end method

.method public resume()V
    .locals 6

    .line 222
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 227
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    const/4 v0, 0x2

    .line 236
    .local v0, "mNumSlots":I
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 239
    :cond_1
    move v2, v1

    .local v2, "inum":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 240
    iget-object v3, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 240
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .end local v2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    .line 245
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 244
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    .line 248
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 247
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    .line 251
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 250
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_now_busy"

    .line 254
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataEnabler;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 253
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    return-void
.end method

.method public setSwitch(Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "switch_"    # Landroid/support/v14/preference/SwitchPreference;

    .line 268
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 271
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->mobileDataSimCardExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 281
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    return-void
.end method
