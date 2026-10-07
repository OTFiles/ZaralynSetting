.class public Lcom/android/settings/applications/RunningProcessesViewOLD;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesViewOLD.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
    }
.end annotation


# instance fields
.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;

.field mAppsProcessPrefix:Landroid/widget/TextView;

.field mAppsProcessText:Landroid/widget/TextView;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Landroid/widget/ProgressBar;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessPrefix:Landroid/widget/TextView;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Lcom/android/settings/SettingsPreferenceFragment;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mActiveItems:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mBuilder:Ljava/lang/StringBuilder;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurTotalRam:J

    .line 89
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurHighRam:J

    .line 90
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurMedRam:J

    .line 91
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurLowRam:J

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurShowCached:Z

    .line 96
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMyUserId:I

    .line 432
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3
    .param p1, "mi"    # Lcom/android/settings/applications/RunningState$MergedItem;

    .line 406
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "uid"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const-string v1, "process"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    const-string v1, "user_id"

    iget v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string v1, "background"

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAdapter:Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/RunningServiceDetails;

    .line 417
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120c13

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    .line 420
    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 423
    .end local v0
    :cond_1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 398
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 399
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 400
    .local v1, "mi":Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 401
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesViewOLD;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 402
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .line 507
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_0    # 0x2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->refreshUi(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->updateTimes()V

    goto :goto_0

    .line 512
    :pswitch_1    # 0x1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->refreshUi(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->updateTimes()V

    .line 514
    goto :goto_0

    .line 509
    :pswitch_2    # 0x0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->updateTimes()V

    .line 510
    nop

    .line 520
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 18
    .param p1, "dataChanged"    # Z

    move-object/from16 v1, p0

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAdapter:Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;

    .line 320
    .local v0, "adapter":Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->refreshItems()V

    .line 321
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->notifyDataSetChanged()V

    .line 324
    .end local v0
    :cond_0
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mDataAvail:Ljava/lang/Runnable;

    .line 329
    :cond_1
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 341
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    :try_start_0
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurShowCached:Z

    iget-object v4, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAdapter:Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;

    iget-boolean v4, v4, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, v4, :cond_3

    .line 343
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAdapter:Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mShowBackground:Z

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurShowCached:Z

    .line 344
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurShowCached:Z

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    .line 360
    .local v4, "totalRam":J
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurShowCached:Z

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 362
    .local v6, "lowRam":J
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .local v8, "medRam":J
    goto :goto_1

    .line 364
    .end local v6
    .end local v8
    :cond_4
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    add-long/2addr v6, v8

    .line 366
    .restart local v6
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 369
    .restart local v8
    :goto_1
    sub-long v10, v4, v8

    sub-long/2addr v10, v6

    .line 371
    .local v10, "highRam":J
    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurTotalRam:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurHighRam:J

    cmp-long v0, v12, v10

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurMedRam:J

    cmp-long v0, v12, v8

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurLowRam:J

    cmp-long v0, v12, v6

    if-eqz v0, :cond_6

    .line 373
    :cond_5
    iput-wide v4, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurTotalRam:J

    .line 374
    iput-wide v10, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurHighRam:J

    .line 375
    iput-wide v8, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurMedRam:J

    .line 376
    iput-wide v6, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mCurLowRam:J

    .line 377
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 378
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    nop

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 378
    invoke-virtual {v0, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 380
    .local v12, "sizeStr":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v2, v16

    const v15, 0x7f120c09

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    nop

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .end local v12
    .local v2, "sizeStr":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v2, v15, v16

    const v14, 0x7f120c09

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    nop

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 386
    invoke-virtual {v0, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 388
    iget-object v12, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v16

    const v15, 0x7f120c09

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    long-to-float v12, v10

    long-to-float v13, v4

    div-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 391
    .local v12, "progress":I
    iget-object v14, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mColorBar:Landroid/widget/ProgressBar;

    invoke-virtual {v14, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    iget-object v14, v1, Lcom/android/settings/applications/RunningProcessesViewOLD;->mColorBar:Landroid/widget/ProgressBar;

    long-to-float v15, v8

    move-object/from16 v17, v0

    long-to-float v0, v4

    .end local v0
    .local v17, "bidiFormatter":Landroid/text/BidiFormatter;
    div-float/2addr v15, v0

    mul-float/2addr v15, v13

    float-to-int v0, v15

    add-int/2addr v0, v12

    invoke-virtual {v14, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 394
    .end local v2
    .end local v4
    .end local v6
    .end local v8
    .end local v10
    .end local v12
    .end local v17
    :cond_6
    monitor-exit v3

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateTimes()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 494
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;

    .line 496
    .local v1, "ai":Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
    iget-object v2, v1, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 499
    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesViewOLD;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 502
    .end local v1
    goto :goto_0

    .line 503
    :cond_1
    return-void
.end method
