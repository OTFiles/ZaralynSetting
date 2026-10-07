.class public abstract Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractImsStatusPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IMS_REGISTRATION_STATE:Ljava/lang/String; = "ims_reg_state"


# instance fields
.field private mImsStatus:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 77
    const-string v0, "ims_reg_state"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->updateConnectivity()V

    .line 79
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "ims_reg_state"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 60
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 61
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 62
    .local v2, "config":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 65
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "show_ims_registration_status_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method protected updateConnectivity()V
    .locals 4

    .line 88
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 89
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 91
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    sget v3, Lcom/android/settingslib/R$string;->ims_reg_status_registered:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/settingslib/R$string;->ims_reg_status_not_registered:I

    .line 91
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 94
    .end local v1
    :cond_1
    return-void
.end method
