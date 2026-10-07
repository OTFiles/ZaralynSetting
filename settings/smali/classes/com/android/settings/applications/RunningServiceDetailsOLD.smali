.class public Lcom/android/settings/applications/RunningServiceDetailsOLD;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "RunningServiceDetailsOLD.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;,
        Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServiceDetailsOLD;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/RunningServiceDetailsOLD;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningServiceDetailsOLD;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/RunningServiceDetailsOLD;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .line 486
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetailsOLD$wsm5YrBxU_euvrBaAcBIwAz-fQ8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetailsOLD$wsm5YrBxU_euvrBaAcBIwAz-fQ8;-><init>(Lcom/android/settings/applications/RunningServiceDetailsOLD;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 492
    return-void
.end method

.method public static synthetic lambda$finish$0(Lcom/android/settings/applications/RunningServiceDetailsOLD;)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 488
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 491
    :cond_0
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .line 558
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetailsOLD$MyAlertDialogFragment;

    move-result-object v0

    .line 560
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 562
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    .line 549
    .local v1, "ad":Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;
    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 550
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    return-object v1

    .line 547
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method addDetailViews()V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    iget-object v3, v3, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 428
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 432
    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 437
    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    .line 440
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumProcesses:I

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumServices:I

    .line 442
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_7

    .line 443
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v2, :cond_6

    .line 445
    iget-boolean v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 449
    .end local v2
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 451
    .restart local v2
    :goto_1
    move v3, v0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 452
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 454
    .end local v3
    :cond_4
    move v3, v0

    .restart local v3
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 455
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 457
    .end local v2
    .end local v3
    :cond_5
    goto :goto_4

    .line 458
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 461
    :cond_7
    :goto_4
    return-void
.end method

.method addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 5
    .param p1, "item"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .line 394
    if-eqz p1, :cond_6

    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 396
    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 397
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v3, p1, v1, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2
    :cond_0
    if-eqz p3, :cond_6

    .line 402
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 406
    const/4 v2, 0x0

    iget v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    goto :goto_6

    .line 410
    :cond_2
    const/4 v2, -0x1

    .restart local v2
    :goto_2
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 411
    if-gez v2, :cond_3

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_3

    .line 412
    :cond_3
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 413
    .local v3, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v4, :cond_4

    .line 414
    goto :goto_5

    .line 417
    :cond_4
    if-gez v2, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    .line 410
    .end local v3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 422
    .end local v2
    :cond_6
    :goto_6
    return-void
.end method

.method addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 11
    .param p1, "pi"    # Lcom/android/settings/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addProcessesHeader()V

    .line 336
    new-instance v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetailsOLD;)V

    .line 337
    .local v0, "detail":Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const v4, 0x7f0d018d

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 339
    .local v1, "root":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    iput-object v1, v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mRootView:Landroid/view/View;

    .line 341
    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v2, v1}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 342
    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, p1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 344
    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 345
    .local v2, "description":Landroid/widget/TextView;
    iget v4, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 348
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 349
    :cond_0
    if-eqz p2, :cond_1

    .line 350
    const v3, 0x7f120861

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 352
    :cond_1
    const/4 v4, 0x0

    .line 353
    .local v4, "textid":I
    const/4 v5, 0x0

    .line 354
    .local v5, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 355
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 358
    .local v7, "comp":Landroid/content/ComponentName;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 372
    :pswitch_0    # 0x2
    const v4, 0x7f120a64

    .line 373
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 377
    .local v8, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v9

    .line 380
    .end local v8
    goto :goto_1

    .line 379
    :catch_0
    move-exception v8

    goto :goto_1

    .line 360
    :pswitch_1    # 0x1
    const v4, 0x7f120a63

    .line 361
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 363
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 365
    .local v8, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v9

    .line 368
    .end local v8
    :goto_0
    goto :goto_1

    .line 367
    :catch_1
    move-exception v8

    goto :goto_0

    .line 384
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    invoke-virtual {v8, v4, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .line 237
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d019c

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f120c11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumProcesses:I

    .line 244
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .param p1, "si"    # Lcom/android/settings/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .line 248
    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addServicesHeader()V

    goto :goto_0

    .line 250
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addProcessesHeader()V

    .line 258
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 260
    .local v0, "bi":Lcom/android/settings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetailsOLD;)V

    .line 261
    .local v1, "detail":Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d018e

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, "root":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iput-object v2, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mRootView:Landroid/view/View;

    .line 265
    iput-object p1, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 266
    new-instance v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v3, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 267
    iget-object v3, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v0, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 269
    const/16 v3, 0x8

    if-nez p4, :cond_3

    .line 270
    const v4, 0x7f0a03bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_3
    if-eqz p1, :cond_4

    iget-object v4, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v4, :cond_4

    .line 274
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAm:Landroid/app/ActivityManager;

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 278
    :cond_4
    const v4, 0x7f0a00f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 279
    .local v4, "description":Landroid/widget/TextView;
    const v6, 0x7f0a0232

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 280
    const v6, 0x7f0a035f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 282
    if-eqz p3, :cond_5

    iget v6, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 286
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const v5, 0x7f0a0105

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 289
    :cond_5
    const/4 v3, 0x1

    if-eqz p1, :cond_6

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v6, v6, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v6, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 294
    :cond_6
    iget-boolean v6, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v6, :cond_7

    .line 295
    const v6, 0x7f1201ba

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 296
    :cond_7
    iget-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_8

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 300
    .local v6, "clientr":Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f120cb7

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v6
    .end local v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 303
    :catch_0
    move-exception v6

    .line 304
    :goto_2
    goto :goto_4

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz p1, :cond_9

    .line 307
    const v7, 0x7f120cbc

    goto :goto_3

    .line 308
    :cond_9
    const v7, 0x7f120698

    .line 306
    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_4
    iget-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_a

    .line 314
    const v8, 0x7f120cb6

    goto :goto_5

    :cond_a
    const v8, 0x7f120cbb

    .line 313
    :goto_5
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v6, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v7, 0x104058d

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "send_action_app_error"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 320
    .local v6, "enabled":I
    if-eqz v6, :cond_c

    if-eqz p1, :cond_c

    .line 321
    nop

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 321
    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 324
    iget-object v7, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    move v3, v5

    :goto_6
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7

    .line 326
    :cond_c
    iget-object v3, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 330
    .end local v6
    :goto_7
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method addServicesHeader()V
    .locals 4

    .line 227
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumServices:I

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d019c

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f120c12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mNumServices:I

    .line 234
    return-void
