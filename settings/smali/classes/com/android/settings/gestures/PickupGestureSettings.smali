.class public Lcom/android/settings/gestures/PickupGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PickupGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/gestures/PickupGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/PickupGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/PickupGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 70
    const v0, 0x7f1206d1

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "PickupGestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 55
    const/16 v0, 0x2f1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 65
    const v0, 0x7f150080

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 46
    .local v0, "suggestionFeatureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_pickup_gesture_suggestion_complete"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    const-class v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/gestures/PickupGestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    new-instance v3, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v3, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v2, v3}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    .line 51
    return-void
.end method
