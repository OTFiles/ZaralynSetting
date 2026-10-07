.class public Lcom/android/settings/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
    }
.end annotation


# static fields
.field static final ELEVATION_HIGH:F

.field static final ELEVATION_LOW:F


# instance fields
.field private isScrollWatcherAttached:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;-><init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    .line 60
    iput-object p3, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    .line 62
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;-><init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    .line 68
    iput-object p3, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 71
    return-void
.end method

.method private attachScrollWatcher()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static attachToRecyclerView(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 49
    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/ActionBarShadowController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public static attachToRecyclerView(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;
    .locals 1
    .param p0, "anchorView"    # Landroid/view/View;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 54
    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/ActionBarShadowController;-><init>(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method private detachScrollWatcher()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    .line 81
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->detachScrollWatcher()V

    .line 76
    return-void
.end method
