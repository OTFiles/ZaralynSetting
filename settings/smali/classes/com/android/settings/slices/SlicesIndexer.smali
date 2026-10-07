.class Lcom/android/settings/slices/SlicesIndexer;
.super Ljava/lang/Object;
.source "SlicesIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    .line 49
    return-void
.end method


# virtual methods
.method getSliceData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 94
    invoke-interface {v0, v1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceDataConverter;->getSliceData()Ljava/util/List;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method protected indexSliceData()V
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isSliceDataIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "SlicesIndexer"

    const-string v1, "Slices already indexed - returning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 73
    .local v1, "startTime":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    iget-object v3, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iget-object v4, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/slices/SlicesDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->getSliceData()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "indexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/slices/SlicesIndexer;->insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 79
    iget-object v4, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setIndexedState()V

    .line 82
    const-string v4, "SlicesIndexer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Indexing slices database took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 86
    .end local v1
    .end local v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "indexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceData;

    .line 103
    .local v1, "dataRow":Lcom/android/settings/slices/SliceData;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "title"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "summary"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "screentitle"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "keywords"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "icon"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v3, "fragment"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "controller"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "platform_slice"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->isPlatformDefined()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    const-string v3, "slice_type"

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v3, "slices_index"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 117
    .end local v1
    goto/16 :goto_0

    .line 118
    .end local v2
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    .line 57
    return-void
.end method
