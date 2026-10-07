.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListPreference:Landroid/support/v7/preference/Preference;

.field private mAverageUsed:Landroid/support/v7/preference/Preference;

.field private mFree:Landroid/support/v7/preference/Preference;

.field private mPerformance:Landroid/support/v7/preference/Preference;

.field private mSummaryPref:Lcom/android/settings/SummaryPreference;

.field private mTotalMemory:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 111
    const v0, 0x7f1206aa

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 106
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f150090

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SummaryPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    .line 60
    const-string v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    .line 61
    const-string v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    .line 62
    const-string v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    .line 63
    const-string v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    .line 64
    const-string v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "transfer_stats"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v1, "duration_index"

    iget v3, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 121
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/ProcessStatsUi;

    .line 122
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v3, 0x7f1208b7

    .line 123
    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 127
    return v2

    .line 129
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUi()V
    .locals 25

    .line 70
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    .local v1, "context":Landroid/content/Context;
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    .line 74
    .local v2, "memInfo":Lcom/android/settings/applications/ProcStatsData$MemInfo;
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 75
    .local v3, "usedRam":D
    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 76
    .local v5, "totalRam":D
    iget-wide v7, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 77
    .local v7, "freeRam":D
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    double-to-long v10, v3

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v9

    .line 79
    .local v9, "usedResult":Landroid/text/format/Formatter$BytesResult;
    double-to-long v10, v5

    invoke-static {v1, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "totalString":Ljava/lang/String;
    double-to-long v13, v7

    invoke-static {v1, v13, v14}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "freeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f030063

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 83
    .local v13, "memStatesStr":[Ljava/lang/CharSequence;
    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v14}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v14

    .line 84
    .local v14, "memState":I
    if-ltz v14, :cond_0

    array-length v15, v13

    sub-int/2addr v15, v12

    if-ge v14, v15, :cond_0

    .line 85
    aget-object v15, v13, v14

    .local v15, "memString":Ljava/lang/CharSequence;
    goto :goto_0

    .line 87
    .end local v15
    :cond_0
    array-length v15, v13

    sub-int/2addr v15, v12

    aget-object v15, v13, v15

    .line 89
    .restart local v15
    :goto_0
    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    move-object/from16 v17, v1

    iget-object v1, v9, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .end local v1
    .local v17, "context":Landroid/content/Context;
    invoke-virtual {v12, v1}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v12, v9, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 91
    add-double v18, v7, v3

    move-object/from16 v20, v2

    div-double v1, v3, v18

    .end local v2
    .local v20, "memInfo":Lcom/android/settings/applications/ProcStatsData$MemInfo;
    double-to-float v1, v1

    .line 92
    .local v1, "usedRatio":F
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const/4 v12, 0x0

    const/high16 v18, 0x3f800000

    move-wide/from16 v21, v7

    sub-float v7, v18, v1

    .end local v7
    .local v21, "freeRam":D
    invoke-virtual {v2, v1, v12, v7}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 94
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    double-to-long v7, v3

    move-wide/from16 v23, v3

    double-to-long v3, v5

    .end local v3
    .local v23, "usedRam":D
    invoke-static {v7, v8, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    sget-object v2, Lcom/android/settings/applications/ProcessStatsSummary;->sDurationLabels:[I

    iget v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "durationString":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 100
    .local v3, "numApps":I
    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100024

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v18, 0x0

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v12, v18

    const/16 v16, 0x1

    aput-object v2, v12, v16

    .line 100
    invoke-virtual {v7, v8, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
