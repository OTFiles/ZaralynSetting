.class public Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# instance fields
.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 41
    return-void
.end method

.method private static generateRandomPassword()Ljava/lang/String;
    .locals 4

    .line 100
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "randomUUID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/EditTextPreference;

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 107
    .local v0, "pref":Lcom/android/settings/widget/ValidatedEditTextPreference;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    goto :goto_0

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 114
    const v2, 0x7f1210da

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(I)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    .line 117
    :goto_0
    return-void
.end method


# virtual methods
.method public getPasswordValidated(I)Ljava/lang/String;
    .locals 1
    .param p1, "securityType"    # I

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v0, ""

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "wifi_tether_network_password"

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isHotspotPasswordValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 65
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 51
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 57
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsPassword(Z)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 61
    return-void
.end method

.method public updateVisibility(I)V
    .locals 2
    .param p1, "securityType"    # I

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 92
    return-void
.end method
