.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 951
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 952
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1223
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 953
    return-void
.end method

.method private getCombinedSessionFlags(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1214
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1215
    const/4 v1, 0x0

    .line 1216
    .local v1, "flags":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1217
    .local v3, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v4

    or-int/2addr v1, v4

    .line 1218
    .end local v3
    goto :goto_0

    .line 1219
    :cond_0
    monitor-exit v0

    return v1

    .line 1220
    .end local v1
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 4

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1171
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1168
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1173
    .local v0, "stats":Landroid/app/usage/StorageStats;
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1176
    .local v1, "legacy":Landroid/content/pm/PackageStats;
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1177
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1178
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 1180
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V

    .line 1183
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v2

    .line 1190
    .end local v0
    .end local v1
    :goto_0
    goto :goto_1

    .line 1184
    :catch_1
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :try_start_2
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V

    .line 1189
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1188
    :catch_2
    move-exception v1

    .line 1192
    .end local v0
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 958
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 959
    .local v3, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v4

    .line 960
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 962
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 964
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :cond_0
    :try_start_1
    monitor-exit v4

    .line 965
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 966
    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 967
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 966
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 971
    .end local v4
    :cond_1
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    move-result v4

    .line 973
    .local v4, "flags":I
    iget v5, v2, Landroid/os/Message;->what:I

    const/high16 v6, 0x800000

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_0

    .line 1211
    move-object/from16 v23, v3

    .end local v3
    .local v23, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    goto/16 :goto_10

    .line 1137
    .end local v23
    .restart local v3
    :pswitch_0    # 0x7
    invoke-static {v4, v12}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1138
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1140
    :try_start_2
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1143
    monitor-exit v5

    return-void

    .line 1146
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1147
    .local v7, "now":J
    move v9, v0

    .local v9, "i":I
    :goto_1
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 1148
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1149
    .local v10, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v12, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v12, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x1

    cmp-long v11, v11, v16

    if-eqz v11, :cond_3

    iget-boolean v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v11, :cond_7

    .line 1151
    :cond_3
    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-eqz v0, :cond_4

    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v15, 0x4e20

    sub-long v15, v7, v15

    cmp-long v0, v11, v15

    if-gez v0, :cond_6

    .line 1153
    :cond_4
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_5

    .line 1154
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1155
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1156
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1155
    invoke-virtual {v0, v13, v6}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1157
    .local v0, "m":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1159
    .end local v0
    :cond_5
    iput-wide v7, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1160
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1161
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1162
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iput v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1165
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v6, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;

    invoke-direct {v6, v1}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v0, v6}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    :cond_6
    monitor-exit v5

    return-void

    .line 1147
    .end local v10
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1199
    .end local v9
    :cond_8
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1200
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1201
    iput-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1202
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1202
    invoke-virtual {v6, v13, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1204
    .restart local v0
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1207
    .end local v0
    .end local v7
    :cond_9
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1211
    .end local v3
    .restart local v23
    :cond_a
    :goto_2
    move-object/from16 v23, v3

    goto/16 :goto_10

    .line 1102
    .end local v23
    .restart local v3
    :pswitch_1    # 0x6
    invoke-static {v4, v10}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1103
    const/4 v5, 0x0

    .line 1104
    .local v5, "numDone":I
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1106
    nop

    .local v0, "i":I
    :goto_3
    move v7, v0

    .end local v0
    .local v7, "i":I
    :try_start_3
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_f

    if-ge v5, v10, :cond_f

    .line 1107
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object v11, v0

    .line 1108
    .local v11, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v0, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-boolean v0, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_e

    .line 1109
    :cond_b
    monitor-enter v11

    .line 1110
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v11, v0, v12}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1111
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_c

    .line 1112
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1113
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1114
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1113
    invoke-virtual {v0, v13, v12}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1115
    .local v0, "m":Landroid/os/Message;
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1117
    .end local v0
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 1119
    :cond_d
    monitor-exit v11

    .line 1106
    .end local v11
    :cond_e
    add-int/lit8 v0, v7, 0x1

    .end local v7
    .local v0, "i":I
    goto :goto_3

    .line 1119
    .end local v0
    .restart local v7
    .restart local v11
    :catchall_1
    move-exception v0

    monitor-exit v11

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1123
    .end local v7
    .end local v11
    :cond_f
    monitor-exit v6

    .line 1124
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-lez v5, :cond_10

    .line 1125
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1126
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1129
    :cond_10
    if-lt v5, v10, :cond_11

    .line 1130
    invoke-virtual {v1, v13}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1131
    goto :goto_2

    .line 1123
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v6

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1134
    .end local v5
    :cond_11
    invoke-virtual {v1, v8}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1135
    goto/16 :goto_2

    .line 1047
    :pswitch_2    # 0x5 0x4
    iget v5, v2, Landroid/os/Message;->what:I

    if-ne v5, v12, :cond_12

    .line 1048
    invoke-static {v4, v7}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    iget v5, v2, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_18

    const/16 v5, 0x10

    .line 1050
    invoke-static {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1052
    :cond_13
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1053
    .local v5, "launchIntent":Landroid/content/Intent;
    iget v6, v2, Landroid/os/Message;->what:I

    if-ne v6, v12, :cond_14

    .line 1054
    const-string v6, "android.intent.category.LAUNCHER"

    goto :goto_4

    :cond_14
    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    .line 1053
    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    move v6, v0

    .local v6, "i":I
    :goto_5
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 1056
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1063
    .local v7, "userId":I
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v10, 0xc0200

    invoke-virtual {v9, v5, v10, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1070
    .local v9, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1072
    :try_start_7
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 1073
    .local v11, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v18, v16

    .line 1074
    .local v18, "N":I
    move/from16 v16, v0

    .local v16, "j":I
    :goto_6
    move/from16 v19, v16

    .end local v16
    .local v19, "j":I
    move/from16 v15, v18

    move/from16 v0, v19

    if-ge v0, v15, :cond_16

    .line 1075
    .end local v18
    .end local v19
    .local v0, "j":I
    .local v15, "N":I
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v16

    .line 1076
    .local v21, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v13, v21

    iget-object v12, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v21
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1077
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v22, v16

    .line 1078
    .local v22, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    move-object/from16 v8, v22

    if-eqz v8, :cond_15

    .line 1079
    .end local v22
    .local v8, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_start_8
    iput-boolean v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 1080
    iget-boolean v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v23, v3

    :try_start_9
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v3
    .restart local v23
    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v3, v14

    iput-boolean v3, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    .line 1074
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v24, v5

    goto :goto_7

    .line 1088
    .end local v0
    .end local v8
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_8

    .end local v23
    .restart local v3
    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3
    .restart local v23
    goto :goto_8

    .line 1083
    .end local v23
    .restart local v0
    .restart local v3
    .restart local v8
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v15
    :cond_15
    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    :try_start_a
    const-string v3, "ApplicationsState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v24, v5

    :try_start_b
    const-string v5, "Cannot find pkg: "

    .end local v5
    .local v24, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on user "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v8
    .end local v12
    .end local v13
    :goto_7
    add-int/lit8 v16, v0, 0x1

    .end local v0
    .restart local v16
    move/from16 v18, v15

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v8, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_6

    .line 1088
    .end local v11
    .end local v15
    .end local v16
    .end local v24
    .restart local v5
    :catchall_5
    move-exception v0

    move-object/from16 v24, v5

    .end local v5
    .restart local v24
    goto :goto_8

    .end local v23
    .end local v24
    .restart local v3
    .restart local v5
    :cond_16
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3
    .end local v5
    .restart local v23
    .restart local v24
    monitor-exit v10

    .line 1055
    .end local v7
    .end local v9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v8, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto/16 :goto_5

    .line 1088
    .end local v23
    .end local v24
    .restart local v3
    .restart local v5
    .restart local v7
    .restart local v9
    :catchall_6
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3
    .end local v5
    .restart local v23
    .restart local v24
    :goto_8
    monitor-exit v10

    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_8

    .line 1091
    .end local v6
    .end local v7
    .end local v9
    .end local v23
    .end local v24
    .restart local v3
    .restart local v5
    :cond_17
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3
    .end local v5
    .restart local v23
    .restart local v24
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1092
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .end local v24
    goto :goto_9

    .line 1095
    .end local v23
    .restart local v3
    :cond_18
    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    :cond_19
    :goto_9
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    .line 1096
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    .line 1098
    :cond_1a
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1100
    goto/16 :goto_10

    .line 1023
    .end local v23
    .restart local v3
    :pswitch_3    # 0x3
    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1025
    .local v3, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1026
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1027
    :try_start_c
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1028
    .local v0, "entryCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    move/from16 v6, v20

    .end local v20
    .restart local v6
    if-ge v6, v0, :cond_1d

    .line 1030
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 1032
    .local v7, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1033
    .local v9, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1034
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1035
    .local v11, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v11, :cond_1b

    .line 1036
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    .line 1038
    .end local v9
    .end local v10
    .end local v11
    :cond_1b
    goto :goto_b

    .line 1028
    .end local v7
    :cond_1c
    add-int/lit8 v20, v6, 0x1

    .end local v6
    .restart local v20
    goto :goto_a

    .line 1041
    .end local v0
    .end local v20
    :cond_1d
    monitor-exit v5

    goto :goto_c

    :catchall_8
    move-exception v0

    monitor-exit v5

    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    .line 1043
    .end local v3
    :cond_1e
    :goto_c
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1044
    goto/16 :goto_10

    .line 978
    .end local v23
    .local v3, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_4    # 0x2
    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    const/4 v0, 0x0

    .line 979
    .local v0, "numDone":I
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 981
    move v5, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v5, "numDone":I
    :goto_d
    :try_start_d
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_23

    const/4 v8, 0x6

    if-ge v5, v8, :cond_23

    .line 982
    iget-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_1f

    .line 983
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 984
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 985
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 984
    const/4 v8, 0x6

    invoke-virtual {v11, v8, v12}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v8, v11

    .line 986
    .local v8, "m":Landroid/os/Message;
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v8}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 988
    .end local v8
    :cond_1f
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 989
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 990
    .local v11, "userId":I
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_20

    .line 991
    add-int/lit8 v5, v5, 0x1

    .line 992
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v12, v8}, Lcom/android/settingslib/applications/ApplicationsState;->access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 994
    :cond_20
    if-eqz v11, :cond_22

    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-ltz v12, :cond_21

    .line 1002
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1003
    .local v12, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v12, :cond_22

    iget-object v13, v12, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v13, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v13

    if-nez v13, :cond_22

    .line 1005
    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v8
    .end local v11
    .end local v12
    goto :goto_e

    .line 981
    :cond_21
    move v14, v13

    goto :goto_e

    :cond_22
    const/4 v14, 0x0

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1011
    .end local v0
    :cond_23
    monitor-exit v3

    .line 1013
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    const/4 v0, 0x6

    if-lt v5, v0, :cond_24

    .line 1014
    invoke-virtual {v1, v10}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 1016
    :cond_24
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1017
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1019
    :cond_25
    invoke-virtual {v1, v9}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1021
    .end local v5
    :goto_f
    goto :goto_10

    .line 1011
    .restart local v5
    :catchall_9
    move-exception v0

    :try_start_e
    monitor-exit v3

    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    .line 975
    .end local v5
    .end local v23
    .restart local v3
    :pswitch_5    # 0x1
    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildAsync:Z

    .line 976
    nop

    .line 1211
    :goto_10
    return-void

    .line 964
    .end local v4
    .end local v23
    .restart local v3
    :catchall_a
    move-exception v0

    move-object/from16 v23, v3

    .end local v3
    .restart local v23
    goto :goto_11

    .end local v23
    .restart local v3
    :catchall_b
    move-exception v0

    :goto_11
    :try_start_f
    monitor-exit v4

    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method
