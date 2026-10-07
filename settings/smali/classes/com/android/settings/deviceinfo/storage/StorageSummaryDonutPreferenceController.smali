.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageSummaryDonutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 49
    const-string v0, "pref_summary"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 51
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "pref_summary"

    return-object v0
.end method

.method public invalidateData()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 77
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public updateBytes(JJ)V
    .locals 0
    .param p1, "used"    # J
    .param p3, "total"    # J

    .line 95
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 96
    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->invalidateData()V

    .line 98
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 64
    .local v0, "summary":Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 66
    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getAboutTotalSize(J)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 65
    const v4, 0x7f120de1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 70
    return-void
.end method
