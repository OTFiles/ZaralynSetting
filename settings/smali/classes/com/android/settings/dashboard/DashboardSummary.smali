.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mHandler:Landroid/os/Handler;

.field mIsOnCategoriesChangedCalled:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnConditionsChangedCalled:Z

.field private mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private mStagingSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$rebuildUI$0(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategory()V

    return-void
.end method

.method public static synthetic lambda$updateCategory$1(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method public static synthetic lambda$updateCategory$2(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 289
    return-void
.end method

.method public static synthetic lambda$updateCategory$3(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method


# virtual methods
.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 82
    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 88
    const-string v0, "DashboardSummary"

    const-string v1, "Creating SuggestionControllerMixin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    nop

    .line 90
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 92
    .local v0, "suggestionFeatureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSuggestionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 95
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 97
    :cond_0
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 238
    return-void
.end method

.method public onConditionsChanged()V
    .locals 4

    .line 242
    const-string v0, "DashboardSummary"

    const-string v1, "onConditionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 251
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 252
    .local v0, "scrollToTop":Z
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 253
    if-eqz v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->scrollToPosition(I)V

    .line 256
    .end local v0
    :cond_1
    goto :goto_1

    .line 257
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    .line 259
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "startTime":J
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v2, "DashboardSummary"

    const-string v3, "Starting DashboardSummary"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 113
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 116
    new-instance v3, Lcom/android/settings/dashboard/SummaryLoader;

    const-string v4, "com.android.settings.category.ia.homepage"

    invoke-direct {v3, v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 118
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v3, "categories_change_called"

    .line 122
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 127
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 198
    .local v0, "startTime":J
    const v2, 0x7f0d0083

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "root":Landroid/view/View;
    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 200
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 201
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 202
    if-eqz p3, :cond_0

    .line 203
    const-string v3, "scroll_position"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    .local v3, "scrollPosition":I
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 206
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v3, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 209
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardItemAnimator;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 210
    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 211
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    move-object v5, v3

    move-object v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 212
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 214
    nop

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a039c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 214
    invoke-static {v3, v4, v5}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 221
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 132
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 156
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/Condition;

    .line 161
    .local v1, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    .line 164
    .end local v1
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "startTime":J
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getMetricsCategory()I

    move-result v2

    .line 143
    .local v2, "metricsCategory":I
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/conditional/Condition;

    .line 144
    .local v4, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 146
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v7

    .line 145
    invoke-virtual {v5, v6, v2, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 148
    .end local v4
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    const-string v0, "categories_change_called"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public onSuggestionReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    .line 264
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "DashboardSummary"

    const-string v1, "Category has loaded, setting category from suggestionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, "startTime":J
    if-eqz p1, :cond_0

    .line 171
    const-string v2, "DashboardSummary"

    const-string v3, "Listening for condition changes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 173
    const-string v2, "DashboardSummary"

    const-string v3, "conditions refreshed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    goto :goto_0

    .line 176
    :cond_0
    const-string v2, "DashboardSummary"

    const-string v3, "Stopped listening for condition changes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 183
    :goto_0
    return-void
.end method

.method rebuildUI()V
    .locals 1

    .line 226
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method updateCategory()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v1, "com.android.settings.category.ia.homepage"

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 276
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 277
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 278
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->isSuggestionLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "DashboardSummary"

    const-string v2, "Suggestion has loaded, setting suggestion/category"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v1, "DashboardSummary"

    const-string v2, "Suggestion NOT loaded, delaying setCategory by 3000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    :goto_0
    return-void
.end method
