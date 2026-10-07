.class public Lcom/android/settings/dashboard/DashboardItemAnimator;
.super Landroid/support/v7/widget/DefaultItemAnimator;
.source "DashboardItemAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 9
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 28
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/settingslib/drawer/Tile;

    if-eqz v1, :cond_1

    if-ne p1, p2, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    int-to-float v1, p3

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int p3, v1

    .line 34
    int-to-float v1, p4

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int p4, v1

    .line 37
    :cond_0
    if-ne p3, p5, :cond_1

    if-ne p4, p6, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 39
    const/4 v1, 0x0

    return v1

    .line 42
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-super/range {v2 .. v8}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v1

    return v1
.end method
