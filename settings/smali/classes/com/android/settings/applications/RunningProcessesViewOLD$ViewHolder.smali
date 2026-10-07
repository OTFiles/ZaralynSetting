.class public Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesViewOLD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesViewOLD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    .line 167
    const v0, 0x7f0a01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0a0289

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->name:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0a0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->description:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0a03dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->size:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0a04ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
    .locals 6
    .param p1, "state"    # Lcom/android/settings/applications/RunningState;
    .param p2, "item"    # Lcom/android/settings/applications/RunningState$BaseItem;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, p2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 183
    .local v2, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v3, :cond_0

    .line 184
    move-object v3, p2

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 185
    move-object v3, p2

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 186
    move-object v3, p2

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 189
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;

    invoke-direct {v2}, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;-><init>()V

    .line 191
    .local v2, "ai":Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    iput-object v3, v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mRootView:Landroid/view/View;

    .line 192
    iput-object p2, v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 193
    iput-object p0, v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    .line 194
    iget-wide v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v3, v2, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mFirstRunTime:J

    .line 195
    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12034a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2, v4, p1}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 204
    monitor-exit v0

    return-object v2

    .line 205
    .end local v1
    .end local v2
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
