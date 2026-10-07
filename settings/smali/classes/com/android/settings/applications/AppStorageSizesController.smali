.class public Lcom/android/settings/applications/AppStorageSizesController;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSizesController$Builder;
    }
.end annotation


# instance fields
.field private final mAppSize:Landroid/support/v7/preference/Preference;

.field private final mCacheSize:Landroid/support/v7/preference/Preference;

.field private mCachedCleared:Z

.field private final mComputing:I

.field private mDataCleared:Z

.field private final mDataSize:Landroid/support/v7/preference/Preference;

.field private final mError:I

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

.field private mLastResultFailed:Z

.field private mLastTotalSize:J

.field private final mTotalSize:Landroid/support/v7/preference/Preference;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V
    .locals 2
    .param p1, "total"    # Landroid/support/v7/preference/Preference;
    .param p2, "app"    # Landroid/support/v7/preference/Preference;
    .param p3, "data"    # Landroid/support/v7/preference/Preference;
    .param p4, "cache"    # Landroid/support/v7/preference/Preference;
    .param p5, "computing"    # I
    .param p6, "error"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    .line 45
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    .line 46
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    .line 47
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    .line 51
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    .line 53
    iput-object p3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    .line 54
    iput-object p4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    .line 55
    iput p5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    .line 56
    iput p6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/preference/Preference;
    .param p2, "x1"    # Landroid/support/v7/preference/Preference;
    .param p3, "x2"    # Landroid/support/v7/preference/Preference;
    .param p4, "x3"    # Landroid/support/v7/preference/Preference;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/android/settings/applications/AppStorageSizesController$1;

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V

    return-void
.end method

.method private getSizeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # J

    .line 132
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    return-object v0
.end method

.method public setCacheCleared(Z)V
    .locals 0
    .param p1, "isCleared"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    .line 113
    return-void
.end method

.method public setDataCleared(Z)V
    .locals 0
    .param p1, "isCleared"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    .line 122
    return-void
.end method

.method public setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    .line 102
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    .line 103
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    .line 104
    return-void
.end method

.method public updateUi(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez v0, :cond_1

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    .line 67
    .local v0, "errorRes":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 71
    .end local v0
    goto/16 :goto_3

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v0

    .line 74
    .local v0, "codeSize":J
    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 75
    .local v5, "dataSize":J
    :goto_1
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_3

    .line 76
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    .line 77
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    :cond_3
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_4

    .line 80
    iput-wide v5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    .line 81
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v3

    nop

    :cond_6
    :goto_2
    move-wide v2, v3

    .line 84
    .local v2, "cacheSize":J
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_7

    .line 85
    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    .line 86
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    :cond_7
    add-long v7, v0, v5

    add-long/2addr v7, v2

    .line 90
    .local v7, "totalSize":J
    iget-wide v9, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_8

    .line 91
    iput-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    .line 92
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v7, v8}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0
    .end local v2
    .end local v5
    .end local v7
    :cond_8
    :goto_3
    return-void
.end method
