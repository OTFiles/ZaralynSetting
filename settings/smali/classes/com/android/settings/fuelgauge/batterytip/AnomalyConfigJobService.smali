.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;
.super Landroid/app/job/JobService;
.source "AnomalyConfigJobService.java"


# static fields
.field static final CONFIG_UPDATE_FREQUENCY_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->CONFIG_UPDATE_FREQUENCY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 72
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 73
    .local v0, "statsManager":Landroid/app/StatsManager;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->checkAnomalyConfig(Landroid/app/StatsManager;)V

    .line 75
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->uploadAnomalyPendingIntent(Landroid/content/Context;Landroid/app/StatsManager;)V

    .line 78
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const-string v2, "AnomalyConfigJobService"

    const-string v3, "Failed to uploadAnomalyPendingIntent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 80
    return-void
.end method

.method public static scheduleConfigUpdate(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 52
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x7f0b0008

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v4, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->CONFIG_UPDATE_FREQUENCY_MS:J

    .line 55
    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 59
    .local v2, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    .line 63
    .local v3, "pending":Landroid/app/job/JobInfo;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 65
    const-string v4, "AnomalyConfigJobService"

    const-string v5, "Anomaly config update job service schedule failed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized checkAnomalyConfig(Landroid/app/StatsManager;)V
    .locals 10
    .param p1, "statsManager"    # Landroid/app/StatsManager;

    monitor-enter p0

    .line 92
    :try_start_0
    const-string v0, "anomaly_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "anomaly_config_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, "currentVersion":I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anomaly_config_version"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "newVersion":I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anomaly_config"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "rawConfig":Ljava/lang/String;
    const-string v5, "AnomalyConfigJobService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CurrentVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " new version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v3, v2, :cond_0

    .line 104
    const-wide/16 v5, 0x1

    :try_start_1
    invoke-virtual {p1, v5, v6}, Landroid/app/StatsManager;->removeConfig(J)V

    .line 108
    :try_end_1
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v7

    .line 106
    .local v7, "e":Landroid/app/StatsManager$StatsUnavailableException;
    :try_start_2
    const-string v8, "AnomalyConfigJobService"

    const-string v9, "When updating anomaly config, failed to first remove the old config 1"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v7
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_0

    .line 111
    :try_start_3
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 112
    .local v1, "config":[B
    invoke-virtual {p1, v5, v6, v1}, Landroid/app/StatsManager;->addConfig(J[B)V

    .line 113
    const-string v5, "AnomalyConfigJobService"

    const-string v6, "Upload the anomaly config. configKey: 1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 116
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "anomaly_config_version"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v1
    .end local v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Landroid/app/StatsManager$StatsUnavailableException;
    :try_start_4
    const-string v5, "AnomalyConfigJobService"

    const-string v6, "Upload of anomaly config failed for configKey 1"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    goto :goto_2

    .line 118
    :catch_2
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "AnomalyConfigJobService"

    const-string v6, "Anomaly raw config is in wrong format"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    nop

    .line 126
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 91
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 71
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 87
    const/4 v0, 0x0

    return v0
.end method
