.class public Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactory;
.source "FeatureFactoryImpl.java"


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/settings/accounts/AccountFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object v0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 126
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "device_policy"

    .line 128
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 130
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object v0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object v0
.end method

.method public getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    return-object v0
.end method

.method public getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    return-object v0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object v0
.end method

.method public getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "appContext":Landroid/content/Context;
    new-instance v8, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    const-string v1, "device_policy"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 149
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const-string v1, "connectivity"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;-><init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V

    iput-object v8, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 153
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-object v0
.end method

.method public getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    return-object v0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object v0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/settings/search/SearchFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object v0
.end method

.method public getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    return-object v0
.end method

.method public getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    return-object v0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object v0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/settings/users/UserFeatureProviderImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    return-object v0
.end method
