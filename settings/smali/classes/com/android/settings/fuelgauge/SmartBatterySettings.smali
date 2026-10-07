.class public Lcom/android/settings/fuelgauge/SmartBatterySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SmartBatterySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/fuelgauge/SmartBatterySettings$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/SmartBatterySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/SmartBatterySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settings/SettingsActivity;
    .param p2, "x2"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 38
    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/SettingsActivity;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    new-instance v1, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;

    invoke-direct {v1, p2}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
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

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 64
    const v0, 0x7f1206ac

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "SmartBatterySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x501

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 59
    const v0, 0x7f1500a1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/SmartBatterySettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f120d48

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 45
    return-void
.end method
