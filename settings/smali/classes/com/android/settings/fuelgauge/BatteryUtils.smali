.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 104
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 106
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 96
    :cond_1
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object v0
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 8
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 153
    .local v0, "rawRealTimeUs":J
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    .line 156
    .local v2, "timeUs":J
    const-string v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "background time(us): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 6
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 163
    .local v0, "rawRealTimeUs":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    .line 164
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 163
    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 4
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 148
    .local v0, "rawRealTimeUs":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J
    .locals 11
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I
    .param p3, "rawRealTimeUs"    # J

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 130
    .local v0, "foregroundTypes":[I
    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-wide/16 v2, 0x0

    .line 133
    .local v2, "timeUs":J
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    .line 134
    .local v5, "type":I
    invoke-virtual {p1, v5, p3, p4, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v6

    .line 135
    .local v6, "localTime":J
    const-string v8, "BatteryUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " time(us): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    add-long/2addr v2, v6

    .line 133
    .end local v5
    .end local v6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    const-string v1, "BatteryUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foreground time(us): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    nop

    .line 143
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 142
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private hasLauncherEntry([Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 572
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x1c0200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 585
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 586
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 587
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    const/4 v5, 0x1

    return v5

    .line 585
    .end local v4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v2
    .end local v3
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isDataCorrupted()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 2
    .param p1, "anomalyInfo"    # Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;

    .line 545
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageNames"    # [Ljava/lang/String;

    .line 555
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 557
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 559
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 560
    return v6

    .line 564
    .end local v4
    :cond_0
    goto :goto_1

    .line 562
    :catch_0
    move-exception v4

    .line 563
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BatteryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v3
    .end local v4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return v1
.end method

.method private isSystemUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 550
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 551
    .local v0, "appUid":I
    if-ltz v0, :cond_0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static logRuntime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method


# virtual methods
.method public calculateBatteryPercent(DDDI)D
    .locals 4
    .param p1, "powerUsageMah"    # D
    .param p3, "totalPowerMah"    # D
    .param p5, "hiddenPowerMah"    # D
    .param p7, "dischargeAmount"    # I

    .line 267
    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 268
    return-wide v0

    .line 271
    :cond_0
    sub-double v0, p3, p5

    div-double v0, p1, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "currentTimeMs"    # J

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0
.end method

.method public calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J
    .locals 4
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 283
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 286
    .local v0, "elapsedRealtimeUs":J
    nop

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 286
    invoke-static {v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J
    .locals 3
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;

    .line 369
    nop

    .line 370
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    .line 371
    .local v0, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p2, "type"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper$DrainType;",
            ")",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    .line 468
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 470
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, p2, :cond_0

    .line 471
    return-object v2

    .line 468
    .end local v2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLongVersionCode(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 603
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 604
    .end local v0
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    .end local v0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 13
    .param p1, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "tag"    # Ljava/lang/String;

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 436
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 439
    .local v2, "batteryBroadcast":Landroid/content/Intent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 438
    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v3

    .line 440
    .local v3, "elapsedRealtimeUs":J
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v12

    .line 445
    .local v12, "stats":Landroid/os/BatteryStats;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 446
    invoke-interface {v5, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v5

    .local v5, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    goto :goto_0

    .line 449
    .end local v5
    :cond_0
    new-instance v5, Lcom/android/settings/fuelgauge/Estimate;

    .line 450
    invoke-virtual {v12, v3, v4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v7

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    .local v8, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    :goto_0
    move-object v8, v5

    .line 455
    const-string v5, "BatteryInfoLoader post query"

    invoke-static {p2, v5, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 456
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v12

    move-wide v9, v3

    invoke-static/range {v5 .. v11}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v5

    .line 458
    .local v5, "batteryInfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    const-string v6, "BatteryInfoLoader.loadInBackground"

    invoke-static {p2, v6, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 460
    return-object v5
.end method

.method getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J

    .line 483
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 484
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1

    .line 488
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J

    .line 493
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 494
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1

    .line 498
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .line 301
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 387
    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J
    .locals 4
    .param p1, "type"    # I
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "which"    # I

    .line 110
    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    .line 111
    return-wide v0

    .line 114
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 125
    return-wide v0

    .line 122
    :pswitch_0    # 0x3
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    .line 123
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 122
    return-wide v0

    .line 120
    :pswitch_1    # 0x2
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    .line 118
    :pswitch_2    # 0x1
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    .line 116
    :pswitch_3    # 0x0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public getSummaryResIdFromAnomalyType(I)I
    .locals 3
    .param p1, "type"    # I

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect anomaly type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :pswitch_0    # 0x2
    const v0, 0x7f1201ce

    return v0

    .line 400
    :pswitch_1    # 0x1
    const v0, 0x7f1201d0

    return v0

    .line 398
    :pswitch_2    # 0x0
    const v0, 0x7f1201cf

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 316
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 317
    .end local v0
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0
    const/4 v0, -0x1

    return v0
.end method

.method public initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V
    .locals 2
    .param p1, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "userManager"    # Landroid/os/UserManager;

    .line 426
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 428
    invoke-virtual {p3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 429
    return-void
.end method

.method public isBackgroundRestrictionEnabled(IILjava/lang/String;)Z
    .locals 3
    .param p1, "targetSdkVersion"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 330
    return v0

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f

    .line 333
    invoke-virtual {v1, v2, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 334
    .local v1, "mode":I
    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public isForceAppStandbyEnabled(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPreOApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 506
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 507
    .end local v1
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1
    return v0
.end method

.method public isPreOApp([Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 515
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 516
    return v1

    .line 519
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 520
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    const/4 v0, 0x1

    return v0

    .line 519
    .end local v3
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_2
    return v1
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .line 176
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "proportionalSmearPowerMah":D
    const/4 v2, 0x0

    .line 178
    .local v2, "screenSipper":Lcom/android/internal/os/BatterySipper;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 179
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 180
    .local v4, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 189
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 193
    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    .line 194
    move-object v2, v4

    .line 178
    .end local v4
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 198
    .end local v3
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    .line 200
    return-wide v0
.end method

.method public setForceAppStandby(ILjava/lang/String;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 410
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v0

    .line 411
    .local v0, "isPreOApp":Z
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 417
    return-void
.end method

.method public shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 3
    .param p1, "powerWhitelistBackend"    # Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .param p2, "uid"    # I
    .param p3, "anomalyInfo"    # Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;

    .line 533
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 536
    return v2

    .line 539
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 540
    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->hasLauncherEntry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    .line 539
    :cond_3
    :goto_0
    return v2
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 5
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 240
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 242
    .local v0, "drainType":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v3, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 250
    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 251
    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 242
    :goto_1
    return v1
.end method

.method smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 17
    .param p2, "screenSipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p1

    .line 209
    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    .line 210
    .local v2, "totalActivityTimeMs":J
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 211
    .local v4, "activityTimeArray":Landroid/util/SparseLongArray;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 212
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    iget-object v7, v7, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 213
    .local v7, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v7, :cond_0

    .line 214
    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-virtual {v9, v8, v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v10

    .line 216
    .local v10, "timeMs":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v4, v8, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 217
    add-long/2addr v2, v10

    .end local v7
    .end local v10
    goto :goto_1

    .line 211
    :cond_0
    move-object/from16 v9, p0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v5
    .end local v6
    :cond_1
    move-object/from16 v9, p0

    const-wide/32 v5, 0x927c0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_3

    .line 222
    if-nez v1, :cond_2

    .line 223
    const-string v5, "BatteryUtils"

    const-string v6, "screen sipper is null even when app screen time is not zero"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_2
    iget-wide v5, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 228
    .local v5, "screenPowerMah":D
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 229
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    .line 230
    .local v10, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v11, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v10}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v13, v5

    long-to-double v0, v2

    div-double/2addr v13, v0

    add-double/2addr v11, v13

    iput-wide v11, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 228
    .end local v10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2

    .line 234
    .end local v5
    .end local v7
    .end local v8
    :cond_3
    return-void
.end method

.method public sortUsageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils$1;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    return-void
.end method
