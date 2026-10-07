.class public Lcom/android/settings/development/MemoryUsagePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MemoryUsagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mProcStatsData:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "usedResult"    # Ljava/lang/String;
    .param p2, "totalResult"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const v3, 0x7f1208b3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$updateState$1(Lcom/android/settings/development/MemoryUsagePreferenceController;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 69
    .local v0, "memInfo":Lcom/android/settings/applications/ProcStatsData$MemInfo;
    iget-object v1, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "usedResult":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "totalResult":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->getProcStatsData()Lcom/android/settings/applications/ProcStatsData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->setDuration()V

    .line 56
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "memory"

    return-object v0
.end method

.method getProcStatsData()Lcom/android/settings/applications/ProcStatsData;
    .locals 3

    .line 84
    new-instance v0, Lcom/android/settings/applications/ProcStatsData;

    iget-object v1, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method setDuration()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 80
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 62
    new-instance v0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;

    invoke-direct {v0, p0}, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
