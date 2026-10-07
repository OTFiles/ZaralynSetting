.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 102
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    .line 103
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 106
    .local v2, "isWfcEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v5}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 109
    const/4 v5, 0x1

    .line 110
    .local v5, "isWfcModeEditable":Z
    const/4 v6, 0x0

    .line 111
    .local v6, "isWfcRoamingModeEditable":Z
    const-string v7, "carrier_config"

    .line 112
    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CarrierConfigManager;

    .line 113
    .local v7, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v7, :cond_2

    .line 114
    iget-object v8, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 115
    .local v8, "b":Landroid/os/PersistableBundle;
    if-eqz v8, :cond_2

    .line 116
    const-string v9, "editable_wfc_mode_bool"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 118
    const-string v9, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 123
    .end local v8
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v8}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "wifi_calling_mode"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 124
    .local v8, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v8, :cond_4

    .line 125
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    if-nez p1, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v3

    :goto_2
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 128
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 129
    invoke-virtual {v9}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "wifi_calling_roaming_mode"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 130
    .local v9, "pref_roam":Landroid/support/v7/preference/Preference;
    if-eqz v9, :cond_6

    .line 131
    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    if-nez p1, :cond_5

    move v3, v4

    nop

    :cond_5
    invoke-virtual {v9, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 134
    :cond_6
    return-void
.end method
