.class public Lcom/android/settings/wifi/ChangeWifiStateDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ChangeWifiStateDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiSettingsState"    # Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 136
    invoke-virtual {p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const v0, 0x7f120146

    goto :goto_0

    .line 138
    :cond_0
    const v0, 0x7f120147

    .line 136
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 124
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .local v0, "state":Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;
    :goto_0
    goto :goto_1

    .line 126
    .end local v0
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    .line 132
    .restart local v0
    :goto_1
    invoke-static {p0, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private setCanChangeWifiState(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 95
    :goto_0
    const/16 v4, 0x47

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 77
    const/16 v0, 0x152

    return v0
.end method

.method protected logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "newState"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_0

    const/16 v0, 0x306

    goto :goto_0

    .line 102
    :cond_0
    const/16 v0, 0x307

    .line 103
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    .line 57
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 60
    const v1, 0x7f15002c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->addPreferencesFromResource(I)V

    .line 61
    const-string v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f12038d

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 84
    invoke-virtual {v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->setCanChangeWifiState(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->refreshUi()Z

    .line 88
    :cond_0
    return v1

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshUi()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result v0

    .line 116
    .local v0, "canChange":Z
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 119
    const/4 v1, 0x1

    return v1

    .line 110
    .end local v0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
