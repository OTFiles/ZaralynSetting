.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;


# instance fields
.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mDashboardTilePrefKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field public final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    return-void
.end method

.method private displayResourceTiles()V
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v0

    .line 279
    .local v0, "resId":I
    if-gtz v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferencesFromResource(I)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 284
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;

    invoke-direct {v3, v1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;-><init>(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 286
    return-void
.end method

.method static synthetic lambda$displayResourceTiles$2(Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0
    .param p0, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p1, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 285
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic lambda$onAttach$0(Lcom/android/settings/core/BasePreferenceController;)Z
    .locals 1
    .param p0, "controller"    # Lcom/android/settings/core/BasePreferenceController;

    .line 95
    instance-of v0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return v0
.end method

.method static synthetic lambda$onAttach$1(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 1
    .param p0, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p1, "controller"    # Lcom/android/settings/core/BasePreferenceController;

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private refreshAllPreferences(Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 328
    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 224
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 2

    .line 235
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 156
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 158
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t find pref by key %s, skipping update summary %s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    .line 160
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    nop

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "controllersFromCode":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    nop

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "controllersFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/BasePreferenceController;>;"
    nop

    .line 82
    invoke-static {v2, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "uniqueControllerFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/BasePreferenceController;>;"
    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    .line 93
    .local v4, "lifecycle":Lcom/android/settingslib/core/lifecycle/Lifecycle;
    nop

    .line 94
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;

    .line 95
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;

    invoke-direct {v6, v4}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 96
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 99
    new-instance v5, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v5, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 101
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 103
    .local v6, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    invoke-virtual {p0, v6}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 104
    .end local v6
    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 124
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 113
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 118
    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 176
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 178
    .local v0, "controllers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;>;"
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v4

    .line 178
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 182
    .local v2, "controllerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 183
    .local v4, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    invoke-virtual {v4, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    const/4 v1, 0x1

    return v1

    .line 186
    .end local v4
    :cond_0
    goto :goto_1

    .line 187
    .end local v2
    :cond_1
    goto :goto_0

    .line 188
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 171
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 140
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v0, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 148
    .local v1, "activity":Landroid/app/Activity;
    instance-of v3, v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v3, :cond_2

    .line 149
    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 150
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 152
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v2, :cond_1

    .line 201
    move-object v2, v0

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 203
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 205
    .end local v0
    :cond_2
    return-void
.end method

.method refreshDashboardTiles(Ljava/lang/String;)V
    .locals 21
    .param p1, "TAG"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 335
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 336
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======divhee=====refreshDashboardTiles=========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v3

    .line 339
    .local v3, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v3, :cond_0

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO dashboard tiles for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 343
    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v4

    .line 344
    .local v4, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-nez v4, :cond_1

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile list is empty, skipping category "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 349
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v5, "remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=======divhee=====refreshDashboardTiles======222===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v6, :cond_2

    .line 353
    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 355
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 356
    .local v6, "context":Landroid/content/Context;
    new-instance v7, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 357
    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v7, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 358
    const/4 v7, 0x1

    new-array v8, v7, [I

    const v9, 0x1010429

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-virtual {v6, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 360
    .local v8, "a":Landroid/content/res/TypedArray;
    const v9, 0x7f06010a

    invoke-virtual {v6, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 361
    .local v9, "tintColor":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/drawer/Tile;

    .line 364
    .local v11, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v12, v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, "key":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 366
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tile does not contain a key, skipping "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {v0, v11}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 370
    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {v0, v11}, Lcom/android/settings/dashboard/DashboardFragment;->tintTileIcon(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 373
    iget-object v12, v11, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 375
    :cond_5
    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 377
    invoke-virtual {v2, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    .line 378
    .local v19, "preference":Landroid/support/v7/preference/Preference;
    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v14

    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 379
    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v18

    .line 378
    move-object v7, v15

    move-object/from16 v15, v19

    .end local v15
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v16, v11

    move-object/from16 v17, v7

    invoke-interface/range {v12 .. v18}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 380
    .end local v19
    goto :goto_1

    .line 382
    .end local v7
    .restart local v15
    :cond_6
    move-object v7, v15

    .end local v15
    .restart local v7
    new-instance v12, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v15, v12

    .line 383
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v14

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 384
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v18

    .line 383
    move-object v1, v15

    .end local v15
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    move-object/from16 v16, v11

    move-object/from16 v17, v7

    invoke-interface/range {v12 .. v18}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 385
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 386
    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v1
    :goto_1
    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    .end local v7
    .end local v11
    nop

    .line 363
    move-object/from16 v1, p1

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 391
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 392
    .restart local v7
    iget-object v10, v0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 394
    .local v10, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_8

    .line 395
    invoke-virtual {v2, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 397
    .end local v7
    .end local v10
    :cond_8
    goto :goto_2

    .line 398
    :cond_9
    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 399
    return-void
.end method

.method tintTileIcon(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 4
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 259
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 260
    return v1

    .line 263
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 264
    .local v0, "metadata":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "com.android.settings.icon_tintable"

    .line 265
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const-string v1, "com.android.settings.icon_tintable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 271
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    nop

    .line 270
    :cond_2
    return v1
.end method

.method protected updatePreferenceStates()V
    .locals 13

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 293
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 294
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 295
    .local v1, "controllerLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 296
    .local v3, "controllerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 297
    .local v5, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 298
    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 303
    .local v7, "preference":Landroid/support/v7/preference/Preference;
    if-nez v7, :cond_1

    .line 304
    const-string v8, "DashboardFragment"

    const-string v9, "Cannot find preference with key %s in Controller %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    .line 305
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 304
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v5, v7}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 309
    .end local v5
    .end local v6
    .end local v7
    goto :goto_1

    .line 310
    .end local v3
    :cond_2
    goto :goto_0

    .line 311
    :cond_3
    return-void
.end method

.method protected use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 211
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    .local v0, "controllerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    if-eqz v0, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 214
    const-string v1, "DashboardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple controllers of Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found, returning first one."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object v1

    .line 220
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
