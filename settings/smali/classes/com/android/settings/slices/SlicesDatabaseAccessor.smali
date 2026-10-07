.class public Lcom/android/settings/slices/SlicesDatabaseAccessor;
.super Ljava/lang/Object;
.source "SlicesDatabaseAccessor.java"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;


# instance fields
.field private final TRUE:I

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "platform_slice"

    const-string v9, "slice_type"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->TRUE:I

    .line 62
    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    .line 64
    return-void
.end method

.method private buildKeyMatchWhereClause()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " = ?"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method private buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isIntentOnly"    # Z

    .line 150
    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "key":Ljava/lang/String;
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "title":Ljava/lang/String;
    const-string v2, "summary"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "summary":Ljava/lang/String;
    const-string v3, "screentitle"

    .line 154
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 153
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "screenTitle":Ljava/lang/String;
    const-string v4, "keywords"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "keywords":Ljava/lang/String;
    const-string v5, "icon"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 157
    .local v5, "iconResource":I
    const-string v6, "fragment"

    .line 158
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 157
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "fragmentClassName":Ljava/lang/String;
    const-string v7, "controller"

    .line 160
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 159
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "controllerClassName":Ljava/lang/String;
    const-string v8, "platform_slice"

    .line 162
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 161
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    move v8, v9

    .line 163
    .local v8, "isPlatformDefined":Z
    const-string v9, "slice_type"

    .line 164
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 163
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 166
    .local v9, "sliceType":I
    if-eqz p3, :cond_1

    .line 167
    const/4 v9, 0x0

    .line 170
    :cond_1
    new-instance v10, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v10}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 171
    invoke-virtual {v10, v0}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 172
    invoke-virtual {v10, v1}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 173
    invoke-virtual {v10, v2}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 174
    invoke-virtual {v10, v3}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 175
    invoke-virtual {v10, v4}, Lcom/android/settings/slices/SliceData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 176
    invoke-virtual {v10, v5}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 177
    invoke-virtual {v10, v6}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 178
    invoke-virtual {v10, v7}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 179
    invoke-virtual {v10, p2}, Lcom/android/settings/slices/SliceData$Builder;->setUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 180
    invoke-virtual {v10, v8}, Lcom/android/settings/slices/SliceData$Builder;->setPlatformDefined(Z)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 181
    invoke-virtual {v10, v9}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v10

    .line 182
    invoke-virtual {v10}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v10

    .line 170
    return-object v10
.end method

.method private getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildKeyMatchWhereClause()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "whereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 124
    .local v9, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 125
    .local v4, "selection":[Ljava/lang/String;
    const-string v1, "slices_index"

    sget-object v2, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v3, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    .local v0, "resultCursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 130
    .local v1, "numResults":I
    if-eqz v1, :cond_1

    .line 134
    if-gt v1, v10, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    return-object v0

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should not match more than 1 slice with path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Slices key from path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private verifyIndexing()V
    .locals 4

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    .local v0, "uidToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/slices/SlicesFeatureProvider;->indexSliceData(Landroid/content/Context;)V

    .line 191
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public getSliceDataFromKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;

    move-result-object v1

    return-object v1
.end method

.method public getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 73
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 74
    .local v0, "pathData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;

    move-result-object v2

    return-object v2
.end method

.method public getSliceKeys(Z)Ljava/util/List;
    .locals 10
    .param p1, "isPlatformSlice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v0, "platform_slice = 1"

    .line 98
    .local v4, "whereClause":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    goto :goto_1

    .end local v4
    :cond_0
    const-string v0, "platform_slice = 0"

    goto :goto_0

    .line 101
    .restart local v4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "key"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "columns":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 105
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "slices_index"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "resultCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    .line 108
    nop

    .line 114
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return-object v9

    .line 112
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 114
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v1
    :cond_3
    return-object v9

    .line 114
    .restart local v1
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 105
    :catch_0
    move-exception v2

    :try_start_2
    throw v2

    .line 114
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v5
.end method
