.class public abstract Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppInfoPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;


# instance fields
.field private final mDetailFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field protected mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getDetailFragmentClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mDetailFragmentClass:Ljava/lang/Class;

    .line 44
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroid/support/v7/preference/Preference;

    .line 55
    return-void
.end method

.method protected getArguments()Landroid/os/Bundle;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mDetailFragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mDetailFragmentClass:Ljava/lang/Class;

    const/4 v1, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 60
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUi(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 76
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->addToCallbackList(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;)V

    .line 78
    return-void
.end method
