.class public Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
.super Ljava/lang/Object;
.source "BatteryDatabaseManager.java"


# static fields
.field private static sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;


# instance fields
.field private mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteAllAnomaliesBeforeTimeStamp(J)V
    .locals 7
    .param p1, "timestampMs"    # J

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 129
    :try_start_1
    const-string v2, "anomaly"

    const-string v3, "time_stamp_ms < ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 130
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 129
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 132
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    .line 131
    .restart local v0
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    :try_start_3
    throw v1

    .line 131
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2

    .line 127
    .end local v0
    .end local p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized insertAnomaly(ILjava/lang/String;IIJ)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "anomalyState"    # I
    .param p5, "timestampMs"    # J

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "anomaly_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v3, "anomaly_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v3, "time_stamp_ms"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v3, "anomaly"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 87
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 86
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return v3

    .line 87
    .end local v2
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    :try_start_3
    throw v1

    .line 87
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2

    .line 78
    .end local v0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized queryAllAnomalies(JI)Ljava/util/List;
    .locals 16
    .param p1, "timestampMsAfter"    # J
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 95
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v0

    .line 96
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    :try_start_1
    const-string v0, "package_name"

    const-string v3, "anomaly_type"

    const-string v4, "uid"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "projection":[Ljava/lang/String;
    const-string v0, "time_stamp_ms DESC"

    move-object v13, v0

    .line 98
    .local v13, "orderBy":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    .line 99
    .local v14, "mAppInfoBuilders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;>;"
    const-string v0, "time_stamp_ms > ? AND anomaly_state = ? "

    move-object v15, v0

    .line 100
    .local v15, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x1

    .line 101
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    .line 103
    .local v7, "selectionArgs":[Ljava/lang/String;
    const-string v4, "anomaly"

    const-string v6, "time_stamp_ms > ? AND anomaly_state = ? "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "time_stamp_ms DESC"

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v3, v0

    .line 105
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "uid"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 107
    .local v0, "uid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    .line 109
    invoke-virtual {v4, v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v4

    const-string v6, "package_name"

    .line 111
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v4

    .line 112
    .local v4, "builder":Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v4
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    const-string v6, "anomaly_type"

    .line 115
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 114
    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->addAnomalyType(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 116
    .end local v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-static {v12, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 119
    .end local v3
    :cond_2
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 120
    .local v3, "uid":Ljava/lang/Integer;
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 122
    .end local v5
    .end local v7
    .end local v13
    .end local v14
    .end local v15
    :cond_3
    if-eqz v11, :cond_4

    :try_start_4
    invoke-static {v12, v11}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 124
    .end local v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    monitor-exit p0

    return-object v2

    .line 117
    .local v3, "cursor":Landroid/database/Cursor;
    .restart local v5
    .restart local v7
    .restart local v11
    .restart local v13
    .restart local v14
    .restart local v15
    :catchall_0
    move-exception v0

    move-object v4, v12

    goto :goto_2

    .line 103
    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_5
    throw v4

    .line 117
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_5

    :try_start_6
    invoke-static {v4, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v0

    .line 122
    .end local v3
    .end local v5
    .end local v7
    .end local v13
    .end local v14
    .end local v15
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 95
    :catch_1
    move-exception v0

    move-object v12, v0

    :try_start_7
    throw v12

    .line 122
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    if-eqz v11, :cond_6

    :try_start_8
    invoke-static {v12, v11}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v0

    .line 93
    .end local v2
    .end local v11
    .end local p1
    .end local p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized updateAnomalies(Ljava/util/List;I)V
    .locals 10
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;I)V"
        }
    .end annotation

    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 144
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 148
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "anomaly_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v5, "anomaly"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package_name IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "?"

    invoke-static {v8, v9}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 150
    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    .end local v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {v3, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    .line 147
    :catch_0
    move-exception v3

    :try_start_3
    throw v3

    .line 152
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-static {v3, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4

    .line 154
    .end local v0
    .end local v1
    .end local v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 140
    .end local p1
    .end local p2
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
