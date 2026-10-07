.class public Lcom/android/settings/NavigationBarViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NavigationBarViewPager.java"


# instance fields
.field private lastStatus:I

.field private lastX:I

.field private lastY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastX:I

    .line 22
    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastY:I

    .line 23
    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastStatus:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastX:I

    .line 22
    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastY:I

    .line 23
    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastStatus:I

    .line 31
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 51
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 52
    .local v1, "y":I
    const/4 v2, 0x0

    .line 53
    .local v2, "dealtX":I
    const/4 v3, 0x0

    .line 55
    .local v3, "dealtY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 88
    :pswitch_0    # 0x3
    goto :goto_1

    .line 65
    :pswitch_1    # 0x2
    iget v4, p0, Lcom/android/settings/NavigationBarViewPager;->lastX:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 66
    iget v4, p0, Lcom/android/settings/NavigationBarViewPager;->lastY:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 67
    const-string v4, "NavigationBarViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dealtX:="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, "NavigationBarViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dealtY:="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    add-int/lit8 v4, v3, 0xa

    if-lt v2, v4, :cond_0

    .line 76
    invoke-virtual {p0, v6}, Lcom/android/settings/NavigationBarViewPager;->myrequestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/NavigationBarViewPager;->myrequestDisallowInterceptTouchEvent(Z)V

    .line 79
    iget v4, p0, Lcom/android/settings/NavigationBarViewPager;->lastStatus:I

    if-nez v4, :cond_1

    .line 80
    iput v6, p0, Lcom/android/settings/NavigationBarViewPager;->lastStatus:I

    .line 81
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 84
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/settings/NavigationBarViewPager;->lastX:I

    .line 85
    iput v1, p0, Lcom/android/settings/NavigationBarViewPager;->lastY:I

    .line 86
    goto :goto_1

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0, v6}, Lcom/android/settings/NavigationBarViewPager;->myrequestDisallowInterceptTouchEvent(Z)V

    .line 62
    iput v5, p0, Lcom/android/settings/NavigationBarViewPager;->lastStatus:I

    .line 63
    nop

    .line 93
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public myrequestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/NavigationBarViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 39
    .local v0, "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
