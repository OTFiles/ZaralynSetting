.class public Lcom/android/settingslib/readboy/BaseListView;
.super Landroid/widget/ListView;
.source "BaseListView.java"


# instance fields
.field private myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

.field private myOverScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/readboy/BaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/readboy/BaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/readboy/BaseListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myOverScrollEnabled:Z

    .line 30
    invoke-static {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    .line 31
    return-void
.end method


# virtual methods
.method public getOverScrollEnable()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myOverScrollEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 45
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myOverScrollEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseListView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;->isCurrentDraging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 49
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 53
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 58
    .local v0, "iResult":Z
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 60
    goto :goto_1

    .line 59
    :catch_1
    move-exception v1

    .line 61
    :goto_1
    return v0
.end method
