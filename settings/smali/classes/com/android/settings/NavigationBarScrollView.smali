.class public Lcom/android/settings/NavigationBarScrollView;
.super Lcom/android/settingslib/readboy/BaseScrollView;
.source "NavigationBarScrollView.java"


# instance fields
.field private mDownPosX:F

.field private mDownPosY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    .line 35
    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    .line 35
    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    .line 35
    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    .line 35
    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    .line 32
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 40
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 42
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 43
    .local v2, "action":I
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget v4, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 50
    .local v4, "deltaX":F
    iget v5, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 52
    .local v5, "deltaY":F
    const/high16 v6, 0x41a00000    # 20.0f

    add-float v7, v5, v6

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    .line 54
    return v3

    .line 55
    :cond_1
    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 57
    const/4 v3, 0x1

    return v3

    .line 45
    .end local v4
    .end local v5
    :cond_2
    iput v0, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosX:F

    .line 46
    iput v1, p0, Lcom/android/settings/NavigationBarScrollView;->mDownPosY:F

    .line 47
    nop

    .line 62
    :cond_3
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settingslib/readboy/BaseScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 66
    .end local v4
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 72
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settingslib/readboy/BaseScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 76
    .end local v0
    const/4 v0, 0x0

    return v0
.end method
