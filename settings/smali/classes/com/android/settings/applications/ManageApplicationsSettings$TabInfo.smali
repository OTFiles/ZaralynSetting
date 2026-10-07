.class public Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings/applications/AppClickListener;

.field private mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mScrollPos:I

.field private mScrollTop:I

.field private mSmvp:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;

.field tabRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/settings/applications/ManageApplicationsSettings;
    .param p2, "apps"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "listType"    # I
    .param p5, "clickListener"    # Lcom/android/settings/applications/AppClickListener;
    .param p6, "savedInstanceState"    # Landroid/os/Bundle;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollPos:I

    .line 255
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollTop:I

    .line 263
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    iput-wide v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    iput-wide v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    .line 266
    new-instance v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$1;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 430
    new-instance v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$3;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->tabRunnable:Ljava/lang/Runnable;

    .line 275
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 276
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 277
    iput-object p3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 278
    iput p4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    .line 279
    if-eqz p4, :cond_2

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    const/4 v1, 0x4

    if-eq p4, v1, :cond_0

    .line 283
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    goto :goto_0

    .line 282
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    goto :goto_0

    .line 281
    :cond_1
    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    .line 285
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    .line 286
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120729

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1203c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 288
    iput-object p6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .param p1, "x1"    # I

    .line 231
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollPos:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    .param p1, "x1"    # I

    .line 231
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollTop:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 9

    .line 562
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 566
    return-void

    .line 568
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 570
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 572
    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    sub-long/2addr v2, v4

    .line 573
    .local v2, "usedStorage":J
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastUsedStorage:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 574
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastUsedStorage:J

    .line 577
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "sizeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120cb5

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .end local v0
    :cond_2
    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastFreeStorage:J

    iget-wide v7, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    .line 582
    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    iput-wide v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastFreeStorage:J

    .line 585
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    invoke-static {v0, v5, v6}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->Formatter_formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 586
    .restart local v0
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120cb3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    .end local v0
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/LinearColorBar;->setVisibility(I)V

    .line 590
    .end local v2
    goto :goto_0

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 592
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastUsedStorage:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 593
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastUsedStorage:J

    .line 594
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    :cond_5
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastFreeStorage:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 597
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLastFreeStorage:J

    .line 598
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setVisibility(I)V

    .line 602
    :goto_0
    return-void
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "contentParent"    # Landroid/view/ViewGroup;
    .param p3, "contentChild"    # Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    return-object v0

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 302
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 303
    const v0, 0x7f0d00e4

    goto :goto_0

    .line 304
    :cond_1
    const v0, 0x7f0d00e0

    :goto_0
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0248

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0a023c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "emptyView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 312
    .local v3, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 315
    :cond_2
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 317
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 318
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 319
    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollPos:I

    .line 320
    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollTop:I

    .line 321
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    .line 322
    new-instance v4, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    invoke-direct {v4, v5, p0, v6}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    .line 323
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 326
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 342
    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    if-eq v4, v1, :cond_4

    .line 343
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a03ff

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LinearColorBar;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 344
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a03fd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 345
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a04c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 346
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 347
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v1, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 348
    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 349
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f120c50

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 352
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f120726

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->applyCurrentStorage()V

    .line 358
    .end local v0
    .end local v3
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 360
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doCreate()V

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public detachView()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 370
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRootView:Landroid/view/View;

    .line 376
    .end local v0
    :cond_1
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 611
    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 610
    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 613
    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 612
    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
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

    .line 606
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings/applications/AppClickListener;->onItemClick(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 607
    return-void
.end method

.method public pause()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->pause()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 410
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->release()V

    .line 416
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->resume(IZ)V

    .line 380
    return-void
.end method

.method public resume(IZ)V
    .locals 3
    .param p1, "sortOrder"    # I
    .param p2, "forceUpdate"    # Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollPos:I

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mScrollTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$300(Lcom/android/settings/applications/ManageApplicationsSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->resume(IZ)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 394
    .local v0, "haveData":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 395
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .end local v0
    :cond_3
    :goto_0
    return-void
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "containerService"    # Lcom/android/internal/app/IMediaContainerService;

    .line 292
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsage()V

    .line 294
    return-void
.end method

.method updateStorageUsage()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->tabRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->tabRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->updateStorageUsageRun()V

    .line 429
    :goto_0
    return-void
.end method

.method updateStorageUsageRun()V
    .locals 18

    .line 439
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-nez v0, :cond_1

    return-void

    .line 443
    :cond_1
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 446
    :cond_2
    iget-wide v2, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 447
    .local v2, "saved_mFreeStorage":J
    iget-wide v4, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 448
    .local v4, "saved_mAppStorage":J
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    .line 451
    .local v6, "saved_mTotalStorage":J
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 452
    iput-wide v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 453
    iput-wide v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    .line 455
    iget v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFilter:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v0, v10, :cond_6

    .line 457
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_3

    .line 458
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 460
    :cond_3
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v10, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v10}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSmvp:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    .line 461
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSmvp:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 462
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v12, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iput-wide v12, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    .line 463
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v12, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    iput-wide v12, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 466
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "ManageApplicationsSettings"

    const-string v12, "divhee Problem in container service"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0
    :goto_0
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 491
    .local v0, "N":I
    nop

    .local v11, "i":I
    :goto_1
    move v10, v11

    .end local v11
    .local v10, "i":I
    if-ge v10, v0, :cond_4

    .line 492
    iget-object v11, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v11, v10}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v11

    .line 493
    .local v11, "ae":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-wide v12, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    iget-wide v14, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v8, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v14, v8

    iget-wide v8, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v14, v8

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 491
    .end local v11
    add-int/lit8 v11, v10, 0x1

    .end local v10
    .local v11, "i":I
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 496
    .end local v0
    .end local v11
    :cond_4
    nop

    .line 546
    .end local v6
    .local v16, "saved_mTotalStorage":J
    :cond_5
    move-wide/from16 v16, v6

    goto/16 :goto_4

    .line 499
    .end local v16
    .restart local v6
    :cond_6
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_7

    .line 500
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 502
    :cond_7
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v8}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSmvp:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    .line 503
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSmvp:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 504
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v8, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iput-wide v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    .line 505
    iget-object v0, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mSMInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v8, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    iput-wide v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 508
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 506
    :catch_1
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ManageApplicationsSettings"

    const-string v9, "divhee Problem in container service"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v0
    :goto_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 532
    .local v0, "emulatedStorage":Z
    iget-object v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    if-eqz v8, :cond_9

    .line 533
    iget-object v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v8}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getCount()I

    move-result v8

    .line 534
    .local v8, "N":I
    nop

    .restart local v11
    :goto_3
    move v9, v11

    .end local v11
    .local v9, "i":I
    if-ge v9, v8, :cond_9

    .line 535
    iget-object v10, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;

    invoke-virtual {v10, v9}, Lcom/android/settings/applications/ManageApplicationsSettings$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v10

    .line 536
    .local v10, "ae":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-wide v11, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    iget-wide v13, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    move-wide/from16 v16, v6

    iget-wide v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    .end local v6
    .restart local v16
    add-long/2addr v13, v6

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 537
    if-eqz v0, :cond_8

    .line 538
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v13, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v11, v13

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 534
    .end local v10
    :cond_8
    add-int/lit8 v11, v9, 0x1

    .end local v9
    .restart local v11
    move-wide/from16 v6, v16

    goto :goto_3

    .line 542
    .end local v8
    .end local v11
    .end local v16
    .restart local v6
    :cond_9
    move-wide/from16 v16, v6

    .end local v6
    .restart local v16
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    iget-object v8, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settingslib/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 546
    .end local v0
    :goto_4
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_a

    .line 547
    iput-wide v2, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mFreeStorage:J

    .line 549
    :cond_a
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_b

    .line 550
    iput-wide v4, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mAppStorage:J

    .line 552
    :cond_b
    iget-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_c

    .line 553
    move-wide/from16 v6, v16

    iput-wide v6, v1, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mTotalStorage:J

    goto :goto_5

    .line 557
    :cond_c
    move-wide/from16 v6, v16

    .end local v16
    .restart local v6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->applyCurrentStorage()V

    .line 558
    return-void

    .line 443
    .end local v2
    .end local v4
    .end local v6
    :cond_d
    :goto_6
    return-void
.end method
