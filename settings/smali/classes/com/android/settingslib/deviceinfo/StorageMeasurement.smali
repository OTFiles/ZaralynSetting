.class public Lcom/android/settingslib/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStats:Landroid/app/usage/StorageStatsManager;

.field private final mUser:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "sharedVolume"    # Landroid/os/storage/VolumeInfo;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 116
    iput-object p2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 117
    iput-object p3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 45
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 238
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 239
    return-void
.end method

.method private measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 18

    .line 154
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 158
    .local v3, "start":J
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    move-object v5, v0

    .line 159
    .local v5, "details":Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    return-object v5

    .line 161
    :cond_0
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 163
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 164
    return-object v5

    .line 168
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 169
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 174
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 177
    .local v6, "finishTotal":J
    const-string v0, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Measured total storage in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v6, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 181
    .local v9, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 182
    .local v10, "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    :try_start_1
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v11, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    iget-object v11, v11, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    .line 187
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 186
    invoke-virtual {v0, v11, v12}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v0

    .line 191
    .local v0, "stats":Landroid/app/usage/ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    .line 190
    nop

    .line 193
    iget-object v11, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 196
    sget-object v11, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v11, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v11, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 201
    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 202
    .local v11, "miscBytes":J
    iget-object v13, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13, v14, v11, v12}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 203
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    goto :goto_0

    .line 188
    .restart local v9
    .restart local v10
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "StorageMeasurement"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    goto :goto_0

    .line 206
    .end local v0
    .end local v9
    .end local v10
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 207
    .local v8, "finishShared":J
    const-string v0, "StorageMeasurement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Measured shared storage in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v8, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    move-object v11, v0

    .line 213
    .local v11, "user":Landroid/content/pm/UserInfo;
    :try_start_2
    iget-object v0, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v12, v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v12, v12, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/app/usage/StorageStatsManager;->queryStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 217
    .local v0, "stats":Landroid/app/usage/StorageStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    .line 216
    nop

    .line 220
    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 221
    iget-object v12, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 224
    :cond_3
    iget-object v12, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 225
    iget-object v12, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v14

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 227
    iget-wide v12, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v5, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 228
    .end local v0
    .end local v11
    goto :goto_1

    .line 214
    .restart local v11
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "StorageMeasurement"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    goto :goto_1

    .line 231
    .end local v0
    .end local v11
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 232
    .local v10, "finishPrivate":J
    const-string v0, "StorageMeasurement"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Measured private storage in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v10, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v5

    .line 170
    .end local v6
    .end local v8
    .end local v10
    :catch_2
    move-exception v0

    .line 172
    .restart local v0
    const-string v6, "StorageMeasurement"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return-object v5
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measure()V

    .line 128
    return-void
.end method

.method public measure()V
    .locals 2

    .line 131
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;-><init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;Lcom/android/settingslib/deviceinfo/StorageMeasurement$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 136
    return-void
.end method

.method public setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 124
    :cond_1
    return-void
.end method
