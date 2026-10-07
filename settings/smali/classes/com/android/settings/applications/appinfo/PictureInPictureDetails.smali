.class public Lcom/android/settings/applications/appinfo/PictureInPictureDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "PictureInPictureDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 104
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 105
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    const v1, 0x7f120146

    goto :goto_0

    .line 116
    :cond_0
    const v1, 0x7f120147

    .line 115
    :goto_0
    return v1
.end method

.method static setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 94
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 95
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 96
    .local v1, "newMode":I
    :goto_0
    const/16 v2, 0x43

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 97
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 85
    const/16 v0, 0x32c

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "newState"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const/16 v0, 0x32d

    goto :goto_0

    .line 123
    :cond_0
    const/16 v0, 0x32e

    .line 124
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f150081

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->addPreferencesFromResource(I)V

    .line 50
    const-string v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f1209e8

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 62
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshUi()Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 74
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method
