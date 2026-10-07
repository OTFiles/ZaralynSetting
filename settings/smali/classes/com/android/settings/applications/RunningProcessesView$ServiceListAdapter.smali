.class Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
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

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningProcessesView;
    .param p2, "state"    # Lcom/android/settings/applications/RunningState;

    .line 224
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 225
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 229
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 332
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 337
    monitor-exit v0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 340
    .local v1, "vh":Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 341
    .local v2, "item":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v3

    .line 342
    .local v3, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v1
    .end local v2
    .end local v3
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 299
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 316
    if-nez p2, :cond_0

    .line 317
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 319
    .end local v0
    :cond_0
    move-object v0, p2

    .line 321
    .restart local v0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 322
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

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

    .line 311
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

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

    .line 326
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d018a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 328
    return-object v0
.end method

.method refreshItems()V
    .locals 5

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .local v0, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 264
    .local v1, "mPM":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "inum":I
    :goto_1
    if-ltz v2, :cond_2

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 266
    .local v3, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    invoke-virtual {v3}, Lcom/android/settings/applications/RunningState$MergedItem;->getPackageItemInfo()Landroid/content/pm/PackageItemInfo;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->runningAppFilterByKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    .end local v3
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 271
    .end local v2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v2, v0, :cond_4

    .line 272
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 273
    if-nez v0, :cond_3

    .line 274
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v2, :cond_4

    .line 279
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    :cond_4
    :goto_2
    return-void
.end method

.method public runningAppFilterByKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Z
    .locals 3
    .param p1, "mPM"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/PackageItemInfo;

    .line 245
    sget-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 246
    .local v0, "keyWords":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 249
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 252
    const/4 v1, 0x0

    return v1

    .line 255
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method setShowBackground(Z)V
    .locals 2
    .param p1, "showBackground"    # Z

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 238
    :cond_0
    return-void
.end method
