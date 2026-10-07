.class public Lcom/android/settings/development/MockLocationAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MockLocationAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final MOCK_LOCATION_APP_OPS:[I


# instance fields
.field private final mAppsOpsManager:Landroid/app/AppOpsManager;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 54
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    .line 55
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 56
    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mockLocationApp"    # Ljava/lang/String;

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 122
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 123
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    return-object v2

    .line 124
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p1
.end method

.method private getCurrentMockLocationApp()Ljava/lang/String;
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 160
    .local v2, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    .end local v2
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private removeAllMockLocations()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/settings/development/MockLocationAppPreferenceController;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v0, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 138
    .local v2, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 139
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/development/MockLocationAppPreferenceController;->removeMockLocationForApp(Ljava/lang/String;)V

    .line 141
    .end local v2
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    return-void
.end method

.method private removeMockLocationForApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 148
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3a

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 152
    .end local v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 153
    :goto_0
    return-void
.end method

.method private updateMockLocation()V
    .locals 7

    .line 91
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getCurrentMockLocationApp()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "mockLocationApp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208df

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    return-void
.end method

.method private writeMockLocation(Ljava/lang/String;)V
    .locals 5
    .param p1, "mockLocationAppName"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->removeAllMockLocations()V

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mAppsOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3a

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 114
    .end local v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 116
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "mock_location_app"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/settings/development/MockLocationAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    const/4 v1, 0x1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 82
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->writeMockLocation(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->updateMockLocation()V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/development/MockLocationAppPreferenceController;->updateMockLocation()V

    .line 78
    return-void
.end method
