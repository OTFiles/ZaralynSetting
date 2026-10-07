.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "BatteryTipLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 57
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "tips":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;>;"
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "policy":Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v4, "BatteryTipLoader"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v2

    .line 68
    .local v2, "batteryInfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 70
    .local v3, "context":Landroid/content/Context;
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v6, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    .line 72
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    .line 71
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/ContentResolver;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;

    iget-wide v5, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    invoke-direct {v4, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;J)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;

    invoke-direct {v4, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;>;"
    return-void
.end method
