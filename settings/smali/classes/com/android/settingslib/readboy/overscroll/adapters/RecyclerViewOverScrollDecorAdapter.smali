.class public Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;,
        Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;,
        Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;
    }
.end annotation


# instance fields
.field protected final mImpl:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

.field protected mIsItemTouchInEffect:Z

.field protected final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 43
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit \'impl\' parameter to the other c\'tors, or otherwise create a custom adapter subclass of your own."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    :goto_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    goto :goto_1

    .line 49
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    .line 51
    .local v1, "orientation":I
    :goto_1
    if-nez v1, :cond_3

    .line 52
    new-instance v2, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;

    invoke-direct {v2, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V

    iput-object v2, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    goto :goto_2

    .line 54
    :cond_3
    new-instance v2, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;

    invoke-direct {v2, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V

    iput-object v2, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    .line 56
    .end local v1
    :goto_2
    nop

    .line 62
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
