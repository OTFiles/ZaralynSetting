.class public Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterprisePrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .line 34
    invoke-static {p0, p1}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/settings/enterprise/BugReportsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/BugReportsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "exposureChangesCategoryControllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v2, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lcom/android/settings/enterprise/ImePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/ImePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v2, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Lcom/android/settings/enterprise/BackupsEnabledPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/BackupsEnabledPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "exposure_changes_category"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method public static isPageEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->hasDeviceOwner()Z

    move-result v0

    .line 95
    return v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->buildPreferenceControllers(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "EnterprisePrivacySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 40
    const/16 v0, 0x274

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 50
    const v0, 0x7f150057

    return v0
.end method
