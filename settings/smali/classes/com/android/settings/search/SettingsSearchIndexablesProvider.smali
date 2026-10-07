.class public Lcom/android/settings/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field private static final INVALID_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    .line 83
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 190
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 193
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 194
    .local v4, "startTime":J
    invoke-static {v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v6

    .line 199
    .local v6, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_start_0
    invoke-interface {v6, p1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 212
    .local v7, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 211
    nop

    .line 214
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    goto :goto_0

    .line 222
    :cond_1
    sget-object v8, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 223
    const-string v8, "SettingsSearchProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " tried to add an empty non-indexable key"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    goto :goto_0

    .line 200
    .restart local v3
    .restart local v4
    .restart local v6
    :catch_0
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "debug.com.android.settings.search.crash_on_error"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 210
    const-string v8, "SettingsSearchProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to get non-indexable keys from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    goto :goto_0

    .line 208
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 235
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    :cond_4
    return-object v1
.end method

.method private getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 269
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 272
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v4

    .line 274
    .local v4, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 277
    .local v5, "providerRaws":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    if-nez v5, :cond_0

    .line 278
    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/search/SearchIndexableRaw;

    .line 284
    .local v7, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 286
    .end local v7
    goto :goto_1

    .line 287
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 290
    :cond_2
    return-object v1
.end method

.method private getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 241
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "resourceList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 244
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v4

    .line 247
    .local v4, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    const/4 v5, 0x1

    .line 248
    invoke-interface {v4, p1, v5}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-nez v5, :cond_0

    .line 251
    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/SearchIndexableResource;

    .line 255
    .local v7, "item":Landroid/provider/SearchIndexableResource;
    iget-object v8, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 256
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 257
    :cond_1
    iget-object v8, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    :goto_2
    iput-object v8, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 258
    .end local v7
    goto :goto_1

    .line 260
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 263
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;

    .line 144
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "nik":Ljava/lang/String;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 148
    .local v4, "ref":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 149
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 150
    .end local v3
    .end local v4
    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 115
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "raws":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchIndexableRaw;

    .line 117
    .local v3, "val":Lcom/android/settings/search/SearchIndexableRaw;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    .local v4, "ref":[Ljava/lang/Object;
    const/4 v5, 0x1

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 119
    const/4 v5, 0x2

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 120
    const/4 v5, 0x3

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 121
    const/4 v5, 0x4

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 122
    const/4 v5, 0x5

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 123
    const/4 v5, 0x6

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 124
    const/4 v5, 0x7

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 125
    const/16 v5, 0x8

    iget v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 126
    const/16 v5, 0x9

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 127
    const/16 v5, 0xa

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 128
    const/16 v5, 0xb

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 129
    const/16 v5, 0xc

    iget-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 130
    const/16 v5, 0xd

    iget v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 131
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 132
    .end local v3
    .end local v4
    goto :goto_0

    .line 134
    :cond_0
    return-object v0
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 11

    .line 157
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 158
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 164
    .local v4, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    sget-object v5, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 165
    .local v5, "parentClass":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 166
    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 170
    .local v7, "tile":Lcom/android/settingslib/drawer/Tile;
    const/4 v8, 0x0

    .line 171
    .local v8, "childClass":Ljava/lang/String;
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    .line 172
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    :cond_1
    if-nez v8, :cond_2

    .line 176
    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    const-string v10, "parent_class"

    .line 179
    invoke-virtual {v9, v10, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    const-string v10, "child_class"

    .line 180
    invoke-virtual {v9, v10, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 181
    .end local v7
    .end local v8
    goto :goto_1

    .line 182
    .end local v4
    .end local v5
    :cond_3
    goto :goto_0

    .line 184
    :cond_4
    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 95
    .local v0, "cursor":Landroid/database/MatrixCursor;
    nop

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "resources":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableResource;

    .line 98
    .local v3, "val":Landroid/provider/SearchIndexableResource;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    .local v4, "ref":[Ljava/lang/Object;
    const/4 v5, 0x0

    iget v6, v3, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 100
    const/4 v5, 0x1

    iget v6, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 101
    const/4 v5, 0x2

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 102
    const/4 v5, 0x3

    iget v6, v3, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 103
    const/4 v5, 0x4

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 104
    const/4 v5, 0x5

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 105
    const/4 v5, 0x6

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 106
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 107
    .end local v3
    .end local v4
    goto :goto_0

    .line 109
    :cond_0
    return-object v0
.end method
