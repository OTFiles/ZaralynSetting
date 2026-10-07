.class public Lcom/android/settings/system/SystemDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SystemDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/system/SystemDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/SystemDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "visibleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 75
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 76
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 74
    .end local v2
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1
    :cond_2
    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 69
    const v0, 0x7f1206d9

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "SystemDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 54
    const/16 v0, 0x2e8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 64
    const v0, 0x7f1500aa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 47
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 48
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 50
    :cond_0
    return-void
.end method
