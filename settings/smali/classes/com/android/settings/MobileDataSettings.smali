.class public Lcom/android/settings/MobileDataSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "MobileDataSettings.java"


# instance fields
.field private mDataEnabler:Lcom/android/settings/DataEnabler;

.field private mManageSub:Landroid/support/v7/preference/PreferenceScreen;

.field private mMobileDataSettings:Landroid/support/v14/preference/SwitchPreference;

.field private final mMobileSettingsObserver:Landroid/database/ContentObserver;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MobileDataSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 342
    new-instance v0, Lcom/android/settings/MobileDataSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MobileDataSettings$1;-><init>(Lcom/android/settings/MobileDataSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataSettings;->mMobileSettingsObserver:Landroid/database/ContentObserver;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MobileDataSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataSettings;

    .line 46
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileDataSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MobileDataSettings;

    .line 46
    invoke-direct {p0}, Lcom/android/settings/MobileDataSettings;->mobileDataModifyEnable()Z

    move-result v0

    return v0
.end method

.method private mobileDataModifyEnable()Z
    .locals 3

    .line 331
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_now_busy"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    return v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    .end local v1
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 353
    const/16 v0, 0x8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f150070

    invoke-virtual {p0, v0}, Lcom/android/settings/MobileDataSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "isSecondaryUser":Z
    :goto_0
    new-instance v3, Lcom/android/settings/DataEnabler;

    new-instance v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v4, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0, v4}, Lcom/android/settings/DataEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v3, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    .line 78
    const-string v3, "mobiledata_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MobileDataSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/MobileDataSettings;->mMobileDataSettings:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    iget-object v3, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    iget-object v4, p0, Lcom/android/settings/MobileDataSettings;->mMobileDataSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/DataEnabler;->setSwitch(Landroid/support/v14/preference/SwitchPreference;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 112
    .local v3, "parentPreference":Landroid/support/v7/preference/PreferenceGroup;
    const-string v4, "mobile_data_more_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/MobileDataSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    .line 113
    iget-object v4, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/MobileDataSettings;->mobileDataModifyEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 116
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isNetworkSettingsApkAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.qualcomm.qti.networksetting"

    const-string v7, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    iget-object v5, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 122
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    iget-object v5, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 127
    .end local v4
    :cond_2
    :goto_1
    const-string v4, "data_reminder"

    invoke-virtual {p0, v4}, Lcom/android/settings/MobileDataSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 128
    .local v4, "mdata_reminder":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_4

    .line 129
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 130
    const v2, 0x7f12045a

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 132
    :cond_3
    const v2, 0x7f120459

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 151
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    :cond_5
    const-string v2, "mobile_data_more_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/MobileDataSettings;->removePreference(Ljava/lang/String;)Z

    .line 156
    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DataEnabler;->pause()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileDataSettings;->mMobileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 160
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mDataEnabler:Lcom/android/settings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DataEnabler;->resume()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 166
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MobileDataSettings;->mMobileSettingsObserver:Landroid/database/ContentObserver;

    .line 165
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/MobileDataSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_now_busy"

    .line 169
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MobileDataSettings;->mMobileSettingsObserver:Landroid/database/ContentObserver;

    .line 168
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings;->mManageSub:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/MobileDataSettings;->mobileDataModifyEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 174
    :cond_1
    return-void
.end method
