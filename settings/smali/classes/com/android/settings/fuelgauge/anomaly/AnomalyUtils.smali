.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;
.super Ljava/lang/Object;
.source "AnomalyUtils.java"


# static fields
.field private static final mMetricArray:Landroid/util/SparseIntArray;

.field private static sInstance:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mMetricArray:Landroid/util/SparseIntArray;

    .line 50
    sget-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mMetricArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/16 v2, 0x4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mMetricArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x4d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mMetricArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x4d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->sInstance:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->sInstance:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->sInstance:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    return-object v0
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    sget-object v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->ANOMALY_TYPE_LIST:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 127
    .local v4, "type":I
    invoke-virtual {p2, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->isAnomalyDetectorEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyDetector(I)Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;

    move-result-object v5

    invoke-interface {v5, p1, p3}, Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;->detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-object v0
.end method

.method public getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
    .locals 2
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 77
    iget v0, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 89
    :pswitch_0    # 0x2
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 81
    :pswitch_1    # 0x1
    iget v0, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    iget v0, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 84
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 79
    :pswitch_2    # 0x0
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public getAnomalyDetector(I)Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;
    .locals 2
    .param p1, "anomalyType"    # I

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_0    # 0x2
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 106
    :pswitch_1    # 0x1
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 104
    :pswitch_2    # 0x0
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;-><init>(Landroid/content/Context;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public logAnomalies(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/util/List;I)V
    .locals 3
    .param p1, "provider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "contextId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;I)V"
        }
    .end annotation

    .line 147
    .local p2, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 148
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->logAnomaly(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public logAnomaly(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 7
    .param p1, "provider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p2, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .param p3, "contextId"    # I

    .line 162
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->mMetricArray:Landroid/util/SparseIntArray;

    iget v2, p2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, p2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    .line 166
    const/16 v5, 0x341

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    aput-object v5, v4, v3

    .line 167
    const/16 v3, 0x4d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->getActionType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 167
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 162
    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 169
    return-void
.end method
