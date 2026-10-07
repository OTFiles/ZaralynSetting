.class public Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestSeeAllPreferenceController.java"


# instance fields
.field private mCategoryAllRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private final mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

.field private mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    .line 41
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;
    .param p4, "recentLocationApps"    # Lcom/android/settingslib/location/RecentLocationApps;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    .line 52
    iput-object p4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    .line 53
    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settings/widget/AppPreference;
    .locals 5
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 86
    new-instance v0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "pref":Lcom/android/settings/widget/AppPreference;
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v1, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    iget-object v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    const-string v0, "all_recent_location_requests"

    .line 69
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 71
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "all_recent_location_requests"

    return-object v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v1, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 63
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 75
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 78
    .local v2, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settings/widget/AppPreference;

    move-result-object v3

    .line 79
    .local v3, "appPreference":Landroid/support/v7/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 80
    .end local v2
    .end local v3
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
