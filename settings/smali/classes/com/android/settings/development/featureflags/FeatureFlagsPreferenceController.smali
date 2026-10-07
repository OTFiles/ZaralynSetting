.class public Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FeatureFlagsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# instance fields
.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 57
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroid/util/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 66
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 69
    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70
    .local v1, "prefContext":Landroid/content/Context;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "feature":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v5, Lcom/android/settings/development/featureflags/FeatureFlagPreference;

    invoke-direct {v5, v1, v3}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    .end local v3
    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method
