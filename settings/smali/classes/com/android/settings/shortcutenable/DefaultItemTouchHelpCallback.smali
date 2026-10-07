.class public Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "DefaultItemTouchHelpCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;
    }
.end annotation


# instance fields
.field private isCanDrag:Z

.field private isCanSwipe:Z

.field private onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 1
    .param p1, "onItemTouchCallbackListener"    # Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanDrag:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    .line 29
    iput-object p1, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 30
    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 89
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 91
    const/16 v1, 0xf

    .line 92
    .local v1, "dragFlag":I
    const/4 v2, 0x0

    .line 94
    .local v2, "swipeFlag":I
    invoke-static {v1, v2}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->makeMovementFlags(II)I

    move-result v3

    return v3

    .line 95
    .end local v1
    .end local v2
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_3

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 97
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    .line 99
    .local v2, "orientation":I
    const/4 v3, 0x0

    .line 100
    .local v3, "dragFlag":I
    const/4 v4, 0x0

    .line 103
    .local v4, "swipeFlag":I
    if-nez v2, :cond_1

    .line 104
    const/4 v4, 0x3

    .line 105
    const/16 v3, 0xc

    goto :goto_0

    .line 106
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 107
    const/4 v3, 0x3

    .line 108
    const/16 v4, 0xc

    .line 110
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->makeMovementFlags(II)I

    move-result v5

    return v5

    .line 112
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanDrag:Z

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "srcViewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "targetViewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 125
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;->onMove(II)Z

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 133
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;->onSwiped(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .param p1, "canDrag"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanDrag:Z

    .line 48
    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0
    .param p1, "canSwipe"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    .line 57
    return-void
.end method
