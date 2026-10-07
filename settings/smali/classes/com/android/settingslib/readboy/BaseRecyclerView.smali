.class public Lcom/android/settingslib/readboy/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseRecyclerView.java"


# instance fields
.field private myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

.field private myOverScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/readboy/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/readboy/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myOverScrollEnabled:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getOverScrollEnable()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myOverScrollEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 61
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myOverScrollEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;->isCurrentDraging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 65
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 70
    :cond_1
    :goto_0
    return v0

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 75
    .local v0, "iResult":Z
    :try_start_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 77
    goto :goto_1

    .line 76
    :catch_1
    move-exception v1

    .line 78
    :goto_1
    return v0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 42
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 44
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 46
    :goto_0
    if-eqz p1, :cond_1

    .line 47
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settingslib/readboy/overscroll/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/support/v7/widget/RecyclerView;I)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    goto :goto_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/readboy/overscroll/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/support/v7/widget/RecyclerView;I)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/BaseRecyclerView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    .line 56
    :cond_1
    :goto_1
    return-void
.end method
