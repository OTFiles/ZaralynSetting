.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeLockAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mWakeLockThresholdMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .param p3, "anomalyUtils"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 59
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 60
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    .line 61
    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 75
    .local v3, "rawRealtime":J
    iget-object v5, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "targetUid":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v7, v8, :cond_4

    .line 79
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    .line 80
    .local v9, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v10, v9, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 81
    .local v10, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v10, :cond_2

    iget-object v11, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 82
    invoke-virtual {v11, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 83
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    if-eq v5, v11, :cond_0

    .line 84
    nop

    .line 78
    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 88
    .local v11, "currentDurationMs":J
    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    .line 90
    .local v13, "backgroundDurationMs":J
    move-wide v15, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    .end local v3
    .local v15, "rawRealtime":J
    cmp-long v3, v13, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 95
    .local v4, "displayName":Ljava/lang/CharSequence;
    move-object/from16 v17, v1

    new-instance v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    .end local v1
    .local v17, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 96
    move/from16 v18, v5

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    .end local v5
    .local v18, "targetUid":I
    invoke-virtual {v1, v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v1, v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v13, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeLockTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    .line 103
    .local v1, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    iget-object v5, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v5, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1
    .end local v3
    .end local v4
    .end local v9
    .end local v10
    .end local v11
    .end local v13
    goto :goto_1

    .line 78
    .end local v17
    .end local v18
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .restart local v5
    :cond_1
    move-object/from16 v17, v1

    move/from16 v18, v5

    .end local v1
    .end local v5
    .restart local v17
    .restart local v18
    goto :goto_1

    .end local v15
    .end local v17
    .end local v18
    .restart local v1
    .local v3, "rawRealtime":J
    .restart local v5
    :cond_2
    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    .end local v1
    .end local v3
    .end local v5
    .restart local v15
    .restart local v17
    .restart local v18
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-wide v3, v15

    move-object/from16 v1, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .line 108
    .end local v7
    .end local v8
    .end local v15
    .end local v17
    .end local v18
    .restart local v1
    .restart local v3
    .restart local v5
    :cond_4
    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    .end local v1
    .end local v3
    .end local v5
    .restart local v15
    .restart local v17
    .restart local v18
    return-object v2
.end method

.method getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "elapsedRealtimeMs"    # J

    .line 120
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 121
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 123
    .local v1, "subTimer":Landroid/os/BatteryStats$Timer;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2
.end method

.method getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "elapsedRealtimeMs"    # J

    .line 113
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 115
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
