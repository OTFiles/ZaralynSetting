.class public Lcom/android/settings/search/DeviceIndexUpdateJobService;
.super Landroid/app/job/JobService;
.source "DeviceIndexUpdateJobService.java"


# instance fields
.field protected mRunningJob:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->updateIndex(Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method protected bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 9
    .param p1, "manager"    # Landroidx/slice/SliceViewManager;
    .param p2, "slice"    # Landroid/net/Uri;

    .line 162
    const/4 v0, 0x1

    new-array v7, v0, [Landroidx/slice/Slice;

    .line 163
    .local v7, "returnSlice":[Landroidx/slice/Slice;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 164
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroidx/slice/SliceViewManager;Landroid/net/Uri;)V

    .line 181
    .local v1, "callback":Landroidx/slice/SliceViewManager$SliceCallback;
    invoke-virtual {p1, p2, v1}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 183
    invoke-virtual {p1, p2}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    .line 185
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 187
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 188
    :goto_0
    const/4 v2, 0x0

    aget-object v2, v7, v2

    return-object v2
.end method

.method protected findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "loadedSlice"    # Landroidx/slice/Slice;
    .param p2, "metaData"    # Landroidx/slice/SliceMetadata;

    .line 136
    new-instance v0, Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    .line 137
    .local v0, "content":Landroidx/slice/widget/ListContent;
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 138
    .local v2, "headerItem":Landroidx/slice/SliceItem;
    if-nez v2, :cond_1

    .line 139
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/slice/SliceItem;

    goto :goto_0

    .line 142
    :cond_0
    return-object v1

    .line 146
    :cond_1
    :goto_0
    const-string v3, "text"

    const-string v4, "title"

    invoke-static {v2, v3, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 147
    .local v3, "title":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 150
    :cond_2
    const-string v4, "text"

    const-string v5, "large"

    invoke-static {v2, v4, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_3

    .line 152
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 154
    :cond_3
    const-string v4, "text"

    invoke-static {v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 155
    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 158
    :cond_4
    return-object v1
.end method

.method protected getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p1, "loadedSlice"    # Landroidx/slice/Slice;

    .line 132
    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getSliceViewManager()Landroidx/slice/SliceViewManager;
    .locals 1

    .line 128
    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    return-object v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    .end local v0
    :cond_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    return v1
.end method

.method protected updateIndex(Landroid/app/job/JobParameters;)V
    .locals 17
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    .line 81
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;

    move-result-object v7

    .line 83
    .local v7, "indexProvider":Lcom/android/settings/search/DeviceIndexFeatureProvider;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getSliceViewManager()Landroidx/slice/SliceViewManager;

    move-result-object v8

    .line 84
    .local v8, "manager":Landroidx/slice/SliceViewManager;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 85
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 86
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 88
    .local v9, "baseUri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 89
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 90
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 92
    .local v10, "platformBaseUri":Landroid/net/Uri;
    invoke-virtual {v8, v9}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v11

    .line 93
    .local v11, "slices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-virtual {v8, v10}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-interface {v7, v6}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->clearIndex(Landroid/content/Context;)V

    .line 101
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 102
    .local v13, "slice":Landroid/net/Uri;
    iget-boolean v0, v6, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual {v6, v8, v13}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v14

    .line 107
    .local v14, "loadedSlice":Landroidx/slice/Slice;
    invoke-virtual {v6, v14}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v15

    .line 108
    .local v15, "metaData":Landroidx/slice/SliceMetadata;
    invoke-virtual {v6, v14, v15}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 109
    .local v16, "title":Ljava/lang/CharSequence;
    if-eqz v16, :cond_1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.VIEW_SLICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slice"

    .line 116
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->createDeepLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 118
    invoke-virtual {v15}, Landroidx/slice/SliceMetadata;->getSliceKeywords()Ljava/util/List;

    move-result-object v5

    .line 113
    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    .line 120
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 125
    return-void
.end method
