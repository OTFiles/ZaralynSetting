.class public Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "BatterySaverAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 3
    .param p1, "metricsKey"    # I

    .line 34
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    .line 35
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x555

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 37
    return-void
.end method
