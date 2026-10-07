.class public Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field static final KEY_SEE_ALL_BUTTON:Ljava/lang/String; = "recent_location_requests_see_all_button"


# instance fields
.field private mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private final mFragment:Lcom/android/settings/location/LocationSettings;

.field private final mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

.field private mSeeAllButton:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/location/LocationSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 75
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/location/RecentLocationApps;)V

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/location/LocationSettings;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p4, "recentApps"    # Lcom/android/settingslib/location/RecentLocationApps;

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 82
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    .line 83
    iput-object p4, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    .line 84
    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/Context;)Lcom/android/settings/widget/AppPreference;
    .locals 1
    .param p1, "prefContext"    # Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settings/widget/AppPreference;
    .locals 5
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;)Lcom/android/settings/widget/AppPreference;

    move-result-object v0

    .line 145
    .local v0, "pref":Lcom/android/settings/widget/AppPreference;
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v1, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    iget-object v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 94
    const-string v0, "recent_location_requests"

    .line 95
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 96
    const-string v0, "recent_location_requests_see_all_button"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroid/support/v7/preference/Preference;

    .line 98
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "recent_location_requests"

    return-object v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v1, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 135
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 102
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 105
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "prefContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    .line 107
    invoke-virtual {v2}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 111
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 113
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settings/widget/AppPreference;

    move-result-object v5

    .line 112
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mSeeAllButton:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 117
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 120
    .local v3, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    iget-object v4, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 121
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;)Lcom/android/settings/widget/AppPreference;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 122
    .end local v3
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;)Lcom/android/settings/widget/AppPreference;

    move-result-object v3

    .line 126
    .local v3, "banner":Landroid/support/v7/preference/Preference;
    const v4, 0x7f1207bb

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 127
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 130
    .end local v3
    :cond_3
    :goto_2
    return-void
.end method
