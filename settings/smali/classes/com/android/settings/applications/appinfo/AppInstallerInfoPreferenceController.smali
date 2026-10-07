.class public Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppInstallerInfoPreferenceController.java"


# instance fields
.field private mInstallerLabel:Ljava/lang/CharSequence;

.field private mInstallerPackage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 42
    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    return v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStoreUtil;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f12071b

    goto :goto_0

    .line 51
    :cond_0
    const v0, 0x7f120120

    .line 52
    .local v0, "detailsStringId":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 60
    :goto_1
    return-void
.end method
