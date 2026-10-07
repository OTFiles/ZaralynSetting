.class Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesViewOLD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesViewOLD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesViewOLD;


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 307
    monitor-exit v0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    .line 310
    .local v1, "vh":Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 311
    .local v2, "item":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesViewOLD;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesViewOLD;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;

    move-result-object v3

    .line 312
    .local v3, "ai":Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesViewOLD;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesViewOLD;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v1
    .end local v2
    .end local v3
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCount()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 269
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 286
    if-nez p2, :cond_0

    .line 287
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 289
    .end local v0
    :cond_0
    move-object v0, p2

    .line 291
    .restart local v0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 292
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mIsProcess:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d018a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;-><init>(Landroid/view/View;)V

    .line 298
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mShowBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    .local v0, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_2

    .line 242
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 243
    if-nez v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    :cond_2
    :goto_1
    return-void
.end method
