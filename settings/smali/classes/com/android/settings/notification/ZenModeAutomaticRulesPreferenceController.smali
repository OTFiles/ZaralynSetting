.class public Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAutomaticRulesPreferenceController.java"


# instance fields
.field protected mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 41
    const-string v0, "zen_mode_automatic_rules"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setPersistent(Z)V

    .line 59
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "zen_mode_automatic_rules"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v0

    .line 67
    .local v0, "sortedRules":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    .local v3, "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    new-instance v4, Lcom/android/settings/notification/ZenRulePreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mParent:Landroid/app/Fragment;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/settings/notification/ZenRulePreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroid/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 70
    .local v4, "pref":Lcom/android/settings/notification/ZenRulePreference;
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 67
    .end local v3
    .end local v4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
