.class public Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;
    }
.end annotation


# static fields
.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "CachedStorageValues"


# instance fields
.field private final mClobberThreshold:Ljava/lang/Long;

.field protected mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "CachedStorageValues"

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    .line 59
    iput p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    .line 60
    nop

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "storage_settings_clobber_threshold"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 64
    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 61
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method private isDataValid()Z
    .locals 11

    .line 156
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 157
    .local v0, "cachedUserId":I
    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 158
    return v2

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_query_timestamp"

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 162
    .local v3, "lastQueryTime":J
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v5

    .line 163
    .local v5, "currentTime":J
    sub-long v7, v5, v3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-gez v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method public cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V
    .locals 4
    .param p1, "storageInfo"    # Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .param p2, "result"    # Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "free_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 137
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 138
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "game_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 139
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "music_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 140
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 141
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    .line 142
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "other_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    .line 143
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_apps_size"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    .line 144
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_total_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    .line 145
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_audio_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    .line 146
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_video_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    .line 147
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_image_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    .line 148
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_apps_bytes"

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    .line 149
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    .line 150
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_query_timestamp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    .line 151
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public getCachedAppsStorageResult()Landroid/util/SparseArray;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 82
    return-object v2

    .line 84
    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "game_apps_size"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 85
    .local v6, "gamesSize":J
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "music_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 86
    .local v8, "musicAppsSize":J
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "video_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 87
    .local v10, "videoAppsSize":J
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "photo_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 88
    .local v12, "photoAppSize":J
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "other_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 89
    .local v14, "otherAppsSize":J
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cache_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 90
    .local v2, "cacheSize":J
    const-wide/16 v16, 0x0

    cmp-long v1, v6, v16

    if-ltz v1, :cond_4

    cmp-long v1, v8, v16

    if-ltz v1, :cond_4

    cmp-long v1, v10, v16

    if-ltz v1, :cond_4

    cmp-long v1, v12, v16

    if-ltz v1, :cond_4

    cmp-long v1, v14, v16

    if-ltz v1, :cond_4

    cmp-long v1, v2, v16

    if-gez v1, :cond_1

    .line 96
    move-object v1, v0

    move-wide/from16 v46, v2

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v18, v2

    const-string v2, "external_total_bytes"

    .end local v2
    .local v18, "cacheSize":J
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 100
    .local v1, "externalTotalBytes":J
    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v31, v14

    const-string v14, "external_audio_bytes"

    .end local v14
    .local v31, "otherAppsSize":J
    invoke-interface {v3, v14, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 101
    .local v14, "externalAudioBytes":J
    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v33, v12

    const-string v12, "external_video_bytes"

    .end local v12
    .local v33, "photoAppSize":J
    invoke-interface {v3, v12, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 102
    .local v12, "externalVideoBytes":J
    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v35, v10

    const-string v10, "external_image_bytes"

    .end local v10
    .local v35, "videoAppsSize":J
    invoke-interface {v3, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 103
    .local v10, "externalImageBytes":J
    iget-object v3, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "external_apps_bytes"

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 104
    .local v3, "externalAppBytes":J
    cmp-long v0, v1, v16

    if-ltz v0, :cond_3

    cmp-long v0, v14, v16

    if-ltz v0, :cond_3

    cmp-long v0, v12, v16

    if-ltz v0, :cond_3

    cmp-long v0, v10, v16

    if-ltz v0, :cond_3

    cmp-long v0, v3, v16

    if-gez v0, :cond_2

    .line 109
    move-wide/from16 v37, v1

    move-wide/from16 v46, v18

    move-wide/from16 v43, v31

    move-wide/from16 v41, v33

    move-wide/from16 v39, v35

    move-object/from16 v1, p0

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v20, v0

    move-wide/from16 v21, v1

    move-wide/from16 v23, v14

    move-wide/from16 v25, v12

    move-wide/from16 v27, v10

    move-wide/from16 v29, v3

    invoke-direct/range {v20 .. v30}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(JJJJJ)V

    .line 119
    .local v0, "externalStats":Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    new-instance v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    .line 121
    .local v5, "result":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    iput-wide v6, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 122
    iput-wide v8, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 123
    move-wide/from16 v37, v1

    move-wide/from16 v1, v35

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 124
    .end local v35
    .local v1, "videoAppsSize":J
    .local v37, "externalTotalBytes":J
    move-wide/from16 v39, v1

    move-wide/from16 v1, v33

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    .line 125
    .end local v33
    .local v1, "photoAppSize":J
    .local v39, "videoAppsSize":J
    move-wide/from16 v41, v1

    move-wide/from16 v1, v31

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    .line 126
    .end local v31
    .local v1, "otherAppsSize":J
    .local v41, "photoAppSize":J
    move-wide/from16 v43, v1

    move-wide/from16 v1, v18

    iput-wide v1, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    .line 127
    .end local v18
    .local v1, "cacheSize":J
    .local v43, "otherAppsSize":J
    iput-object v0, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    .line 128
    move-object/from16 v45, v0

    new-instance v0, Landroid/util/SparseArray;

    .end local v0
    .local v45, "externalStats":Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 129
    .local v0, "resultArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    move-wide/from16 v46, v1

    move-object/from16 v1, p0

    iget v2, v1, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    .end local v1
    .local v46, "cacheSize":J
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 130
    return-object v0

    .line 109
    .end local v0
    .end local v5
    .end local v37
    .end local v39
    .end local v41
    .end local v43
    .end local v45
    .end local v46
    .local v1, "externalTotalBytes":J
    .restart local v18
    .restart local v31
    .restart local v33
    .restart local v35
    :cond_3
    move-wide/from16 v37, v1

    move-wide/from16 v46, v18

    move-wide/from16 v43, v31

    move-wide/from16 v41, v33

    move-wide/from16 v39, v35

    move-object/from16 v1, p0

    .end local v1
    .end local v18
    .end local v31
    .end local v33
    .end local v35
    .restart local v37
    .restart local v39
    .restart local v41
    .restart local v43
    .restart local v46
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 96
    .end local v3
    .end local v37
    .end local v39
    .end local v41
    .end local v43
    .end local v46
    .restart local v2
    .local v10, "videoAppsSize":J
    .local v12, "photoAppSize":J
    .local v14, "otherAppsSize":J
    :cond_4
    move-object v1, v0

    move-wide/from16 v46, v2

    move-wide/from16 v39, v10

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    const/4 v0, 0x0

    .end local v2
    .end local v10
    .end local v12
    .end local v14
    .restart local v39
    .restart local v41
    .restart local v43
    .restart local v46
    :goto_1
    return-object v0
.end method

.method public getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    .line 68
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "free_bytes"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 72
    .local v5, "freeBytes":J
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "total_bytes"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    .local v2, "totalBytes":J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    cmp-long v0, v2, v7

    if-gez v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v0

    .line 74
    :cond_2
    :goto_0
    return-object v1
.end method
