.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Lcom/android/settings/utils/ZenServiceListing;
    .param p3, "x3"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/app/Fragment;
    .param p2, "serviceListing"    # Lcom/android/settings/utils/ZenServiceListing;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/utils/ZenServiceListing;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method protected static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .line 67
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "ZenModeSettings"

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.notification.ConditionProviderService"

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "condition provider"

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    .line 67
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 41
    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    .line 42
    .local v0, "serviceListing":Lcom/android/settings/utils/ZenServiceListing;
    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    const/16 v0, 0x8e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 58
    const v0, 0x7f1500cf

    return v0
.end method
