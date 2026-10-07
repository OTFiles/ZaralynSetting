.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;,
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 178
    new-instance v0, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settings/location/LocationSettings;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/settings/location/LocationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 116
    .local p0, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 123
    .local v1, "entry":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 124
    .end local v1
    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Lcom/android/settings/location/LocationSettings;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/location/LocationSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/location/LocationForWorkPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/android/settings/location/RecentLocationRequestPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/location/LocationScanningPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationScanningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/settings/location/LocationFooterPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/location/LocationFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationSettings$AgpsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v0
.end method


# virtual methods
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

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/location/LocationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 129
    const v0, 0x7f1206c9

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "LocationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 79
    const/16 v0, 0x3f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 101
    const v0, 0x7f15006c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 86
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 87
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f1207c4

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 89
    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;

    .line 90
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1207c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 97
    return-void
.end method
