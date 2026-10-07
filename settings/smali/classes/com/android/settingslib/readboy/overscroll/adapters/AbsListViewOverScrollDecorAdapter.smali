.class public Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "AbsListViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;


# instance fields
.field protected final mView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    .line 24
    return-void
.end method


# virtual methods
.method public canScrollListDown()Z
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 51
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 52
    .local v1, "itemsCount":I
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 53
    .local v2, "firstPosition":I
    add-int v3, v2, v0

    .line 54
    .local v3, "lastPosition":I
    iget-object v4, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 55
    .local v4, "lastBottom":I
    if-lt v3, v1, :cond_1

    iget-object v5, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5
.end method

.method public canScrollListUp()Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 44
    .local v0, "firstTop":I
    iget-object v2, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 45
    .local v2, "firstPosition":I
    if-gtz v2, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->canScrollListDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;->canScrollListUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
