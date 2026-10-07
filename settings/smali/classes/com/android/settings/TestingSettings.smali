.class public Lcom/android/settings/TestingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TestingSettings.java"


# instance fields
.field sNumPhones:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 29
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/TestingSettings;->sNumPhones:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 61
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f1500ab

    invoke-virtual {p0, v0}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 38
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string v1, "radio_info_settings"

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 41
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 44
    .end local v1
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/TestingSettings;->sNumPhones:I

    if-ne v1, v2, :cond_1

    .line 45
    const-string v1, "radio_info_settings"

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 47
    .restart local v1
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 48
    .end local v1
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/TestingSettings;->sNumPhones:I

    if-ne v1, v2, :cond_2

    .line 49
    const-string v1, "radio_info1_settings"

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 51
    .local v1, "preferenceScreen1":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 53
    const-string v2, "radio_info2_settings"

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    .line 55
    .local v2, "preferenceScreen2":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 57
    .end local v1
    .end local v2
    :cond_2
    :goto_0
    return-void
.end method