.end method

.method ensureData()V
    .locals 2

    .line 615
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mHaveData:Z

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mHaveData:Z

    .line 617
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 622
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->waitForData()V

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->refreshUi(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 7

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "item":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    .local v1, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 203
    move v3, v2

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 204
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 205
    .local v4, "mi":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mUserId:I

    if-eq v5, v6, :cond_1

    .line 206
    goto :goto_2

    .line 208
    :cond_1
    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mUid:I

    if-ltz v5, :cond_2

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mUid:I

    if-eq v5, v6, :cond_2

    .line 209
    goto :goto_2

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 203
    .end local v4
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .restart local v4
    :cond_4
    :goto_3
    move-object v0, v4

    .line 214
    nop

    .line 219
    .end local v3
    .end local v4
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v3, v0, :cond_6

    .line 220
    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 221
    const/4 v2, 0x1

    return v2

    .line 223
    :cond_6
    return v2
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 537
    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 496
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 497
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->setHasOptionsMenu(Z)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mUid:I

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mUserId:I

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mProcessName:Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mShowBackground:Z

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAm:Landroid/app/ActivityManager;

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mInflater:Landroid/view/LayoutInflater;

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    .line 508
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 513
    const/4 v0, 0x0

    const v1, 0x7f0d018c

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 514
    .local v1, "view":Landroid/view/View;
    invoke-static {p2, v1, v1, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 516
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mRootView:Landroid/view/View;

    .line 517
    const v0, 0x7f0a0048

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mAllDetails:Landroid/view/ViewGroup;

    .line 518
    const v0, 0x7f0a03e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippet:Landroid/view/ViewGroup;

    .line 519
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->ensureData()V

    .line 525
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .line 530
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mHaveData:Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 533
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 651
    :pswitch_0    # 0x2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->refreshUi(Z)V

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->updateTimes()V

    goto :goto_0

    .line 647
    :pswitch_1    # 0x1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->refreshUi(Z)V

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->updateTimes()V

    .line 649
    goto :goto_0

    .line 644
    :pswitch_2    # 0x0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->updateTimes()V

    .line 645
    nop

    .line 655
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 542
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->ensureData()V

    .line 544
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 p1, 0x1

    .line 467
    :cond_0
    if-eqz p1, :cond_3

    .line 468
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f120948

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 481
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->addDetailViews()V

    goto :goto_1

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->finish()V

    .line 479
    return-void

    .line 483
    :cond_3
    :goto_1
    return-void
.end method

.method updateTimes()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 634
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetailsOLD$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetailsOLD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetailsOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0
    :cond_1
    return-void
.end method
