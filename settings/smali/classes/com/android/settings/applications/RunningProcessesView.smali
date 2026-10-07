.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mAppsProcessPrefix:Landroid/widget/TextView;

.field mAppsProcessText:Landroid/widget/TextView;

.field mBackgroundProcessPrefix:Landroid/widget/TextView;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessPrefix:Landroid/widget/TextView;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mHeader:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 90
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    .line 91
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    .line 92
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 97
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 458
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMyUserId:I

    .line 459
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 9
    .param p1, "mi"    # Lcom/android/settings/applications/RunningState$MergedItem;

    .line 436
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "uid"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v1, "process"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    const-string v1, "user_id"

    iget v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string v1, "background"

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/settings/SettingsActivity;

    .line 447
    .local v8, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120c13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 450
    .end local v0
    .end local v8
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate()V
    .locals 7

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 466
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d018b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 467
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 468
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 469
    .local v1, "emptyView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 474
    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 475
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    const v2, 0x7f0d0189

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    .line 477
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 478
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v3, 0x7f0a00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 480
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    const v4, 0x7f06012f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 481
    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f06012e

    .line 482
    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 480
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    .line 483
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a01ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessPrefix:Landroid/widget/TextView;

    .line 484
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    .line 485
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a0448

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    .line 486
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a01ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 487
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    .line 488
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v4, 0x7f0a0447

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 490
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 491
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 492
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 493
    return-void
.end method

.method public doPause()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 498
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 499
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .line 502
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 508
    return v0

    .line 510
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 511
    const/4 v0, 0x0

    return v0
.end method

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

    .line 428
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 429
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 430
    .local v1, "mi":Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 431
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 432
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .line 529
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 538
    :pswitch_0    # 0x2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 534
    :pswitch_1    # 0x1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    .line 536
    goto :goto_0

    .line 531
    :pswitch_2    # 0x0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    .line 532
    nop

    .line 542
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

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 350
    .local v0, "adapter":Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 351
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 354
    .end local v0
    :cond_0
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 359
    :cond_1
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 371
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 372
    :try_start_0
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    iget-object v4, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v4, v4, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, v4, :cond_3

    .line 373
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 374
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    .line 390
    .local v4, "totalRam":J
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v0, :cond_4

    .line 391
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 392
    .local v6, "lowRam":J
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .local v8, "medRam":J
    goto :goto_1

    .line 394
    .end local v6
    .end local v8
    :cond_4
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    add-long/2addr v6, v8

    .line 396
    .restart local v6
    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 399
    .restart local v8
    :goto_1
    sub-long v10, v4, v8

    sub-long/2addr v10, v6

    .line 401
    .local v10, "highRam":J
    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    cmp-long v0, v12, v10

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    cmp-long v0, v12, v8

    if-nez v0, :cond_5

    iget-wide v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    cmp-long v0, v12, v6

    if-eqz v0, :cond_6

    .line 403
    :cond_5
    iput-wide v4, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 404
    iput-wide v10, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    .line 405
    iput-wide v8, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    .line 406
    iput-wide v6, v1, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    .line 407
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 408
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    nop

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 408
    invoke-virtual {v0, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 410
    .local v12, "sizeStr":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v2, v16

    const v15, 0x7f120c09

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    nop

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .end local v12
    .local v2, "sizeStr":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v2, v15, v16

    const v14, 0x7f120c09

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    nop

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 416
    invoke-virtual {v0, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 418
    iget-object v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v16

    const v15, 0x7f120c09

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v12, v1, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    long-to-float v13, v10

    long-to-float v14, v4

    div-float/2addr v13, v14

    long-to-float v14, v8

    long-to-float v15, v4

    div-float/2addr v14, v15

    long-to-float v15, v6

    move-object/from16 v17, v0

    long-to-float v0, v4

    .end local v0
    .local v17, "bidiFormatter":Landroid/text/BidiFormatter;
    div-float/2addr v15, v0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 424
    .end local v2
    .end local v4
    .end local v6
    .end local v8
    .end local v10
    .end local v17
    :cond_6
    monitor-exit v3

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateTimes()V
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 518
    .local v1, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 520
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 521
    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 524
    .end local v1
    goto :goto_0

    .line 525
    :cond_1
    return-void
.end method
