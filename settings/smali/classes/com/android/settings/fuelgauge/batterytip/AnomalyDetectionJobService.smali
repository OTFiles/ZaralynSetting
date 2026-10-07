.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;
.super Landroid/app/job/JobService;
.source "AnomalyDetectionJobService.java"


# static fields
.field static final MAX_DELAY_MS:J

.field static final STATSD_UID_FILED:I = 0x1

.field static final UID_NULL:I = -0x1


# instance fields
.field mIsJobCanceled:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V
    .locals 22
    .param p1, "params"    # Landroid/app/job/JobParameters;

    move-object/from16 v11, p0

    .line 92
    move-object v12, v11

    .line 93
    .local v12, "context":Landroid/content/Context;
    nop

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v13

    .line 95
    .local v13, "batteryDatabaseManager":Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-direct {v5, v11}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 96
    .local v5, "policy":Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v14

    .line 97
    .local v14, "batteryUtils":Lcom/android/settings/fuelgauge/BatteryUtils;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 98
    .local v15, "contentResolver":Landroid/content/ContentResolver;
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v11, v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserManager;

    .line 99
    .local v16, "userManager":Landroid/os/UserManager;
    nop

    .line 100
    invoke-static {v12}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v17

    .line 101
    .local v17, "powerWhitelistBackend":Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    nop

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v18

    .line 103
    .local v18, "powerUsageFeatureProvider":Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    nop

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v19

    .line 106
    .local v19, "metricsFeatureProvider":Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v0

    .local v0, "item":Landroid/app/job/JobWorkItem;
    :goto_0
    move-object v10, v0

    .end local v0
    .local v10, "item":Landroid/app/job/JobWorkItem;
    if-eqz v10, :cond_0

    .line 107
    nop

    .line 110
    invoke-virtual {v10}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 107
    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v16

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v21, v12

    move-object v12, v10

    move-object/from16 v10, v20

    .end local v10
    .local v12, "item":Landroid/app/job/JobWorkItem;
    .local v21, "context":Landroid/content/Context;
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v1

    .end local v12
    .local v1, "item":Landroid/app/job/JobWorkItem;
    move-object v0, v1

    move-object/from16 v12, v21

    goto :goto_0

    .line 114
    .end local v1
    .end local v21
    .local v12, "context":Landroid/content/Context;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v21, v12

    .end local v12
    .restart local v21
    return-void
.end method

