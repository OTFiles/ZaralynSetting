.class Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "ProcessStatsSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 140
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 9
    .param p1, "listening"    # Z

    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Lcom/android/settings/applications/ProcStatsData;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    .line 146
    .local v0, "statsManager":Lcom/android/settings/applications/ProcStatsData;
    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 147
    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    .line 152
    .local v1, "memInfo":Lcom/android/settings/applications/ProcStatsData$MemInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "usedResult":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v5, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "totalResult":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    const v7, 0x7f1208b3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v2

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 157
    .end local v0
    .end local v1
    .end local v3
    .end local v4
    :cond_0
    return-void
.end method
