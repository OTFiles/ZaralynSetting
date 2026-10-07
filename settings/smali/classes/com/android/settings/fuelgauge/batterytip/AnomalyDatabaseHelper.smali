.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnomalyDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    const-string v0, "battery_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 106
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    const-string v0, "CREATE TABLE anomaly(uid INTEGER NOT NULL, package_name TEXT, anomaly_type INTEGER NOT NULL, anomaly_state INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (uid,anomaly_type,anomaly_state,time_stamp_ms))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "BatteryDatabaseHelper"

    const-string v1, "Bootstrapped database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    const-string v0, "DROP TABLE IF EXISTS anomaly"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    .line 101
    :cond_0
    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 97
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 130
    const-string v0, "BatteryDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 120
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 121
    const-string v0, "BatteryDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    :cond_0
    return-void
.end method

.method public reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    return-void
.end method
