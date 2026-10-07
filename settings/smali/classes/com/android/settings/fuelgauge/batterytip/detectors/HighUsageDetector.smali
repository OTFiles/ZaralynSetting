.class public Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;
.super Ljava/lang/Object;
.source "HighUsageDetector.java"


# instance fields
.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

.field mDischarging:Z

.field private mHighUsageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    .param p3, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p4, "discharging"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 57
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 60
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsagePeriodMs:J

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v3, v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageBatteryDraining:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;-><init>(JI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    .line 62
    iput-boolean p4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    .line 63
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 12

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v0

    .line 69
    .local v0, "lastFullChargeTimeMs":J
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageEnabled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->parseBatteryData()V

    .line 71
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->isDeviceHeavilyUsed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    if-eqz v2, :cond_4

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 75
    .local v6, "batterySipper":Lcom/android/internal/os/BatterySipper;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v7, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 76
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v7

    .line 79
    .local v7, "foregroundTimeMs":J
    const-wide/32 v9, 0xea60

    cmp-long v5, v7, v9

    if-ltz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v9}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    .line 81
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 83
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v9

    .line 84
    invoke-virtual {v9, v7, v8}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setScreenOnTimeMs(J)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v9

    .line 85
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v9

    .line 80
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v3
    .end local v4
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    const-string v6, "com.android.settings"

    .line 93
    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x3

    .line 94
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setScreenOnTimeMs(J)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v4

    .line 92
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v4, v4, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageAppCount:I

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    .line 100
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 99
    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    .line 104
    .end local v2
    :cond_4
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;-><init>(JLjava/util/List;)V

    return-object v2
.end method

.method parseBatteryData()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 110
    return-void
.end method
