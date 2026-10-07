.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemInfo"
.end annotation


# instance fields
.field baseCacheRam:J

.field freeWeight:D

.field mMemStateWeights:[D

.field memTotalTime:J

.field public realFreeRam:D

.field public realTotalRam:D

.field public realUsedRam:D

.field totalRam:D

.field totalScale:D

.field usedWeight:D

.field weightToRam:D


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "totalMem"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p3, "memTotalTime"    # J

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    .line 382
    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    .line 383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 385
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    long-to-double v4, p3

    div-double/2addr v0, v4

    .line 386
    .local v0, "usedRam":D
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    mul-double/2addr v4, v2

    long-to-double v6, p3

    div-double/2addr v4, v6

    .line 387
    .local v4, "freeRam":D
    add-double v6, v0, v4

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    .line 388
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    .line 389
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    long-to-double v8, p3

    div-double/2addr v6, v8

    mul-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    .line 391
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 392
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 406
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 407
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 409
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_0

    .line 410
    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 411
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 412
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    double-to-long v6, v6

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    goto :goto_0

    .line 414
    :cond_0
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 415
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 416
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    .line 418
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/android/settings/applications/ProcStatsData$1;

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "totalMem"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p3, "memTotalTime"    # J

    .line 422
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 423
    .local v0, "memReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 424
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 425
    iget-wide v1, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    .line 426
    iget-wide v1, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    .line 427
    iget-boolean v1, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v1, :cond_0

    .line 428
    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    .line 430
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 431
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    goto :goto_1

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iget-object v3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    .line 436
    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 437
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    iget-object v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    goto :goto_1

    .line 439
    :cond_2
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-object v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1
    :cond_3
    return-void
.end method


# virtual methods
.method public getWeightToRam()D
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    return-wide v0
.end method
