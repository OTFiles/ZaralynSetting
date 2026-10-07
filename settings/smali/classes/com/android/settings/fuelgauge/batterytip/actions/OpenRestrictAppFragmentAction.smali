.class public Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "OpenRestrictAppFragmentAction.java"


# instance fields
.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .param p2, "tip"    # Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 43
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 45
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 46
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 47
    return-void
.end method

.method public static synthetic lambda$handlePositiveAction$0(Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;Ljava/util/List;)V
    .locals 2
    .param p1, "mAppInfos"    # Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->updateAnomalies(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 3
    .param p1, "metricsKey"    # I

    .line 54
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x551

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "mAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    .line 60
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;-><init>(Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
