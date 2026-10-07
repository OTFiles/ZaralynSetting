.class public Lcom/android/settingslib/readboy/BaseScrollView;
.super Landroid/widget/ScrollView;
.source "BaseScrollView.java"


# instance fields
.field private myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

.field private myOverScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myOverScrollEnabled:Z

    .line 31
    invoke-static {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollDecoratorHelper;->setUpOverScroll(Landroid/widget/ScrollView;)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    .line 32
    return-void
.end method


# virtual methods
.method public getIOverScrollDecor()Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    return-object v0
.end method

.method public getOverScrollEnable()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myOverScrollEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 50
    iget-boolean v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myOverScrollEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/readboy/BaseScrollView;->myIOverScrollDecor:Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;

    invoke-interface {v0}, Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;->isCurrentDraging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 54
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 58
    :cond_1
    :goto_0
    return v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 63
    .local v0, "iResult":Z
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 65
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 66
    :goto_1
    return v0
.end method
