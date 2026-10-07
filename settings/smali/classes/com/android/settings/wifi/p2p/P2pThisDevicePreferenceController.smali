.class public Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "P2pThisDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 51
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "p2p_this_device"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
