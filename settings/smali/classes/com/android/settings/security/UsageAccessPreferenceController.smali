.class public Lcom/android/settings/security/UsageAccessPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UsageAccessPreferenceController.java"


# instance fields
.field protected final mHost:Lcom/android/settings/security/SecuritySettings;

.field protected mPreference:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/settings/security/SecuritySettings;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 40
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/security/UsageAccessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    .line 56
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "usage_access"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 79
    const/16 v0, 0x86

    if-ne p1, v0, :cond_2

    .line 80
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_1
    return v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/UsageAccessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/android/settings/security/SecuritySettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    iget-object v1, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mPreference:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/android/settings/security/UsageAccessPreferenceController;->mIsAvailable:Z

    return v0
.end method
