.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BatterySaverSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 38
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
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

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 68
    const v0, 0x7f1206ba

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "BatterySaverSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x34

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 53
    const v0, 0x7f150023

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method
