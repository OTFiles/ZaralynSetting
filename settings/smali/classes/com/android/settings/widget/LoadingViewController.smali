.class public Lcom/android/settings/widget/LoadingViewController;
.super Ljava/lang/Object;
.source "LoadingViewController.java"


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mLoadingView:Landroid/view/View;

.field private mShowLoadingContainerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "loadingView"    # Landroid/view/View;
    .param p2, "contentView"    # Landroid/view/View;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/widget/LoadingViewController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LoadingViewController$1;-><init>(Lcom/android/settings/widget/LoadingViewController;)V

    iput-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public static handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1
    .param p0, "loading"    # Landroid/view/View;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "done"    # Z
    .param p3, "animate"    # Z

    .line 74
    xor-int/lit8 v0, p2, 0x1

    invoke-static {p0, v0, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    .line 75
    invoke-static {p1, p2, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    .line 76
    return-void
.end method

.method private static setViewShown(Landroid/view/View;ZZ)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 79
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    if-eqz p1, :cond_0

    const/high16 v2, 0x10a0000

    goto :goto_0

    :cond_0
    const v2, 0x10a0001

    .line 80
    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 82
    .local v1, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_1
    new-instance v0, Lcom/android/settings/widget/LoadingViewController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LoadingViewController$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    .end local v1
    goto :goto_3

    .line 102
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 103
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_3
    return-void
.end method


# virtual methods
.method public handleLoadingContainer(ZZ)V
    .locals 2
    .param p1, "done"    # Z
    .param p2, "animate"    # Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 62
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    .line 53
    return-void
.end method

.method public showLoadingViewDelayed()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
