.class public Lcom/android/settings/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsData$MemInfo;
    }
.end annotation


# static fields
.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

.field private mMemStates:[I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private mStates:[I

.field private mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mUseUss:Z

.field private memTotalTime:J

.field private pkgEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Lcom/android/settings/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useXfer"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    .line 79
    const-string v0, "procstats"

    .line 80
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    .line 81
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    .line 82
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    .line 83
    if-eqz p2, :cond_0

    .line 84
    sget-object v0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 86
    :cond_0
    return-void
.end method

.method private createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 28
    .param p1, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p3, "totalMem"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p4, "baseCacheRam"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 232
    new-instance v2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    const-string v3, "os"

    iget-wide v4, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 234
    .local v2, "osPkg":Lcom/android/settings/applications/ProcStatsPackageEntry;
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 235
    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v8, "os"

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v7, 0x7f120a69

    .line 236
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v20, v10

    iget-wide v9, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v9, v9

    div-double/2addr v5, v9

    double-to-long v4, v5

    iget-wide v9, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object v7, v3

    move-wide v15, v9

    const/4 v6, 0x0

    move v9, v6

    move-object/from16 v10, v20

    move-wide v13, v4

    invoke-direct/range {v7 .. v16}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 238
    .local v3, "osEntry":Lcom/android/settings/applications/ProcStatsEntry;
    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v26, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move/from16 v27, v6

    invoke-virtual/range {v21 .. v27}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 239
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 241
    .end local v3
    :cond_0
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 242
    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v5, "os"

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v7, 0x7f120a67

    .line 243
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 245
    .restart local v3
    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v19, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 246
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 257
    .end local v3
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_2

    .line 258
    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const-string v5, "os"

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v7, 0x7f120a66

    .line 259
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const-wide/16 v10, 0x400

    div-long v10, p4, v10

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 261
    .restart local v3
    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v19, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 262
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 264
    .end local v3
    :cond_2
    return-object v2
.end method

.method private createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 10
    .param p2, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p3, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")V"
        }
    .end annotation

    .line 176
    .local p1, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 177
    .local v0, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/applications/ProcStatsPackageEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 178
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 179
    .local v2, "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v8, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v3, v2

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 180
    iget-object v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 181
    .local v3, "pkg":Lcom/android/settings/applications/ProcStatsPackageEntry;
    if-nez v3, :cond_0

    .line 182
    new-instance v4, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    move-object v3, v4

    .line 183
    iget-object v4, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 177
    .end local v2
    .end local v3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v1
    :cond_1
    return-void
.end method

.method private distributeZRam(D)V
    .locals 29
    .param p1, "zramWeight"    # D

    move-object/from16 v0, p0

    .line 196
    iget-wide v1, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v1, v1

    div-double v1, p1, v1

    double-to-long v1, v1

    .line 197
    .local v1, "zramMem":J
    const-wide/16 v5, 0x0

    .line 198
    .local v5, "totalTime":J
    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 199
    iget-object v8, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 200
    .local v8, "entry":Lcom/android/settings/applications/ProcStatsPackageEntry;
    iget-object v9, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "j":I
    :goto_1
    if-ltz v9, :cond_0

    .line 201
    iget-object v10, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/ProcStatsEntry;

    .line 202
    .local v10, "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v11, v10, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v5, v11

    .line 200
    .end local v10
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 198
    .end local v8
    .end local v9
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 205
    .end local v7
    :cond_1
    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7
    :goto_2
    if-ltz v7, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_5

    .line 206
    iget-object v10, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 207
    .local v10, "entry":Lcom/android/settings/applications/ProcStatsPackageEntry;
    const-wide/16 v11, 0x0

    .line 208
    .local v11, "pkgRunTime":J
    const-wide/16 v13, 0x0

    .line 209
    .local v13, "maxRunTime":J
    iget-object v15, v10, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .local v15, "j":I
    :goto_3
    if-ltz v15, :cond_3

    .line 210
    iget-object v8, v10, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsEntry;

    .line 211
    .local v8, "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v3, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v11, v3

    .line 212
    iget-wide v3, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v3, v3, v13

    if-lez v3, :cond_2

    .line 213
    iget-wide v3, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 209
    .end local v8
    .end local v13
    .local v3, "maxRunTime":J
    move-wide v13, v3

    .end local v3
    .restart local v13
    :cond_2
    add-int/lit8 v15, v15, -0x1

    const-wide/16 v8, 0x0

    goto :goto_3

    .line 216
    .end local v15
    :cond_3
    mul-long v3, v1, v11

    div-long/2addr v3, v5

    .line 217
    .local v3, "pkgZRam":J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_4

    .line 218
    sub-long/2addr v1, v3

    .line 219
    sub-long/2addr v5, v11

    .line 220
    new-instance v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v10, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v15, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    move-wide/from16 v27, v1

    const v1, 0x7f120a6a

    .line 221
    .end local v1
    .local v27, "zramMem":J
    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-wide v1, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v20, v13

    move-wide/from16 v22, v3

    move-wide/from16 v24, v1

    invoke-direct/range {v16 .. v25}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    move-object v1, v8

    .line 223
    .local v1, "procEntry":Lcom/android/settings/applications/ProcStatsEntry;
    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v25, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v9, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v8

    move/from16 v26, v9

    invoke-virtual/range {v20 .. v26}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 224
    invoke-virtual {v10, v1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 205
    .end local v1
    .end local v3
    .end local v10
    .end local v11
    .end local v13
    move-wide/from16 v1, v27

    .end local v27
    .local v1, "zramMem":J
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 227
    .end local v7
    :cond_5
    return-void
.end method

.method private getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 273
    .local v2, "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/4 v3, 0x0

    .local v3, "ipkg":I
    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "N":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 274
    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 275
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 276
    .local v6, "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v7, 0x0

    .local v7, "iu":I
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 277
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 278
    .local v8, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v9, 0x0

    .local v9, "iv":I
    :goto_2
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 279
    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 280
    .local v10, "st":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v11, 0x0

    .local v11, "iproc":I
    :goto_3
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 281
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 282
    .local v12, "pkgProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v13, v13, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 283
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v15

    .line 282
    invoke-virtual {v13, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 284
    .local v13, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v13, :cond_0

    .line 285
    const-string v14, "ProcStatsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No process found for pkg "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " proc name "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    goto :goto_4

    .line 289
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v14

    invoke-virtual {v2, v5, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 290
    .local v5, "ent":Lcom/android/settings/applications/ProcStatsEntry;
    if-nez v5, :cond_1

    .line 291
    new-instance v20, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v15, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v16, v15

    move-object v15, v13

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    invoke-direct/range {v14 .. v19}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    move-object/from16 v5, v20

    .line 293
    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 300
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v15

    invoke-virtual {v2, v14, v15, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 304
    :cond_1
    iget-object v14, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    .line 280
    .end local v5
    .end local v12
    .end local v13
    :cond_2
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 278
    .end local v10
    .end local v11
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 276
    .end local v8
    .end local v9
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 273
    .end local v6
    .end local v7
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 314
    .end local v3
    .end local v4
    :cond_6
    const/4 v3, 0x0

    .local v3, "ip":I
    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .restart local v4
    :goto_5
    if-ge v3, v4, :cond_c

    .line 315
    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 316
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 317
    .local v5, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_6
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 318
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/LongSparseArray;

    .line 319
    .local v7, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/4 v8, 0x0

    .local v8, "iv":I
    :goto_7
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 320
    invoke-virtual {v7, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 321
    .local v9, "ps":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v10, 0x0

    .local v10, "is":I
    iget-object v11, v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .local v11, "NS":I
    :goto_8
    if-ge v10, v11, :cond_9

    .line 322
    iget-object v12, v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    .line 323
    .local v12, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 324
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v13

    .line 325
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 324
    invoke-virtual {v2, v13, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ProcStatsEntry;

    .line 326
    .local v13, "ent":Lcom/android/settings/applications/ProcStatsEntry;
    if-eqz v13, :cond_7

    .line 330
    invoke-virtual {v13, v12}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/procstats/ServiceState;)V

    goto :goto_9

    .line 332
    :cond_7
    const-string v14, "ProcStatsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No process "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for service "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v12
    .end local v13
    :cond_8
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_8

    .line 319
    .end local v9
    .end local v10
    .end local v11
    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    .line 317
    .end local v7
    .end local v8
    :cond_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_6

    .line 314
    .end local v5
    .end local v6
    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    .line 341
    .end local v3
    .end local v4
    :cond_c
    return-object v1
.end method

.method private load()V
    .locals 5

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 347
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 348
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 349
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 351
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 353
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v2

    .line 354
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 355
    const-string v2, "ProcStatsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading process stats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0
    .end local v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    goto :goto_1

    .line 357
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProcStatsManager"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0
    :goto_1
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method public getMemState()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 108
    .local v0, "factor":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 112
    add-int/lit8 v0, v0, -0x4

    .line 114
    :cond_1
    return v0
.end method

.method public refreshStats(Z)V
    .locals 11
    .param p1, "forceLoad"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcStatsData;->load()V

    .line 145
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 149
    .local v9, "now":J
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide v7, v9

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    .line 152
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 154
    .local v0, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v0, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 156
    new-instance v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    .line 158
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 160
    .local v1, "bgTotals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 163
    .local v2, "runTotals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V

    .line 164
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v3, :cond_2

    .line 165
    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/ProcStatsData;->distributeZRam(D)V

    .line 168
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-wide v7, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    move-object v3, p0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/ProcStatsData;->createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v3

    .line 170
    .local v3, "osPkg":Lcom/android/settings/applications/ProcStatsPackageEntry;
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 126
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 127
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public xferStats()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    .line 94
    return-void
.end method
