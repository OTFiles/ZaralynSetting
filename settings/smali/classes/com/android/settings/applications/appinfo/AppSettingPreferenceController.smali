.class public Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppSettingPreferenceController.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 71
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    return-object v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    return v1

    .line 45
    .end local v0
    :cond_2
    :goto_0
    return v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 54
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 60
    return v1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 63
    invoke-virtual {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x3f9

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->actionWithSource(Landroid/content/Context;II)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->mPackageName:Ljava/lang/String;

    .line 39
    return-object p0
.end method
