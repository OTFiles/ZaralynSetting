.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

.field private mUsageDesc:Landroid/support/v7/preference/Preference;

.field private mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private setHasAccess(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/UsageAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 112
    nop

    .line 111
    xor-int/lit8 v3, p1, 0x1

    const/16 v4, 0x2b

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 162
    const/16 v0, 0xb7

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "newState"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    if-eqz p1, :cond_0

    const/16 v0, 0x30f

    goto :goto_0

    .line 118
    :cond_0
    const/16 v0, 0x310

    .line 119
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    .line 66
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 69
    const v1, 0x7f15001a

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    .line 70
    const-string v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 71
    const-string v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroid/support/v7/preference/Preference;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f120f21

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f1209dc

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120f22

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080342

    .line 95
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040014

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1211ac

    .line 97
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1209ba

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/applications/UsageAccessDetails;->setHasAccess(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->refreshUi()Z

    .line 104
    :cond_1
    return v1

    .line 106
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshUi()Z
    .locals 7

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 130
    return v1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    .line 136
    .local v0, "hasAccess":Z
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v2, v2, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v3, 0x80

    iget v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 141
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    .line 142
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 143
    .local v2, "metaData":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    if-eqz v2, :cond_2

    const-string v3, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 146
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const-string v4, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 148
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    .end local v2
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
