.class public Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomPagerAdapter"
.end annotation


# instance fields
.field private mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

.field private mChildViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/NavigationBarSettings$VPCellData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/NavigationBarSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/NavigationBarSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettings;
    .param p2, "context"    # Ljava/util/List<Lcom/android/settings/NavigationBarSettings$VPCellData;>;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/NavigationBarSettings$VPCellData;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/NavigationBarSettings$VPCellData;>;"
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mChildViewList:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter$1;-><init>(Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;)V

    iput-object v0, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    .line 361
    iput-object p2, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mContext:Landroid/content/Context;

    .line 362
    iput-object p3, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    .line 363
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 460
    if-eqz p3, :cond_0

    .line 461
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0a028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/QQAssetAnimView;

    .line 462
    .local v0, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 464
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/QQAssetAnimView;->setVisibility(I)V

    .line 467
    .end local v0
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mChildViewList:Ljava/util/ArrayList;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 383
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d013d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    const v2, 0x7f0a028a

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NavigationBarSettings$VPCellData;

    .line 386
    .local v1, "vpCellData":Lcom/android/settings/NavigationBarSettings$VPCellData;
    if-eqz v1, :cond_2

    .line 387
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    .line 388
    .local v3, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    if-eqz v3, :cond_0

    .line 389
    iget-object v4, v1, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellAnimResId:[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/widget/QQAssetAnimView;->initAnimParam([Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/QQAssetAnimView;->setLoop(Z)V

    .line 391
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/QQAssetAnimView;->setAutoSize(Z)V

    .line 392
    iget-object v4, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/QQAssetAnimView;->setOnOwnerActivtiyStateCallback(Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;)V

    .line 393
    invoke-virtual {v3}, Lcom/android/settings/widget/QQAssetAnimView;->restartSelfPauseAnim()V

    .line 394
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/QQAssetAnimView;->setVisibility(I)V

    .line 396
    :cond_0
    const v4, 0x7f0a0295

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 397
    .local v4, "tvTitle":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 398
    iget-object v5, v1, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :cond_1
    const v5, 0x7f0a0293

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 401
    .local v5, "tvSummary":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 402
    iget-object v6, v1, Lcom/android/settings/NavigationBarSettings$VPCellData;->cellSummary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;->mChildViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 479
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
