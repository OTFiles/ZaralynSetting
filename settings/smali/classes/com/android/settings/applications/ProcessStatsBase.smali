.class public abstract Lcom/android/settings/applications/ProcessStatsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DURATION_QUANTUM:J

.field protected static sDurationLabels:[I

.field public static sDurations:[J


# instance fields
.field protected mDurationIndex:I

.field private mFilterAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mSpinnerHeader:Landroid/view/ViewGroup;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    .line 49
    const/4 v0, 0x4

    new-array v1, v0, [J

    sget-wide v2, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    const-wide/32 v6, 0xa4cb80

    sub-long/2addr v6, v2

    const/4 v2, 0x0

    aput-wide v6, v1, v2

    sget-wide v2, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v4

    const-wide/32 v6, 0x1499700

    sub-long/2addr v6, v2

    const/4 v2, 0x1

    aput-wide v6, v1, v2

    sget-wide v2, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v4

    const-wide/32 v6, 0x2932e00

    sub-long/2addr v6, v2

    const/4 v2, 0x2

    aput-wide v6, v1, v2

    sget-wide v2, Lcom/android/settings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v4, v2

    const/4 v2, 0x3

    aput-wide v4, v1, v2

    sput-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1208c0
        0x7f1208c1
        0x7f1208be
        0x7f1208bf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V
    .locals 6
    .param p0, "activity"    # Lcom/android/settings/SettingsActivity;
    .param p1, "memInfo"    # Lcom/android/settings/applications/ProcStatsData$MemInfo;
    .param p2, "entry"    # Lcom/android/settings/applications/ProcStatsPackageEntry;
    .param p3, "includeAppInfo"    # Z

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "package_entry"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    const-string v1, "weight_to_ram"

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    const-string v1, "total_time"

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    const-string v1, "max_memory_usage"

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 141
    const-string v1, "total_scale"

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 142
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/ProcessStatsDetail;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 144
    const v2, 0x7f1208b6

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string v4, "transfer_stats"

    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-direct {v1, v2, v4}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    .line 73
    if-eqz p1, :cond_2

    .line 74
    const-string v1, "duration_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 75
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "duration_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    if-eqz p1, :cond_4

    .line 77
    const-string v2, "duration"

    sget-object v4, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v3, v4, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v2, v3

    .line 76
    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 100
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v1, v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    .line 123
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->refreshUi()V

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "duration"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    .line 107
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00a6

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->sDurationLabels:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    return-void
.end method

.method public abstract refreshUi()V
.end method
