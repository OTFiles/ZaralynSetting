.class public Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;
.super Ljava/lang/Object;
.source "BluetoothScanAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mBluetoothScanningThreshold:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

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
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 58
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->bluetoothScanThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBluetoothScanningThreshold:J

    .line 59
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 60
    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 17
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

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "targetUid":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 76
    .local v5, "elapsedRealtimeMs":J
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 77
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    .line 78
    .local v9, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v10, v9, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 79
    .local v10, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v10, :cond_1

    iget-object v11, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 80
    invoke-virtual {v11, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v3, v11, :cond_0

    .line 81
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    if-eq v3, v11, :cond_0

    .line 82
    nop

    .line 76
    move-object/from16 v16, v1

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v0, v10, v5, v6}, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->getBluetoothUnoptimizedBgTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 86
    .local v11, "bluetoothTimeMs":J
    iget-wide v13, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBluetoothScanningThreshold:J

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    .line 87
    iget-object v13, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, "packageName":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v14, v13}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 91
    .local v14, "displayName":Ljava/lang/CharSequence;
    new-instance v15, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v15}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 92
    move-object/from16 v16, v1

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .end local v1
    .local v16, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-virtual {v15, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    const/4 v15, 0x2

    .line 93
    invoke-virtual {v1, v15}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v13}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v11, v12}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setBluetoothScanningTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    .line 99
    .local v1, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    iget-object v15, v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v15, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1
    .end local v9
    .end local v10
    .end local v11
    .end local v13
    .end local v14
    goto :goto_1

    .line 76
    .end local v16
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_1
    move-object/from16 v16, v1

    .end local v1
    .restart local v16
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .line 105
    .end local v7
    .end local v8
    .end local v16
    .restart local v1
    :cond_3
    move-object/from16 v16, v1

    .end local v1
    .restart local v16
    return-object v2
.end method

.method public getBluetoothUnoptimizedBgTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "elapsedRealtimeMs"    # J

    .line 110
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 112
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
