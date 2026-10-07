.class public Lcom/android/settings/fuelgauge/DebugEstimatesLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "DebugEstimatesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    nop

    .line 47
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    .line 51
    .local v1, "powerUsageFeatureProvider":Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v2

    .line 52
    .local v2, "elapsedRealtimeUs":J
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v11

    .line 54
    .local v11, "batteryBroadcast":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v12

    .line 56
    .local v12, "stats":Landroid/os/BatteryStats;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v9, 0x0

    move-object v5, v11

    move-object v6, v12

    move-wide v7, v2

    invoke-static/range {v4 .. v9}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v13

    .line 59
    .local v13, "oldinfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v4

    .line 60
    .local v4, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    if-nez v4, :cond_0

    .line 61
    new-instance v14, Lcom/android/settings/fuelgauge/Estimate;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v5, v14

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v4, v14

    goto :goto_0

    .line 63
    :cond_0
    move-object v14, v4

    .end local v4
    .local v14, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-wide v8, v2

    invoke-static/range {v4 .. v10}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v4

    .line 66
    .local v4, "newInfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatteryInfo;>;"
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v5
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatteryInfo;>;"
    return-void
.end method
