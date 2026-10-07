.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeupAlarmAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mContext:Landroid/content/Context;

.field private mWakeupAlarmThreshold:J

.field private mWakeupBlacklistedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .param p3, "anomalyUtils"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 62
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 63
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    .line 64
    iget-object v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupBlacklistedTags:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    .line 65
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

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v6

    .line 81
    .local v3, "totalRunningHours":D
    iget-object v6, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v6

    .line 83
    .local v6, "targetUid":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v3, v8

    if-ltz v8, :cond_4

    .line 84
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_0
    if-ge v8, v9, :cond_4

    .line 85
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    .line 86
    .local v10, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v11, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 87
    .local v11, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v11, :cond_2

    iget-object v12, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 88
    invoke-virtual {v12, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 89
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    if-eq v6, v12, :cond_0

    .line 90
    nop

    .line 84
    move-object/from16 v17, v1

    move-wide v15, v3

    goto/16 :goto_1

    .line 93
    :cond_0
    invoke-virtual {v0, v11}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v3

    double-to-int v12, v12

    .line 95
    .local v12, "wakeupAlarmCount":I
    int-to-long v13, v12

    move-wide v15, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    .end local v3
    .local v15, "totalRunningHours":D
    cmp-long v3, v13, v3

    if-lez v3, :cond_1

    .line 96
    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 99
    .local v4, "displayName":Ljava/lang/CharSequence;
    iget-object v13, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v13, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v13

    .line 101
    .local v13, "targetSdkVersion":I
    new-instance v14, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 102
    move-object/from16 v17, v1

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .end local v1
    .local v17, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-virtual {v14, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 103
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v13}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setTargetSdkVersion(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    iget-object v14, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 109
    move-object/from16 v18, v4

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    .line 108
    .end local v4
    .local v18, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {v14, v13, v4, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBackgroundRestrictionEnabled(IILjava/lang/String;)Z

    move-result v4

    .line 107
    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setBackgroundRestrictionEnabled(Z)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v12}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeupAlarmCount(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    .line 113
    .local v1, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1
    .end local v3
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v18
    goto :goto_1

    .line 84
    .end local v17
    .local v1, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_1
    move-object/from16 v17, v1

    .end local v1
    .restart local v17
    goto :goto_1

    .end local v15
    .end local v17
    .restart local v1
    .local v3, "totalRunningHours":D
    :cond_2
    move-object/from16 v17, v1

    move-wide v15, v3

    .end local v1
    .end local v3
    .restart local v15
    .restart local v17
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-wide v3, v15

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 120
    .end local v8
    .end local v9
    .end local v15
    .end local v17
    .restart local v1
    .restart local v3
    :cond_4
    move-object/from16 v17, v1

    move-wide v15, v3

    .end local v1
    .end local v3
    .restart local v15
    .restart local v17
    return-object v2
.end method

.method getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I
    .locals 9
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "wakeups":I
    nop

    .line 127
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 128
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_2

    .line 129
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 130
    .local v3, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    nop

    .line 131
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 132
    .local v4, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 133
    .local v6, "alarm":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    .line 134
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    goto :goto_1

    .line 137
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    .line 138
    .local v7, "count":I
    add-int/2addr v0, v7

    .line 139
    .end local v6
    .end local v7
    goto :goto_1

    .line 128
    .end local v3
    .end local v4
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 142
    .end local v2
    :cond_2
    return v0
.end method
