.class public Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "ExternalSourceDetailPreferenceController.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 39
    return v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->isPotentialAppSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    return v1
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

    .line 51
    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    return-object v0
.end method

.method getPreferenceSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method isPotentialAppSource()Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_0
    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v1

    .line 68
    .local v1, "appState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v2

    return v2
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mPackageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->getPreferenceSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