.method public static scheduleAnomalyDetection(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 74
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x7f0b0009

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v3, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 80
    .local v2, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    new-instance v4, Landroid/app/job/JobWorkItem;

    invoke-direct {v4, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 82
    const-string v3, "AnomalyDetectionService"

    const-string v4, "Anomaly detection job service enqueue failed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .locals 2
    .param p1, "parameters"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;

    .line 233
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz v1, :cond_0

    .line 235
    monitor-exit v0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 2
    .param p1, "parameters"    # Landroid/app/job/JobParameters;

    .line 222
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I
    .locals 5
    .param p1, "statsDimensionsValue"    # Landroid/os/StatsDimensionsValue;

    .line 199
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getField()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getIntValue()I

    move-result v0

    return v0

    .line 207
    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getTupleValueList()Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsDimensionsValue;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StatsDimensionsValue;

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v4

    .line 211
    .local v4, "uid":I
    if-eq v4, v0, :cond_2

    .line 212
    return v4

    .line 209
    .end local v4
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v1
    .end local v2
    .end local v3
    :cond_3
    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 90
    monitor-exit v0

    .line 91
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 123
    monitor-exit v0

    .line 124
    return v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userManager"    # Landroid/os/UserManager;
    .param p3, "databaseManager"    # Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    .param p4, "batteryUtils"    # Lcom/android/settings/fuelgauge/BatteryUtils;
    .param p5, "policy"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    .param p6, "powerWhitelistBackend"    # Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .param p7, "contentResolver"    # Landroid/content/ContentResolver;
    .param p8, "powerUsageFeatureProvider"    # Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .param p9, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p10, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    .line 134
    move-object/from16 v5, p10

    const-string v0, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 135
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/StatsDimensionsValue;

    .line 136
    .local v6, "intentDimsValue":Landroid/os/StatsDimensionsValue;
    const-string v0, "key_anomaly_timestamp"

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 136
    invoke-virtual {v5, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 138
    .local v7, "timeMs":J
    const-string v0, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 140
    .local v14, "cookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;

    .line 141
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    const/4 v15, 0x0

    if-nez v9, :cond_0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v9, ""

    :goto_0
    invoke-direct {v0, v9}, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 142
    .local v13, "anomalyInfo":Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;
    const-string v0, "AnomalyDetectionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extra stats value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v12, p0

    :try_start_0
    invoke-virtual {v12, v6}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v0

    .line 146
    .local v0, "uid":I
    invoke-interface/range {p8 .. p8}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v9

    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    .line 148
    :try_start_1
    const-string v9, "adaptive_battery_management_enabled"

    .line 147
    invoke-static {v3, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v9, v11, :cond_1

    .line 149
    :goto_1
    move v9, v11

    goto :goto_4

    .line 147
    :cond_1
    nop

    .line 149
    :goto_2
    move v9, v15

    goto :goto_4

    .line 184
    .end local v0
    :catch_0
    move-exception v0

    move-object/from16 v21, v6

    .end local v6
    .end local v13
    .end local v14
    .local v3, "anomalyInfo":Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;
    .local v17, "cookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "intentDimsValue":Landroid/os/StatsDimensionsValue;
    :goto_3
    move-object v3, v13

    move-object/from16 v17, v14

    goto/16 :goto_7

    .line 150
    .end local v3
    .end local v17
    .end local v21
    .restart local v0
    .restart local v6
    .restart local v13
    .restart local v14
    :cond_2
    :try_start_2
    const-string v9, "app_auto_restriction_enabled"

    .line 149
    invoke-static {v3, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :goto_4
    move/from16 v16, v9

    .line 151
    .local v16, "autoFeatureOn":Z
    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 152
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->getAppLongVersionCode(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 154
    .local v19, "versionCode":J
    move-object/from16 v9, p6

    invoke-virtual {v2, v9, v0, v13}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result v17

    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v11, 0x2

    if-eqz v17, :cond_4

    .line 155
    :try_start_3
    new-array v11, v11, [Landroid/util/Pair;

    const/16 v15, 0x341

    .line 158
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v3, v13, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-static {v15, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v15, 0x0

    aput-object v3, v11, v15

    .line 160
    const/16 v3, 0x56d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 161
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v21, v6

    move-wide/from16 v5, v19

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 160
    .end local v6
    .end local v19
    .local v5, "versionCode":J
    .restart local v21
    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v15, 0x1

    aput-object v3, v11, v15

    .line 155
    const/16 v3, 0x56b

    invoke-virtual {v4, v1, v3, v10, v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 186
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v13

    move-object/from16 v17, v14

    goto/16 :goto_6

    .line 184
    .end local v0
    .end local v5
    .end local v10
    .end local v16
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v21
    .restart local v6
    :catch_2
    move-exception v0

    move-object/from16 v21, v6

    move-object v3, v13

    move-object/from16 v17, v14

    .end local v6
    .restart local v21
    goto/16 :goto_7

    .line 163
    .end local v21
    .restart local v0
    .restart local v6
    .restart local v10
    .restart local v16
    .restart local v19
    :cond_4
    move-object/from16 v21, v6

    move-wide/from16 v5, v19

    const/16 v3, 0x56d

    .end local v6
    .end local v19
    .restart local v5
    .restart local v21
    if-eqz v16, :cond_5

    :try_start_5
    iget-boolean v3, v13, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->autoRestriction:Z

    if-eqz v3, :cond_5

    .line 165
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v10, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 167
    iget-object v3, v13, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v17, 0x2

    move-object/from16 v9, p3

    move-object/from16 v22, v10

    move v10, v0

    .end local v10
    .local v22, "packageName":Ljava/lang/String;
    const/16 v18, 0x1

    move-object/from16 v11, v22

    move v12, v3

    move-object v3, v13

    move/from16 v13, v17

    .end local v13
    .restart local v3
    move-object/from16 v17, v14

    move/from16 v19, v15

    move-wide v14, v7

    .end local v14
    .restart local v17
    :try_start_6
    invoke-virtual/range {v9 .. v15}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    goto :goto_5

    .line 184
    .end local v0
    .end local v3
    .end local v5
    .end local v16
    .end local v17
    .end local v22
    .restart local v13
    .restart local v14
    :catch_3
    move-exception v0

    move-object v3, v13

    move-object/from16 v17, v14

    .end local v13
    .end local v14
    .restart local v3
    .restart local v17
    goto :goto_7

    .line 171
    .end local v3
    .end local v17
    .restart local v0
    .restart local v5
    .restart local v10
    .restart local v13
    .restart local v14
    .restart local v16
    :cond_5
    move-object/from16 v22, v10

    move-object v3, v13

    move-object/from16 v17, v14

    move/from16 v19, v15

    const/16 v18, 0x1

    .end local v10
    .end local v13
    .end local v14
    .restart local v3
    .restart local v17
    .restart local v22
    iget-object v9, v3, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move v10, v0

    move-object/from16 v11, v22

    move-wide v14, v7

    invoke-virtual/range {v9 .. v15}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    .line 175
    :goto_5
    const/16 v9, 0x557

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/util/Pair;

    const/16 v11, 0x556

    .line 178
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v3, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    aput-object v11, v10, v19

    .line 180
    const/16 v11, 0x56d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 181
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 180
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    aput-object v11, v10, v18

    .line 175
    move-object/from16 v11, v22

    invoke-virtual {v4, v1, v9, v11, v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 186
    .end local v0
    .end local v5
    .end local v16
    .end local v22
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    goto :goto_8

    .line 184
    :catch_4
    move-exception v0

    goto :goto_7

    .end local v3
    .end local v17
    .end local v21
    .restart local v6
    .restart local v13
    .restart local v14
    :catch_5
    move-exception v0

    move-object/from16 v21, v6

    move-object v3, v13

    move-object/from16 v17, v14

    .line 185
    .end local v6
    .end local v13
    .end local v14
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v3
    .restart local v17
    .restart local v21
    :goto_7
    const-string v5, "AnomalyDetectionService"

    const-string v6, "Parse stats dimensions value error."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0
    :goto_8
    return-void
.end method
