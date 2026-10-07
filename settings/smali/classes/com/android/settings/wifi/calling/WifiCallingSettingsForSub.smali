.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSubId:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateAddress:Landroid/support/v7/preference/Preference;

.field private final mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 92
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 137
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 193
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method private getCarrierActivityIntent()Landroid/content/Intent;
    .locals 5

    .line 384
    nop

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 386
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 388
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 389
    .local v2, "bundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    return-object v1

    .line 391
    :cond_1
    const-string v3, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "carrierApp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    .line 395
    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 396
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_3

    return-object v1

    .line 399
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 401
    return-object v1
.end method

.method private getWfcModeSummary(I)I
    .locals 4
    .param p1, "wfcMode"    # I

    .line 503
    const v0, 0x10406d8

    .line 504
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 516
    const-string v1, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :pswitch_0    # 0x2
    const v0, 0x10406b7

    .line 514
    goto :goto_0

    .line 510
    :pswitch_1    # 0x1
    const v0, 0x10406b5

    .line 511
    goto :goto_0

    .line 507
    :pswitch_2    # 0x0
    const v0, 0x10406b6

    .line 508
    nop

    .line 519
    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    const-string v1, "alertTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 180
    .local v1, "title":Ljava/lang/CharSequence;
    const-string v2, "alertMessage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 182
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 185
    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 186
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 188
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 189
    return-void
.end method

.method private updateBody()V
    .locals 7

    .line 275
    const-string v0, "carrier_config"

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 277
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x1

    .line 279
    .local v1, "isWifiOnlySupported":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 280
    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 281
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 282
    const-string v4, "editable_wfc_mode_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 284
    const-string v4, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 286
    const-string v4, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v3, v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 291
    .end local v3
    :cond_0
    if-nez v1, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f03008f

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f030091

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 294
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f03008e

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 296
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    .line 303
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 304
    .local v3, "wfcEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 305
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v4}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 306
    .local v4, "wfcMode":I
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    .line 307
    .local v2, "wfcRoamingMode":I
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    .line 310
    return-void
.end method

.method private updateButtonWfcMode(ZII)V
    .locals 4
    .param p1, "wfcEnabled"    # Z
    .param p2, "wfcMode"    # I
    .param p3, "wfcRoamingMode"    # I

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 444
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 445
    .local v1, "updateAddressEnabled":Z
    :cond_2
    if-eqz p1, :cond_6

    .line 446
    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 452
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v2, :cond_4

    .line 453
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 458
    :goto_3
    if-eqz v1, :cond_5

    .line 459
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 461
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 464
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 465
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 466
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 468
    :goto_4
    return-void
.end method

.method private updateWfcMode(Z)V
    .locals 6
    .param p1, "wfcEnabled"    # Z

    .line 408
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfcMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    .line 412
    .local v0, "wfcMode":I
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    .line 413
    .local v1, "wfcRoamingMode":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    .line 414
    if-eqz p1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 419
    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 213
    const/16 v0, 0x4ce

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 159
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setEmptyView(Landroid/view/View;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12106f

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const v2, 0x7f121070

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "emptyViewText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a043c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    .line 168
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 427
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 428
    const-string v2, "WifiCallingForSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFC emergency address activity result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 431
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 434
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v0, 0x7f1500c5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->addPreferencesFromResource(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    goto :goto_0

    .line 232
    :cond_0
    if-eqz p1, :cond_1

    .line 233
    const-string v0, "subId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 237
    :cond_1
    :goto_0
    nop

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 237
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    .line 240
    const-string v0, "wifi_calling_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 243
    const-string v0, "wifi_calling_roaming_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    const-string v0, "emergency_address_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 263
    const/4 v0, 0x0

    const v1, 0x7f0d0233

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a0310

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 267
    .local v2, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v1, v2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 268
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "prefs":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 340
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 347
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 348
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 353
    .end local v2
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 473
    const-string v0, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 475
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 476
    .local v0, "buttonMode":I
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    .line 477
    .local v2, "currentWfcMode":I
    if-eq v0, v2, :cond_0

    .line 478
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v0, v3}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 479
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 480
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 482
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-nez v3, :cond_1

    .line 483
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v3

    .line 484
    .local v3, "currentWfcRoamingMode":I
    if-eq v0, v3, :cond_1

    .line 485
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v0, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 489
    .end local v0
    .end local v2
    .end local v3
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 491
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 492
    .restart local v0
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    .line 493
    .local v2, "currentMode":I
    if-eq v0, v2, :cond_3

    .line 494
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 496
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 499
    .end local v0
    .end local v2
    :cond_3
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 314
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    .line 320
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "phone"

    .line 322
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 323
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 327
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 330
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 333
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "alertShow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    .line 336
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 255
    const-string v0, "subId"

    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 361
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 365
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 370
    .local v1, "carrierAppIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 371
    const-string v3, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 376
    :goto_0
    return-void
.end method
