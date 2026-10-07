.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 39
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryInfo;
    .param p1, "x1"    # J

    .line 39
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 39
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "estimate"    # Lcom/android/settings/fuelgauge/Estimate;
    .param p4, "elapsedRealtimeUs"    # J
    .param p6, "shortString"    # Z

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 218
    .local v8, "startTime":J
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    move-object v10, v0

    .line 219
    .local v10, "info":Lcom/android/settings/fuelgauge/BatteryInfo;
    move-object/from16 v11, p2

    iput-object v11, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    iput v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 221
    iget v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 222
    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 223
    iget-wide v0, v7, Lcom/android/settings/fuelgauge/Estimate;->averageDischargeTime:J

    iput-wide v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 226
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-static {v12, v6}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 227
    iget-boolean v0, v10, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v0, :cond_1

    .line 228
    move-object v13, p0

    move/from16 v14, p6

    invoke-static {v13, v14, v7, v10}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settings/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_0

    .line 230
    :cond_1
    move-object v13, p0

    move/from16 v14, p6

    move-object v0, v13

    move-object v1, v6

    move-object v2, v11

    move-wide/from16 v3, p4

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 232
    :goto_0
    const-string v0, "BatteryInfo"

    const-string v1, "time for getBatteryInfo"

    invoke-static {v0, v1, v8, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 233
    return-object v10
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "shortString"    # Z

    .line 158
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    .param p2, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p3, "shortString"    # Z

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, "startTime":J
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    .line 152
    .local v2, "stats":Landroid/os/BatteryStats;
    const-string v3, "BatteryInfo"

    const-string v4, "time for getStats"

    invoke-static {v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-static {p0, p1, v2, p3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    .line 154
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    .param p2, "shortString"    # Z

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "startTime":J
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 143
    .local v2, "statsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    const/4 v3, 0x0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 144
    const-string v3, "BatteryInfo"

    const-string v4, "time to make batteryStatsHelper"

    invoke-static {v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 145
    invoke-static {p0, p1, v2, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    .line 146
    return-void
.end method

.method public static getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "shortString"    # Z

    .line 206
    new-instance v6, Lcom/android/settings/fuelgauge/Estimate;

    .line 207
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v3, v6

    .line 210
    .local v3, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 44
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "parsers"    # [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    move-object/from16 v0, p0

    .line 295
    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 296
    .local v2, "startWalltime":J
    const-wide/16 v4, 0x0

    .line 297
    .local v4, "endWalltime":J
    const-wide/16 v6, 0x0

    .line 298
    .local v6, "historyStart":J
    const-wide/16 v8, 0x0

    .line 299
    .local v8, "historyEnd":J
    move-wide v10, v2

    .line 300
    .local v10, "curWalltime":J
    const-wide/16 v12, 0x0

    .line 301
    .local v12, "lastWallTime":J
    const-wide/16 v14, 0x0

    .line 302
    .local v14, "lastRealtime":J
    const/16 v16, 0x0

    .line 303
    .local v16, "lastInteresting":I
    const/16 v17, 0x0

    .line 304
    .local v17, "pos":I
    const/16 v18, 0x1

    .line 305
    .local v18, "first":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v19

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v2

    .end local v2
    .local v22, "startWalltime":J
    const/4 v3, 0x5

    if-eqz v19, :cond_6

    .line 306
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 307
    .local v2, "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 308
    add-int/lit8 v17, v17, 0x1

    .line 309
    if-eqz v18, :cond_0

    .line 310
    const/16 v18, 0x0

    .line 311
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 313
    :cond_0
    move-wide/from16 v24, v4

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .end local v4
    .local v24, "endWalltime":J
    if-eq v4, v3, :cond_1

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 323
    :cond_1
    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v26, 0x39ef8b000L

    add-long v26, v12, v26

    cmp-long v4, v4, v26

    if-gtz v4, :cond_2

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v26, 0x493e0

    add-long v26, v6, v26

    cmp-long v4, v4, v26

    if-gez v4, :cond_3

    .line 325
    :cond_2
    const-wide/16 v22, 0x0

    .line 327
    :cond_3
    iget-wide v12, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 328
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 329
    cmp-long v4, v22, v20

    if-nez v4, :cond_4

    .line 330
    sub-long v4, v14, v6

    sub-long v22, v12, v4

    .line 333
    :cond_4
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 334
    move/from16 v16, v17

    .line 335
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 306
    .end local v24
    .restart local v4
    :cond_5
    move-wide/from16 v4, v24

    goto :goto_0

    .line 339
    .end local v2
    :cond_6
    move-wide/from16 v24, v4

    move-wide/from16 v4, v22

    .end local v22
    .local v4, "startWalltime":J
    .restart local v24
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 340
    add-long v22, v12, v8

    move-wide/from16 v28, v4

    sub-long v3, v22, v14

    .line 342
    .end local v4
    .end local v24
    .local v3, "endWalltime":J
    .local v28, "startWalltime":J
    const/4 v2, 0x0

    .line 343
    .local v2, "i":I
    move/from16 v5, v16

    .line 345
    .local v5, "N":I
    const/16 v19, 0x0

    move/from16 v22, v19

    .local v22, "j":I
    :goto_1
    move/from16 v30, v22

    .end local v22
    .local v30, "j":I
    move/from16 v31, v2

    array-length v2, v1

    .end local v2
    .local v31, "i":I
    move-wide/from16 v32, v8

    move/from16 v8, v30

    if-ge v8, v2, :cond_7

    .line 346
    .end local v30
    .local v8, "j":I
    .local v32, "historyEnd":J
    aget-object v2, v1, v8

    move-wide/from16 v34, v10

    move-wide/from16 v9, v28

    invoke-interface {v2, v9, v10, v3, v4}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 345
    .end local v10
    .end local v28
    .local v9, "startWalltime":J
    .local v34, "curWalltime":J
    add-int/lit8 v22, v8, 0x1

    .end local v8
    .restart local v22
    move/from16 v2, v31

    move-wide/from16 v8, v32

    move-wide/from16 v10, v34

    goto :goto_1

    .line 348
    .end local v9
    .end local v22
    .end local v34
    .restart local v10
    .restart local v28
    :cond_7
    move-wide/from16 v34, v10

    move-wide/from16 v9, v28

    .end local v10
    .end local v28
    .restart local v9
    .restart local v34
    cmp-long v2, v3, v9

    if-lez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 349
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v8, v31

    .line 350
    .end local v31
    .local v2, "rec":Landroid/os/BatteryStats$HistoryItem;
    .local v8, "i":I
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-ge v8, v5, :cond_11

    .line 351
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    move-wide/from16 v36, v3

    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .end local v3
    .local v36, "endWalltime":J
    sub-long/2addr v3, v14

    add-long v34, v34, v3

    .line 353
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 354
    .end local v14
    .local v3, "lastRealtime":J
    sub-long v14, v34, v9

    .line 355
    .local v14, "x":J
    cmp-long v11, v14, v20

    if-gez v11, :cond_8

    .line 356
    const-wide/16 v14, 0x0

    .line 358
    :cond_8
    move/from16 v11, v19

    .local v11, "j":I
    :goto_3
    move-wide/from16 v38, v3

    array-length v3, v1

    .end local v3
    .local v38, "lastRealtime":J
    if-ge v11, v3, :cond_9

    .line 359
    aget-object v3, v1, v11

    invoke-interface {v3, v14, v15, v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 358
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v3, v38

    goto :goto_3

    .line 361
    .end local v11
    .end local v14
    :cond_9
    nop

    .line 381
    move/from16 v40, v5

    move-wide/from16 v41, v12

    move-wide/from16 v14, v38

    .end local v5
    .end local v12
    .end local v38
    .local v14, "lastRealtime":J
    .local v40, "N":I
    .local v41, "lastWallTime":J
    :cond_a
    const/4 v11, 0x5

    goto :goto_9

    .line 362
    .end local v36
    .end local v40
    .end local v41
    .local v3, "endWalltime":J
    .restart local v5
    .restart local v12
    :cond_b
    move-wide/from16 v36, v3

    .end local v3
    .restart local v36
    move-wide/from16 v3, v34

    .line 363
    .local v3, "lastWalltime":J
    iget-byte v11, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v40, v5

    const/4 v5, 0x5

    if-eq v11, v5, :cond_d

    .end local v5
    .restart local v40
    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x7

    if-ne v5, v11, :cond_c

    goto :goto_4

    .line 373
    :cond_c
    move-wide/from16 v41, v12

    goto :goto_7

    .line 365
    :cond_d
    const/4 v11, 0x7

    :goto_4
    move-wide/from16 v41, v12

    iget-wide v11, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .end local v12
    .restart local v41
    cmp-long v5, v11, v9

    if-ltz v5, :cond_e

    .line 366
    iget-wide v11, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 370
    .end local v34
    .local v11, "curWalltime":J
    :goto_5
    move-wide/from16 v34, v11

    goto :goto_6

    .line 368
    .end local v11
    .restart local v34
    :cond_e
    iget-wide v11, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v11, v6

    add-long/2addr v11, v9

    goto :goto_5

    .line 370
    :goto_6
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 373
    :goto_7
    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x6

    if-eq v5, v11, :cond_a

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x5

    if-ne v5, v11, :cond_f

    sub-long v12, v3, v34

    .line 375
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v22, 0x36ee80

    cmp-long v5, v12, v22

    if-lez v5, :cond_10

    .line 376
    :cond_f
    move/from16 v5, v19

    .local v5, "j":I
    :goto_8
    array-length v12, v1

    if-ge v5, v12, :cond_10

    .line 377
    aget-object v12, v1, v5

    invoke-interface {v12}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 381
    .end local v3
    .end local v5
    :cond_10
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 349
    move-wide/from16 v3, v36

    move/from16 v5, v40

    move-wide/from16 v12, v41

    goto/16 :goto_2

    .line 385
    .end local v2
    .end local v36
    .end local v40
    .end local v41
    .local v3, "endWalltime":J
    .local v5, "N":I
    .restart local v12
    :cond_11
    move-wide/from16 v36, v3

    move/from16 v40, v5

    move-wide/from16 v41, v12

    .end local v3
    .end local v5
    .end local v12
    .restart local v36
    .restart local v40
    .restart local v41
    move/from16 v31, v8

    goto :goto_a

    .end local v8
    .end local v36
    .end local v40
    .end local v41
    .restart local v3
    .restart local v5
    .restart local v12
    .restart local v31
    :cond_12
    move-wide/from16 v36, v3

    move/from16 v40, v5

    move-wide/from16 v41, v12

    .end local v3
    .end local v5
    .end local v12
    .restart local v36
    .restart local v40
    .restart local v41
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 387
    nop

    .local v19, "j":I
    :goto_b
    move/from16 v2, v19

    .end local v19
    .local v2, "j":I
    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 388
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 387
    add-int/lit8 v19, v2, 0x1

    .end local v2
    .restart local v19
    goto :goto_b

    .line 390
    .end local v19
    :cond_13
    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "info"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    move-object v0, p0

    .line 238
    move-object/from16 v1, p5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 239
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v3

    .line 240
    .local v3, "chargeTime":J
    const-string v5, "status"

    const/4 v6, 0x1

    move-object v7, p1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 242
    .local v5, "status":I
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    .line 243
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    const/4 v10, 0x2

    if-lez v9, :cond_0

    const/4 v9, 0x5

    if-eq v5, v9, :cond_0

    .line 244
    iput-wide v3, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 245
    iget-wide v11, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 246
    invoke-static {v11, v12}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v11

    long-to-double v11, v11

    .line 245
    invoke-static {v0, v11, v12, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v9

    .line 247
    .local v9, "timeString":Ljava/lang/CharSequence;
    const v11, 0x7f1209fb

    .line 248
    .local v11, "resId":I
    const v12, 0x7f120a12

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v9, v13, v8

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 250
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v12, v10, v8

    aput-object v9, v10, v6

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 251
    .end local v9
    .end local v11
    goto :goto_1

    .line 252
    :cond_0
    const v9, 0x7f1201f2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "chargeStatusLabel":Ljava/lang/String;
    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 255
    iget v11, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_1

    iget-object v6, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_1
    const v11, 0x7f1209fa

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v12, v10, v8

    aput-object v9, v10, v6

    invoke-virtual {v2, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 259
    .end local v9
    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settings/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortString"    # Z
    .param p2, "estimate"    # Lcom/android/settings/fuelgauge/Estimate;
    .param p3, "info"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 263
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/Estimate;->estimateMillis:J

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 264
    .local v0, "drainTimeUs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 265
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 266
    nop

    .line 268
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    iget-boolean v2, p2, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 266
    move v2, v7

    goto :goto_0

    .line 268
    :cond_0
    nop

    .line 266
    move v2, v6

    :goto_0
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 272
    nop

    .line 274
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    iget-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iget-boolean v5, p2, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 272
    move v6, v7

    goto :goto_1

    .line 274
    :cond_1
    nop

    .line 272
    :goto_1
    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 279
    :cond_2
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 280
    iget-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 282
    :goto_2
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 13
    .param p1, "view"    # Lcom/android/settings/graph/UsageView;
    .param p2, "parsers"    # [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    .line 59
    invoke-virtual {p1}, Lcom/android/settings/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/graph/UsageView;Landroid/content/Context;)V

    .line 119
    .local v1, "parser":Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    .line 120
    .local v2, "parserList":[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 121
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v5
    :cond_0
    array-length v5, p2

    aput-object v1, v2, v5

    .line 124
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static {v5, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 125
    const v5, 0x7f120391

    new-array v6, v3, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 126
    invoke-static {v0, v7, v8}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 125
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "timeString":Ljava/lang/String;
    const-string v6, ""

    .line 128
    .local v6, "remaining":Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 129
    const v7, 0x7f120bbc

    new-array v8, v3, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 130
    invoke-static {v0, v9, v10}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 129
    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 132
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v4

    aput-object v6, v7, v3

    invoke-virtual {p1, v7}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
